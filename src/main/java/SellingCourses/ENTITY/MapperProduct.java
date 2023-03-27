package SellingCourses.ENTITY;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import SellingCourses.DTO.ProductDTO;

public class MapperProduct implements RowMapper<ProductDTO> {
	
	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDTO products = new ProductDTO();
		products.setId(rs.getInt("id"));
		products.setName(rs.getString("name"));
		products.setImg(rs.getString("image"));
		products.setDescription(rs.getString("description"));
		products.setLink(rs.getString("link"));
		products.setPrice(rs.getDouble("price"));

		return products;
	}

}
