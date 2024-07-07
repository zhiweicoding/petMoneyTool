package plus.zhiwei.petmoneytool.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * @author zhiwei
 */

public class ProtectMapperBean implements Serializable {

    private String protectId;
    private String shopId;
    private String userId;
    private String goodId;
    private String vaccineFirstName;
    private String vaccineSecondName;
    private String vaccineThirdName;
    private Date vaccineFirstDateTime;
    private String vaccineFirstDateTimeStr;
    private Date vaccineSecondDateTime;
    private String vaccineSecondDateTimeStr;
    private Date vaccineThirdDateTime;
    private String vaccineThirdDateTimeStr;
    private String insectName;
    private Date insectDateTime;
    private String insectDateTimeStr;
    private String taobaoNickname;
    private String zhifubao;
    private Date createTime;
    private String createTimeStr;
    private int isProtect;
    private Date protectTime;
    private String protectTimeStr;
    private String symbolId;
    private String symbolName;
    private String petAge;
    private double petPrice;
    private String remarkMsg;
    private String sellId;

    private int petSex;
    private Date birthday;
    private String birthdayStr;
    private int protectType;
    private String typeId;

    private int isFree;
    private int isSendOpinion;

    //批发
    private String detailMsg;
    private String petNumber;

    private String signImg;

    private double shichang;
    private String shichangU;
    private double chengben;
    private String chengbenU;
    private double year;
    private String yearU;
    private double dingjin;
    private String dingjinU;
    private double weiyue;
    private String weiyueU;


    @Override
    public String toString() {
        return "ProtectMapperBean{" +
                "protectId='" + protectId + '\'' +
                ", shopId='" + shopId + '\'' +
                ", userId='" + userId + '\'' +
                ", goodId='" + goodId + '\'' +
                ", vaccineFirstName='" + vaccineFirstName + '\'' +
                ", vaccineSecondName='" + vaccineSecondName + '\'' +
                ", vaccineThirdName='" + vaccineThirdName + '\'' +
                ", vaccineFirstDateTime=" + vaccineFirstDateTime +
                ", vaccineFirstDateTimeStr='" + vaccineFirstDateTimeStr + '\'' +
                ", vaccineSecondDateTime=" + vaccineSecondDateTime +
                ", vaccineSecondDateTimeStr='" + vaccineSecondDateTimeStr + '\'' +
                ", vaccineThirdDateTime=" + vaccineThirdDateTime +
                ", vaccineThirdDateTimeStr='" + vaccineThirdDateTimeStr + '\'' +
                ", insectName='" + insectName + '\'' +
                ", insectDateTime=" + insectDateTime +
                ", insectDateTimeStr='" + insectDateTimeStr + '\'' +
                ", taobaoNickname='" + taobaoNickname + '\'' +
                ", zhifubao='" + zhifubao + '\'' +
                ", createTime=" + createTime +
                ", createTimeStr='" + createTimeStr + '\'' +
                ", isProtect=" + isProtect +
                ", protectTime=" + protectTime +
                ", protectTimeStr='" + protectTimeStr + '\'' +
                ", symbolId='" + symbolId + '\'' +
                ", symbolName='" + symbolName + '\'' +
                ", petAge='" + petAge + '\'' +
                ", petPrice=" + petPrice +
                ", remarkMsg='" + remarkMsg + '\'' +
                ", sellId='" + sellId + '\'' +
                ", petSex=" + petSex +
                ", birthday=" + birthday +
                ", birthdayStr='" + birthdayStr + '\'' +
                ", protectType=" + protectType +
                ", typeId='" + typeId + '\'' +
                ", isFree=" + isFree +
                ", isSendOpinion=" + isSendOpinion +
                ", detailMsg='" + detailMsg + '\'' +
                ", petNumber='" + petNumber + '\'' +
                ", signImg='" + signImg + '\'' +
                ", shichang=" + shichang +
                ", shichangU='" + shichangU + '\'' +
                ", chengben=" + chengben +
                ", chengbenU='" + chengbenU + '\'' +
                ", year=" + year +
                ", yearU='" + yearU + '\'' +
                ", dingjin=" + dingjin +
                ", dingjinU='" + dingjinU + '\'' +
                ", weiyue=" + weiyue +
                ", weiyueU='" + weiyueU + '\'' +
                '}';
    }

    public String getProtectId() {
        return protectId;
    }

    public void setProtectId(String protectId) {
        this.protectId = protectId;
    }

    public String getShopId() {
        return shopId;
    }

