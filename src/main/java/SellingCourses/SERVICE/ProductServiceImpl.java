package SellingCourses.SERVICE;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SellingCourses.DAO.ProductDAO;
import SellingCourses.DTO.ProductDTO;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	private ProductDAO productsDao;
	

	@Override
	public List<ProductDTO> GetDataProducts() {
		List<ProductDTO> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}

}
