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
import org.springframework.web.bind.annotation.RequestMethod;
import plus.zhiwei.petmoneytool.bean.*;
import plus.zhiwei.petmoneytool.dao.AnyDao;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

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

    @RequestMapping(value = "/signPage", method = {RequestMethod.GET})
    public String signPage(ModelMap modelMap, HttpServletRequest req,
                           String openId) {

        ProtectListSendBean sendBean = wxQueryProtectListForMini(openId);
        int isProtect = sendBean.getIsProtect();
        modelMap.put("openId", openId);
        if (isProtect == 2) {
            List<ProtectMapperBean> protectMapperBeans = sendBean.getProtectMapperBeans();
            modelMap.put("array", protectMapperBeans);
            modelMap.put("openId", openId);
            return "user/pageList";
        } else if (isProtect == 1) {
            ProtectMapperBean protectBean = sendBean.getProtectBean();
            String urlSuffix = sendBean.getUrlSuffix();
            ShopMapperBean sellBean = sendBean.getSellBean();
            ShopMapperBean shopBean = sendBean.getShopBean();
            UserMapperBean userBean = sendBean.getUserBean();
            String remarkMsg = protectBean.getRemarkMsg();
            JSONObject jsonObject = JSON.parseObject(remarkMsg);
            modelMap.put("userBean", userBean);
            modelMap.put("protectBean", protectBean);
            modelMap.put("sellBean", sellBean);
            modelMap.put("shopBean", shopBean);
            modelMap.put("noSign", 1);
            modelMap.put("idcard", jsonObject.getString("idcard"));
            modelMap.put("address", jsonObject.getString("address"));
            modelMap.put("dayTime", jsonObject.getString("dayTime"));
            modelMap.put("realName", jsonObject.getString("realName"));
            modelMap.put("phoneNum", jsonObject.getString("phoneNum"));
            modelMap.put("specialMsg", sendBean.getSpecialMsg());
            modelMap.put("protectType", protectBean.getProtectType());
            modelMap.put("openId", openId);
            return "user/" + urlSuffix;
        } else {
            modelMap.put("openId", openId);
            return "user/signNoneForMini";
        }
    }

    //{"address":"江苏省盐城市阜宁县","year":1.0,"chengben":0.0,"phoneNum":"18752298298","dingjin":800.0,"specialMsg":"","version":"2","dayTime":"365","protectType":"12","realName":"冷焕敏","idcard":"372928198704174920","shichang":2500.0,"weiyue":1500.0}
    public ProtectListSendBean wxQueryProtectListForMini(String openId) {
        UserMapperBean userMapperBean = anyDao.queryUserByOpenId(openId);
        String userMobile = userMapperBean.getUserMobile();
        List<UserMapperBean> userMapperBeans = anyDao.qWxByUnion(userMapperBean.getUnionId());
        Optional<UserMapperBean> publicHome = userMapperBeans.stream().filter(bean -> bean.getUserType() != null && bean.getUserType().equals("publicHome")).findFirst();

        List<ProtectMapperBean> protectArrayByMobile = anyDao.queryArrayByPhone(userMobile);

        ProtectListSendBean listSendBean = new ProtectListSendBean();
        //如果通过union id 查询 公众号协议存在 查询对应的电子协议
        //如果通过union id 查询 不存在，网页提示通过
        if (publicHome.isPresent()) {
            UserMapperBean publicUser = publicHome.get();
            List<ProtectMapperBean> protectMapperBeans = anyDao.queryArrayByUserId(publicUser.getUserId());

            listSendBean.setProtectMapperBeans(new ArrayList<>());
            if (protectMapperBeans.size() == 1) {
                listSendBean.setProtectBean(protectMapperBeans.get(0));
                ProtectMapperBean protectMapperBean = protectMapperBeans.get(0);
                String remarkMsg = protectMapperBean.getRemarkMsg();
                //公共方法获取html页面 path
                JSONObject proJson = JSON.parseObject(remarkMsg);
                boolean detailMsgExist = proJson.containsKey("detailMsg");
                boolean petNumberExist = proJson.containsKey("petNumber");
                boolean weiyueExist = proJson.containsKey("weiyue");
                boolean shichangExist = proJson.containsKey("shichang");
                boolean yearExist = proJson.containsKey("year");
                boolean dingjinExist = proJson.containsKey("dingjin");
                boolean chengbenExist = proJson.containsKey("chengben");
                if (detailMsgExist) {
                    String detailMsg = proJson.getString("detailMsg");
                    protectMapperBean.setDetailMsg(detailMsg);
                }
                if (petNumberExist) {
                    String petNumber = proJson.getString("petNumber");
                    protectMapperBean.setPetNumber(petNumber);
                }
                if (weiyueExist) {
                    double weiyue = proJson.getDouble("weiyue");
                    protectMapperBean.setWeiyue(weiyue);
                    protectMapperBean.setWeiyueU(digitUppercase(weiyue));
                }
                if (shichangExist) {
                    double shichang = proJson.getDouble("shichang");
                    protectMapperBean.setShichang(shichang);
                    protectMapperBean.setShichangU(digitUppercase(shichang));
                }
                if (yearExist) {
                    double year = proJson.getDouble("year");
                    protectMapperBean.setYear(year);
                    protectMapperBean.setYearU(digitUppercase(year));
                }
                if (dingjinExist) {
                    double dingjin = proJson.getDouble("dingjin");
                    protectMapperBean.setDingjin(dingjin);
                    protectMapperBean.setDingjinU(digitUppercase(dingjin));
                }
                if (chengbenExist) {
                    double chengben = proJson.getDouble("chengben");
                    protectMapperBean.setChengben(chengben);
                    protectMapperBean.setChengbenU(digitUppercase(chengben));
                }

                String specialMsg = JSON.parseObject(remarkMsg).getString("specialMsg");
                String urlSuffix;
                if (protectMapperBean.getProtectType() == 10) {
                    urlSuffix = getLingUrlSuffix(protectMapperBean);
                } else if (protectMapperBean.getProtectType() == 11) {
                    urlSuffix = "lgmV" + JSON.parseObject(protectMapperBean.getRemarkMsg()).getString("version");
                } else if (protectMapperBean.getProtectType() == 12) {
                    urlSuffix = "lwmV" + JSON.parseObject(protectMapperBean.getRemarkMsg()).getString("version");
                } else {
                    urlSuffix = getUrlSuffix(protectMapperBean);
                }

                ShopMapperBean shopMapperBean = anyDao.queryShop(protectMapperBean.getShopId());
                listSendBean.setProtectBean(protectMapperBean);
                listSendBean.setUrlSuffix(urlSuffix);
                listSendBean.setUserBean(userMapperBean);
                listSendBean.setShopBean(shopMapperBean);
                listSendBean.setIsProtect(2);
                listSendBean.setSpecialMsg(specialMsg);
                listSendBean.setIsProtect(1);
            } else if (protectMapperBeans.size() > 1) {
                listSendBean.setProtectMapperBeans(protectMapperBeans);
                listSendBean.setIsProtect(2);
            } else {
                if (protectArrayByMobile.size() == 1) {
                    listSendBean.setProtectBean(protectArrayByMobile.get(0));
                    listSendBean.setIsProtect(1);
                } else if (protectArrayByMobile.size() > 1) {
                    listSendBean.setProtectMapperBeans(protectArrayByMobile);
                    listSendBean.setIsProtect(2);
                } else {
                    listSendBean.setIsProtect(0);
                }
            }

        } else {
            if (protectArrayByMobile.size() == 1) {
                listSendBean.setProtectBean(protectArrayByMobile.get(0));
                ProtectMapperBean protectMapperBean = protectArrayByMobile.get(0);
                //公共方法获取html页面 path

                String remarkMsg = protectMapperBean.getRemarkMsg();

                JSONObject proJson = JSON.parseObject(remarkMsg);
                boolean detailMsgExist = proJson.containsKey("detailMsg");
                boolean petNumberExist = proJson.containsKey("petNumber");
                boolean weiyueExist = proJson.containsKey("weiyue");
                boolean shichangExist = proJson.containsKey("shichang");
                boolean yearExist = proJson.containsKey("year");
                boolean dingjinExist = proJson.containsKey("dingjin");
                boolean chengbenExist = proJson.containsKey("chengben");
                if (detailMsgExist) {
                    String detailMsg = proJson.getString("detailMsg");
                    protectMapperBean.setDetailMsg(detailMsg);
                }
                if (petNumberExist) {
                    String petNumber = proJson.getString("petNumber");
                    protectMapperBean.setPetNumber(petNumber);
                }
                if (weiyueExist) {
                    double weiyue = proJson.getDouble("weiyue");
                    protectMapperBean.setWeiyue(weiyue);
                    protectMapperBean.setWeiyueU(digitUppercase(weiyue));
                }
                if (shichangExist) {
                    double shichang = proJson.getDouble("shichang");
                    protectMapperBean.setShichang(shichang);
                    protectMapperBean.setShichangU(digitUppercase(shichang));
                }
                if (yearExist) {
                    double year = proJson.getDouble("year");
                    protectMapperBean.setYear(year);
                    protectMapperBean.setYearU(digitUppercase(year));
                }
                if (dingjinExist) {
                    double dingjin = proJson.getDouble("dingjin");
                    protectMapperBean.setDingjin(dingjin);
                    protectMapperBean.setDingjinU(digitUppercase(dingjin));
                }
                if (chengbenExist) {
                    double chengben = proJson.getDouble("chengben");
                    protectMapperBean.setChengben(chengben);
                    protectMapperBean.setChengbenU(digitUppercase(chengben));
                }

                String specialMsg = JSON.parseObject(remarkMsg).getString("specialMsg");
                String urlSuffix;
                if (protectMapperBean.getProtectType() == 10) {
                    urlSuffix = getLingUrlSuffix(protectMapperBean);
                } else if (protectMapperBean.getProtectType() == 11) {
                    urlSuffix = "lgmV" + JSON.parseObject(protectMapperBean.getRemarkMsg()).getString("version");
                } else if (protectMapperBean.getProtectType() == 12) {
                    urlSuffix = "lwmV" + JSON.parseObject(protectMapperBean.getRemarkMsg()).getString("version");
                } else {
                    urlSuffix = getUrlSuffix(protectMapperBean);
                }
                ShopMapperBean shopMapperBean = anyDao.queryShop(protectMapperBean.getShopId());
                listSendBean.setProtectBean(protectMapperBean);
                listSendBean.setUrlSuffix(urlSuffix);
                listSendBean.setUserBean(userMapperBean);
                listSendBean.setShopBean(shopMapperBean);
                listSendBean.setIsProtect(2);
                listSendBean.setSpecialMsg(specialMsg);
                listSendBean.setIsProtect(1);
            } else if (protectArrayByMobile.size() > 1) {
                listSendBean.setProtectMapperBeans(protectArrayByMobile);
                listSendBean.setIsProtect(2);
            } else {
                listSendBean.setIsProtect(0);
            }
        }
        return listSendBean;
    }

    /**
     * 数字金额大写转换，思想先写个完整的然后将如零拾替换成零 要用到正则表达式
     */
    private static String digitUppercase(double n) {
        String fraction[] = {"角", "分"};
        String digit[] = {"零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"};
        String unit[][] = {{"元", "万", "亿"}, {"", "拾", "佰", "仟"}};
        String head = n < 0 ? "负" : "";
        n = Math.abs(n);
        String s = "";
        for (int i = 0; i < fraction.length; i++) {
            s += (digit[(int) (Math.floor(n * 10 * Math.pow(10, i)) % 10)] + fraction[i]).replaceAll("(零.)+", "");
        }
        if (s.length() < 1) {
            s = "整";
        }
        int integerPart = (int) Math.floor(n);
        for (int i = 0; i < unit[0].length && integerPart > 0; i++) {
            String p = "";
            for (int j = 0; j < unit[1].length && n > 0; j++) {
                p = digit[integerPart % 10] + unit[1][j] + p;
                integerPart = integerPart / 10;
            }
            s = p.replaceAll("(零.)*零$", "").replaceAll("^$", "零") + unit[0][i] + s;
        }
        return head + s.replaceAll("(零.)*零元", "元").replaceFirst("(零.)+", "").replaceAll("(零.)+", "零").replaceAll("^整$", "零元整");
    }


    private String getUrlSuffix(ProtectMapperBean protectMapperBean) {
        String urlSuffix;
        int version = JSON.parseObject(protectMapperBean.getRemarkMsg()).getIntValue("version");
        if (version >= 9) {
            if (protectMapperBean.getProtectType() == 3) {
                urlSuffix = "protectFreeV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                        .getString("version");
            } else if (protectMapperBean.getProtectType() == 4) {
                urlSuffix = "protectWholesaleV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                        .getString("version");
            } else {
                urlSuffix = "protectV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                        .getString("version");
            }
        } else if (version >= 5) {

            urlSuffix = "protectFreeV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                    .getString("version");
        } else {
            if (protectMapperBean.getProtectType() == 3) {
                urlSuffix = "protectFreeV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                        .getString("version");
            } else if (protectMapperBean.getProtectType() == 4) {
                urlSuffix = "protectWholesaleV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                        .getString("version");
            } else {
                urlSuffix = "protectV" + JSON.parseObject(protectMapperBean.getRemarkMsg())
                        .getString("version");
            }
        }

        return urlSuffix;
    }

    private String getLingUrlSuffix(ProtectMapperBean protectMapperBean) {
        return "lingV" + JSON.parseObject(protectMapperBean.getRemarkMsg()).getString("version");
    }

}
