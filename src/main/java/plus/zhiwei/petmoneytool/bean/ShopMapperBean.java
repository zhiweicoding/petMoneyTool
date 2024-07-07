package plus.zhiwei.petmoneytool.bean;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * @author zhiwei
 */
@Data
@NoArgsConstructor
public class ShopMapperBean implements Serializable {

    private String shopId;
    private String shopName;
    private String shopDesc;
    private String shopIcon;
    private String shopLocation;
    private String shopPhone;
    private String shopMasterName;
    private String shopMasterPhone;
    private String shopLat;
    private String shopLon;
    private String shopProvinceId;
    private String shopCityId;
    private String shopDistrictId;
    private Date createTime;
    private String createTimeStr;
    private int isDelete;
    private String adminId;
    private String signPhoto;

    private String openId;
    private String unionId;

    private String provinceName;
    private String cityName;
    private String districtName;

    private String loginOpenId;

    private String ourLicense;
    private String[] ourLicenseArray;
    private String license;
    private int grade;
    private int isSimulation;//是否是模拟的

    private String wxId;
    private String wxName;
    private String pwd;

}
