package plus.zhiwei.petmoneytool.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * @author zhiwei
 */
public class MemberMapperBean implements Serializable {

    private String memberId;
    private String memberName;
    private String memberDesc;
    private int memberFloat;//if user had bean member,price * member float
    private String userId;
    private String memberType;//cat product

    private int isDelete;
    private Date createTime;
    private String createTimeStr;

    private double memberMoney;//新增加的会员卡 猫咪优惠金额

    @Override
    public String toString() {
        return "MemberMapperBean{" +
                "memberId='" + memberId + '\'' +
                ", memberName='" + memberName + '\'' +
                ", memberDesc='" + memberDesc + '\'' +
                ", memberFloat=" + memberFloat +
                ", userId='" + userId + '\'' +
                ", memberType='" + memberType + '\'' +
                ", isDelete=" + isDelete +
                ", createTime=" + createTime +
                ", createTimeStr='" + createTimeStr + '\'' +
                ", memberMoney=" + memberMoney +
                '}';
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getMemberDesc() {
        return memberDesc;
    }

    public void setMemberDesc(String memberDesc) {
        this.memberDesc = memberDesc;
    }

    public int getMemberFloat() {
        return memberFloat;
    }

    public void setMemberFloat(int memberFloat) {
        this.memberFloat = memberFloat;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getMemberType() {
        return memberType;
    }

    public void setMemberType(String memberType) {
        this.memberType = memberType;
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

    public double getMemberMoney() {
        return memberMoney;
    }

    public void setMemberMoney(double memberMoney) {
        this.memberMoney = memberMoney;
    }

    public MemberMapperBean(String memberId, String memberName, String memberDesc, int memberFloat, String userId, String memberType, int isDelete, Date createTime, String createTimeStr, double memberMoney) {
        this.memberId = memberId;
        this.memberName = memberName;
        this.memberDesc = memberDesc;
        this.memberFloat = memberFloat;
        this.userId = userId;
        this.memberType = memberType;
        this.isDelete = isDelete;
        this.createTime = createTime;
        this.createTimeStr = createTimeStr;
        this.memberMoney = memberMoney;
    }

    public MemberMapperBean() {
    }
}
