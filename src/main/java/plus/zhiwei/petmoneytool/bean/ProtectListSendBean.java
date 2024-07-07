package plus.zhiwei.petmoneytool.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @program: smartBear
 * @author: zhiwei
 * @email: diaozhiwei2k@163.com
 * @create: 2019-02-11 22:43
 * @description: 协议列表
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProtectListSendBean implements Serializable {

    private List<ProtectMapperBean> protectMapperBeans;
    private int isProtect;

    private ShopMapperBean shopBean;
    private UserMapperBean userBean;
    private ShopMapperBean sellBean;
    private ProtectMapperBean protectBean;
    private boolean isSign;
    private String urlSuffix;
    private String specialMsg;
    private String openId;
}