    public void setShopId(String shopId) {
        this.shopId = shopId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getGoodId() {
        return goodId;
    }

    public void setGoodId(String goodId) {
        this.goodId = goodId;
    }

    public String getVaccineFirstName() {
        return vaccineFirstName;
    }

    public void setVaccineFirstName(String vaccineFirstName) {
        this.vaccineFirstName = vaccineFirstName;
    }

    public String getVaccineSecondName() {
        return vaccineSecondName;
    }

    public void setVaccineSecondName(String vaccineSecondName) {
        this.vaccineSecondName = vaccineSecondName;
    }

    public String getVaccineThirdName() {
        return vaccineThirdName;
    }

    public void setVaccineThirdName(String vaccineThirdName) {
        this.vaccineThirdName = vaccineThirdName;
    }

    public Date getVaccineFirstDateTime() {
        return vaccineFirstDateTime;
    }

    public void setVaccineFirstDateTime(Date vaccineFirstDateTime) {
        this.vaccineFirstDateTime = vaccineFirstDateTime;
    }

    public String getVaccineFirstDateTimeStr() {
        return vaccineFirstDateTimeStr;
    }

    public void setVaccineFirstDateTimeStr(String vaccineFirstDateTimeStr) {
        this.vaccineFirstDateTimeStr = vaccineFirstDateTimeStr;
    }

    public Date getVaccineSecondDateTime() {
        return vaccineSecondDateTime;
    }

    public void setVaccineSecondDateTime(Date vaccineSecondDateTime) {
        this.vaccineSecondDateTime = vaccineSecondDateTime;
    }

    public String getVaccineSecondDateTimeStr() {
        return vaccineSecondDateTimeStr;
    }

    public void setVaccineSecondDateTimeStr(String vaccineSecondDateTimeStr) {
        this.vaccineSecondDateTimeStr = vaccineSecondDateTimeStr;
    }

    public Date getVaccineThirdDateTime() {
        return vaccineThirdDateTime;
    }

    public void setVaccineThirdDateTime(Date vaccineThirdDateTime) {
        this.vaccineThirdDateTime = vaccineThirdDateTime;
    }

    public String getVaccineThirdDateTimeStr() {
        return vaccineThirdDateTimeStr;
    }

    public void setVaccineThirdDateTimeStr(String vaccineThirdDateTimeStr) {
        this.vaccineThirdDateTimeStr = vaccineThirdDateTimeStr;
    }

    public String getInsectName() {
        return insectName;
    }

    public void setInsectName(String insectName) {
        this.insectName = insectName;
    }

    public Date getInsectDateTime() {
        return insectDateTime;
    }

    public void setInsectDateTime(Date insectDateTime) {
        this.insectDateTime = insectDateTime;
    }

    public String getInsectDateTimeStr() {
        return insectDateTimeStr;
    }

    public void setInsectDateTimeStr(String insectDateTimeStr) {
        this.insectDateTimeStr = insectDateTimeStr;
    }

    public String getTaobaoNickname() {
        return taobaoNickname;
    }

    public void setTaobaoNickname(String taobaoNickname) {
        this.taobaoNickname = taobaoNickname;
    }

    public String getZhifubao() {
        return zhifubao;
    }

    public void setZhifubao(String zhifubao) {
        this.zhifubao = zhifubao;
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

    public int getIsProtect() {
        return isProtect;
    }

    public void setIsProtect(int isProtect) {
        this.isProtect = isProtect;
    }

    public Date getProtectTime() {
        return protectTime;
    }

    public void setProtectTime(Date protectTime) {
        this.protectTime = protectTime;
    }

    public String getProtectTimeStr() {
        return protectTimeStr;
    }

    public void setProtectTimeStr(String protectTimeStr) {
        this.protectTimeStr = protectTimeStr;
    }

    public String getSymbolId() {
        return symbolId;
    }

    public void setSymbolId(String symbolId) {
        this.symbolId = symbolId;
    }

    public String getSymbolName() {
        return symbolName;
    }

    public void setSymbolName(String symbolName) {
        this.symbolName = symbolName;
    }

    public String getPetAge() {
        return petAge;
    }

    public void setPetAge(String petAge) {
        this.petAge = petAge;
    }

    public double getPetPrice() {
        return petPrice;
    }

    public void setPetPrice(double petPrice) {
        this.petPrice = petPrice;
    }

    public String getRemarkMsg() {
        return remarkMsg;
    }

    public void setRemarkMsg(String remarkMsg) {
        this.remarkMsg = remarkMsg;
    }

    public String getSellId() {
        return sellId;
    }

    public void setSellId(String sellId) {
        this.sellId = sellId;
    }

    public int getPetSex() {
        return petSex;
    }

    public void setPetSex(int petSex) {
        this.petSex = petSex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getBirthdayStr() {
        return birthdayStr;
    }

    public void setBirthdayStr(String birthdayStr) {
        this.birthdayStr = birthdayStr;
    }

    public int getProtectType() {
        return protectType;
    }

    public void setProtectType(int protectType) {
        this.protectType = protectType;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public int getIsFree() {
        return isFree;
    }

    public void setIsFree(int isFree) {
        this.isFree = isFree;
    }

    public int getIsSendOpinion() {
        return isSendOpinion;
    }

    public void setIsSendOpinion(int isSendOpinion) {
        this.isSendOpinion = isSendOpinion;
    }

    public String getDetailMsg() {
        return detailMsg;
    }

    public void setDetailMsg(String detailMsg) {
        this.detailMsg = detailMsg;
    }

    public String getPetNumber() {
        return petNumber;
    }

    public void setPetNumber(String petNumber) {
        this.petNumber = petNumber;
    }

    public String getSignImg() {
        return signImg;
    }

    public void setSignImg(String signImg) {
        this.signImg = signImg;
    }

    public double getShichang() {
        return shichang;
    }

    public void setShichang(double shichang) {
        this.shichang = shichang;
    }

    public String getShichangU() {
        return shichangU;
    }

    public void setShichangU(String shichangU) {
        this.shichangU = shichangU;
    }

    public double getChengben() {
        return chengben;
    }

    public void setChengben(double chengben) {
        this.chengben = chengben;
    }

    public String getChengbenU() {
        return chengbenU;
    }

    public void setChengbenU(String chengbenU) {
        this.chengbenU = chengbenU;
    }

    public double getYear() {
        return year;
    }

    public void setYear(double year) {
        this.year = year;
    }

    public String getYearU() {
        return yearU;
    }

    public void setYearU(String yearU) {
        this.yearU = yearU;
    }

    public double getDingjin() {
        return dingjin;
    }

    public void setDingjin(double dingjin) {
        this.dingjin = dingjin;
    }

    public String getDingjinU() {
        return dingjinU;
    }

    public void setDingjinU(String dingjinU) {
        this.dingjinU = dingjinU;
    }

    public double getWeiyue() {
        return weiyue;
    }

    public void setWeiyue(double weiyue) {
        this.weiyue = weiyue;
    }

    public String getWeiyueU() {
        return weiyueU;
    }

    public void setWeiyueU(String weiyueU) {
        this.weiyueU = weiyueU;
    }

    public ProtectMapperBean() {
    }

    public ProtectMapperBean(String protectId, String shopId, String userId, String goodId, String vaccineFirstName, String vaccineSecondName, String vaccineThirdName, Date vaccineFirstDateTime, String vaccineFirstDateTimeStr, Date vaccineSecondDateTime, String vaccineSecondDateTimeStr, Date vaccineThirdDateTime, String vaccineThirdDateTimeStr, String insectName, Date insectDateTime, String insectDateTimeStr, String taobaoNickname, String zhifubao, Date createTime, String createTimeStr, int isProtect, Date protectTime, String protectTimeStr, String symbolId, String symbolName, String petAge, double petPrice, String remarkMsg, String sellId, int petSex, Date birthday, String birthdayStr, int protectType, String typeId, int isFree, int isSendOpinion, String detailMsg, String petNumber, String signImg, double shichang, String shichangU, double chengben, String chengbenU, double year, String yearU, double dingjin, String dingjinU, double weiyue, String weiyueU) {
        this.protectId = protectId;
        this.shopId = shopId;
        this.userId = userId;
        this.goodId = goodId;
        this.vaccineFirstName = vaccineFirstName;
        this.vaccineSecondName = vaccineSecondName;
        this.vaccineThirdName = vaccineThirdName;
        this.vaccineFirstDateTime = vaccineFirstDateTime;
        this.vaccineFirstDateTimeStr = vaccineFirstDateTimeStr;
        this.vaccineSecondDateTime = vaccineSecondDateTime;
        this.vaccineSecondDateTimeStr = vaccineSecondDateTimeStr;
        this.vaccineThirdDateTime = vaccineThirdDateTime;
        this.vaccineThirdDateTimeStr = vaccineThirdDateTimeStr;
        this.insectName = insectName;
        this.insectDateTime = insectDateTime;
        this.insectDateTimeStr = insectDateTimeStr;
        this.taobaoNickname = taobaoNickname;
        this.zhifubao = zhifubao;
        this.createTime = createTime;
        this.createTimeStr = createTimeStr;
        this.isProtect = isProtect;
        this.protectTime = protectTime;
        this.protectTimeStr = protectTimeStr;
        this.symbolId = symbolId;
        this.symbolName = symbolName;
        this.petAge = petAge;
        this.petPrice = petPrice;
        this.remarkMsg = remarkMsg;
        this.sellId = sellId;
        this.petSex = petSex;
        this.birthday = birthday;
        this.birthdayStr = birthdayStr;
        this.protectType = protectType;
        this.typeId = typeId;
        this.isFree = isFree;
        this.isSendOpinion = isSendOpinion;
        this.detailMsg = detailMsg;
        this.petNumber = petNumber;
        this.signImg = signImg;
        this.shichang = shichang;
        this.shichangU = shichangU;
        this.chengben = chengben;
        this.chengbenU = chengbenU;
        this.year = year;
        this.yearU = yearU;
        this.dingjin = dingjin;
        this.dingjinU = dingjinU;
        this.weiyue = weiyue;
        this.weiyueU = weiyueU;
    }
}
