package plus.zhiwei.petmoneytool.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author zhiweicoding.xyz
 * @date 4/5/24
 * @email diaozhiwei2k@gmail.com
 * String product_list_id = String.valueOf(order.get("product_list_id"));
 * String ext_params = String.valueOf(order.get("ext_params"));
 * String order_id = String.valueOf(order.get("order_id"));
 * String create_time = String.valueOf(order.get("create_time"));
 * String address_full_region = String.valueOf(order.get("address_full_region"));
 * String address_mobile = String.valueOf(order.get("address_mobile"));
 * String address_name = String.valueOf(order.get("address_name"));
 * String address_user_name = String.valueOf(order.get("address_user_name"));
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderGood {
    private String moneyTotal;
    private String orderId;
    private String createTime;
    private String address;
    private List<Good> goods;
    private String hadTrack;//yes no

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class Good {
        private String goodId;
        private String goodTitle;
        private String goodBrief;
        private String goodPic;
        private String num;
        private String money;
        private String hadRefund;//yes no
    }
}
