package SellingCourses.DAO;

import org.springframework.stereotype.Repository;

import SellingCourses.ENTITY.MapperUsers;
import SellingCourses.ENTITY.Users;

@Repository
public class UsersDao extends BaseDao {
	
	public int AddAccount(Users user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO users ");
		sql.append("( ");
		sql.append("    user, ");
		sql.append("    password, ");
		sql.append("    display_name ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+user.getUser()+"', ");
		sql.append(" 	'"+user.getPassword()+"', ");
		sql.append(" 	'"+user.getDisplay_name()+"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString()) ;
		return insert;
	};
	
	public Users GetUserByAcc(Users user) {
		
		String sql = "SELECT * FROM users WHERE user = '"+user.getUser()+"'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		
		return result;
	};
	
//	public List<Users> GetAllUser(){
//	List<Users> list = new ArrayList<Users>();
//	String sql = "SELECT * FROM users";
//	list = _jdbcTemplate.query(sql, new MapperUsers());
//	return list;
//	}
}
