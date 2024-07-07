package plus.zhiwei.petmoneytool.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author zhiwei
 */
public class UserMapperBean implements Serializable {

    private String userId;
    private String openId;
    private String publicOpenId;
    private String aliOpenId;
    private String ttOpenId;
    private String baiduOpenId;
    private String isRealName;
    private String nickName;
    private String userMobile;
    private String avatarUrl;
    private String unionId;
    private String province;
    private String city;
    private String country;
    private String gender;
    private String language;
    private int isDelete;
    private Date createTime;
    private String createTimeStr;
    private String typeId;
    private String password;

    private String noticeId;//微信公众号的openId
    private String zhifubaoId;//支付宝id
    private String realName;//用户真实姓名
    private String userType;

    private String remarkMsg;

    private int isMember;

    private List<MemberMapperBean> memberMapperBeans;

    private String totalMemberPointMoney;

    public UserMapperBean() {
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getPublicOpenId() {
        return publicOpenId;
    }

    public void setPublicOpenId(String publicOpenId) {
        this.publicOpenId = publicOpenId;
    }

    public String getAliOpenId() {
        return aliOpenId;
    }

    public void setAliOpenId(String aliOpenId) {
        this.aliOpenId = aliOpenId;
    }

    public String getTtOpenId() {
        return ttOpenId;
    }

    public void setTtOpenId(String ttOpenId) {
        this.ttOpenId = ttOpenId;
    }

    public String getBaiduOpenId() {
        return baiduOpenId;
    }

    public void setBaiduOpenId(String baiduOpenId) {
        this.baiduOpenId = baiduOpenId;
    }

    public String getIsRealName() {
        return isRealName;
    }

    public void setIsRealName(String isRealName) {
        this.isRealName = isRealName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getUserMobile() {
        return userMobile;
    }

    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public String getUnionId() {
        return unionId;
    }

    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateTimeStr() {
        return createTimeStr;
    }

    public void setCreateTimeStr(String createTimeStr) {
        this.createTimeStr = createTimeStr;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(String noticeId) {
        this.noticeId = noticeId;
    }

    public String getZhifubaoId() {
        return zhifubaoId;
    }

    public void setZhifubaoId(String zhifubaoId) {
        this.zhifubaoId = zhifubaoId;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getRemarkMsg() {
        return remarkMsg;
    }

    public void setRemarkMsg(String remarkMsg) {
        this.remarkMsg = remarkMsg;
    }

    public int getIsMember() {
        return isMember;
    }

    public void setIsMember(int isMember) {
        this.isMember = isMember;
    }

    public List<MemberMapperBean> getMemberMapperBeans() {
        return memberMapperBeans;
    }

    public void setMemberMapperBeans(List<MemberMapperBean> memberMapperBeans) {
        this.memberMapperBeans = memberMapperBeans;
    }

    public String getTotalMemberPointMoney() {
        return totalMemberPointMoney;
    }

    public void setTotalMemberPointMoney(String totalMemberPointMoney) {
        this.totalMemberPointMoney = totalMemberPointMoney;
    }

    public UserMapperBean(String userId, String openId, String publicOpenId, String aliOpenId, String ttOpenId, String baiduOpenId, String isRealName, String nickName, String userMobile, String avatarUrl, String unionId, String province, String city, String country, String gender, String language, int isDelete, Date createTime, String createTimeStr, String typeId, String password, String noticeId, String zhifubaoId, String realName, String userType, String remarkMsg, int isMember, List<MemberMapperBean> memberMapperBeans, String totalMemberPointMoney) {
        this.userId = userId;
        this.openId = openId;
        this.publicOpenId = publicOpenId;
        this.aliOpenId = aliOpenId;
        this.ttOpenId = ttOpenId;
        this.baiduOpenId = baiduOpenId;
        this.isRealName = isRealName;
        this.nickName = nickName;
        this.userMobile = userMobile;
        this.avatarUrl = avatarUrl;
        this.unionId = unionId;
        this.province = province;
        this.city = city;
        this.country = country;
        this.gender = gender;
        this.language = language;
        this.isDelete = isDelete;
        this.createTime = createTime;
        this.createTimeStr = createTimeStr;
        this.typeId = typeId;
        this.password = password;
        this.noticeId = noticeId;
        this.zhifubaoId = zhifubaoId;
        this.realName = realName;
        this.userType = userType;
        this.remarkMsg = remarkMsg;
        this.isMember = isMember;
        this.memberMapperBeans = memberMapperBeans;
        this.totalMemberPointMoney = totalMemberPointMoney;
    }
}
