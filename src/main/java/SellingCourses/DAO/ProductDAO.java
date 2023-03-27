package SellingCourses.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import SellingCourses.DTO.ProductDTO;
import SellingCourses.ENTITY.MapperProduct;

@Repository
public class ProductDAO extends BaseDao {

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("* FROM course");
		return sql;
	}

	public List<ProductDTO> GetDataProducts() {
		String sql = SqlString().toString();
		List<ProductDTO> listProducts = _jdbcTemplate.query(sql, new MapperProduct());
		return listProducts;
	}
}
