package SellingCourses.SERVICE;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SellingCourses.DTO.ProductDTO;

@Service
public interface IProductService {
	@Autowired
	public List<ProductDTO> GetDataProducts();
	
}
