package SellingCourses.SERVICE;

import org.springframework.stereotype.Service;

import SellingCourses.ENTITY.Users;
@Service
public interface IAccountService {
	public int AddAccount(Users user);
	public Users CheckAccount(Users user);
}
