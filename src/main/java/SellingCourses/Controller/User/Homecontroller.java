package SellingCourses.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Homecontroller extends BaseController {

//	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
//	public String Index() {
//		return "user/index";
//	}
	
	@RequestMapping(value = {"/", "/home"})
	public ModelAndView Index() {
		_mvShare.addObject("products", _productService.GetDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
}
