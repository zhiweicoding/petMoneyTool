package plus.zhiwei.petmoneytool.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @author zhiwei
 */
@Component
public interface AnyDao {

    @Select("select t.leave_money,DATE_FORMAT(t.create_time, '%Y-%m-%d %H:%i:%s') as create_time from t_member_points t ,t_user tu where tu.user_id=t.user_id " +
            "and tu.user_type='weapp' and tu.user_mobile=#{mobile} and tu.is_delete = 0 and t.is_delete=0")
    List<Map<String, Object>> queryMoney(@Param("mobile") String mobile);

    @Select("select t.order_id,t.track_number,product_list_id,ext_params,DATE_FORMAT(t.create_time, '%Y-%m-%d %H:%i:%s') as create_time,t.address_user_name,t.address_full_region,t.address_name,t.address_mobile from t_order t ,t_user tu where tu.user_id=t.user_id " +
            "and t.order_status in (1,3,100) and good_type!='cat' and tu.is_delete = 0 and t.product_list_id is not null and tu.user_mobile=#{mobile} order by t.create_time")
    List<Map<String, Object>> queryOrder(@Param("mobile") String mobile);

    @Select("select t.good_title,t.good_brief,t.list_pic_url from t_good t where t.good_id=#{goodId}")
    Map<String, Object> queryGood(@Param("goodId") String goodId);
}




