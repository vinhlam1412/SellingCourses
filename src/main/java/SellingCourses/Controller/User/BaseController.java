package SellingCourses.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import SellingCourses.SERVICE.ProductServiceImpl;


@Controller
public class BaseController {
	
	@Autowired
	ProductServiceImpl  _productService; 	
	public ModelAndView  _mvShare = new ModelAndView();
	
}
