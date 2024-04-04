package plus.zhiwei.petmoneytool.page;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import plus.zhiwei.petmoneytool.bean.OrderGood;
import plus.zhiwei.petmoneytool.dao.AnyDao;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Created by zhiwei on 2022/3/22.
 */
@Controller
@RequestMapping(value = "/")
@Slf4j
@AllArgsConstructor
public class SearchPage {

    private final AnyDao anyDao;

    @RequestMapping(value = "/")
    public String query(HttpServletRequest request, ModelMap modelMap) {
        return "query";
    }

    /**
     * 16600266677
     *
     * @param request
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/result")
    public String result(HttpServletRequest request, ModelMap modelMap) {
        String phone = request.getParameter("wd");
        List<Map<String, Object>> moneyArray = anyDao.queryMoney(phone);
        List<Map<String, Object>> orderArray = anyDao.queryOrder(phone);
        Map<String, Map<String, Object>> goodDict = new HashMap<>();
        List<OrderGood> orderRealArray = new ArrayList<>();
        for (Map<String, Object> order : orderArray) {
            try {
                //[{"money":"91.0","refundMsg":"没收到货","num":"2","refundStatus":"0","id":"1dbce705639649958988d163a1526384"}]
                //[{"money":"28.9","num":"2","id":"1809b9006d51438d8ba9bf686569b911"},{"money":"89.0","num":"2","id":"5f3f76c9cb6c4868a3f36e14f99a29ae"}]
                //[{"id":["1809b9006d51438d8ba9bf686569b911"],"track":"432710021002425"},{"id":["6b0f6543bdfc4d6c90409dc21111ed45"],"track":"YT2234894554799"}]
                //t.order_id,t.track_number,product_list_id,ext_params,t.create_time,t.address_user_name,t.address_full_region,t.address_name,t.address_mobile
                //t.good_title,t.good_brief,t.list_pic_url
                String product_list_id = String.valueOf(order.get("product_list_id"));
                String ext_params = String.valueOf(order.get("ext_params"));
                String track_number = String.valueOf(order.get("track_number"));
                String address_full_region = String.valueOf(order.get("address_full_region"));
                String address_mobile = String.valueOf(order.get("address_mobile"));
                String address_name = String.valueOf(order.get("address_name"));
                String address_user_name = String.valueOf(order.get("address_user_name"));
                OrderGood orderReal = new OrderGood();
                orderRealArray.add(orderReal);
                orderReal.setOrderId(String.valueOf(order.get("order_id")));
                orderReal.setCreateTime(String.valueOf(order.get("create_time")));
                orderReal.setAddress(address_user_name + "," + address_mobile + "," + address_name + " " + address_full_region);
                if (ext_params != null && !ext_params.isEmpty()) {
                    JSONObject extParams = JSON.parseObject(ext_params);
                    if (extParams.containsKey("memberLeaveMoney")) {
                        String memberLeaveMoney = extParams.getString("memberLeaveMoney");
                        orderReal.setMoneyTotal(new BigDecimal(memberLeaveMoney).setScale(2, RoundingMode.HALF_UP).toString());
                    }
                }
                if (track_number != null && !track_number.isEmpty()) {
                    orderReal.setHadTrack("已发");
                } else {
                    orderReal.setHadTrack("未发");
                }
                JSONArray productList = JSON.parseArray(product_list_id);
                List<OrderGood.Good> goods = new ArrayList<>();
                orderReal.setGoods(goods);
                for (int i = 0; i < productList.size(); i++) {
                    try {
                        JSONObject item = productList.getJSONObject(i);
                        OrderGood.Good good = new OrderGood.Good();
                        String goodId = item.getString("id");
                        good.setGoodId(goodId);
                        Map<String, Object> goodInfo = null;
                        if (goodDict.containsKey("goodId")) {
                            goodInfo = goodDict.get(goodId);
                        } else {
                            goodInfo = anyDao.queryGood(goodId);
                            goodDict.put(goodId, goodInfo);
                        }
                        good.setGoodPic(String.valueOf(goodInfo.get("list_pic_url")));
                        good.setGoodBrief(String.valueOf(goodInfo.get("good_brief")));
                        good.setGoodTitle(String.valueOf(goodInfo.get("good_title")));
                        good.setNum(item.getString("num"));
                        good.setMoney(new BigDecimal(item.getString("money")).setScale(2, RoundingMode.HALF_UP).toString());
                        if (item.containsKey("refundMsg")) {
                            good.setHadRefund("已退款");
                        } else {
                            good.setHadRefund("");
                        }
                        goods.add(good);
                    } catch (Exception e) {
                        log.warn("error,{}", e.getMessage());
                    }
                }

            } catch (Exception e) {
                log.warn("error,{}", e.getMessage());
            }
        }
        modelMap.addAttribute("moneyArray", moneyArray);
        modelMap.addAttribute("orderArray", orderRealArray);
        return "result";
    }


}
