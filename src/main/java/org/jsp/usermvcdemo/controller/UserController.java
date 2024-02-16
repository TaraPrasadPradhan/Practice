package org.jsp.usermvcdemo.controller;

import org.jsp.usermvcdemo.dao.UserDao;
import org.jsp.usermvcdemo.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/open-register")
	public ModelAndView openRegister(ModelAndView view) {
		view.setViewName("register");
		view.addObject("u", new User());
		return view;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User u, ModelAndView view) {
		u = userDao.SaveUser(u);
		view.setViewName("print");
		view.addObject("message", "User Saved With Id" + u.getId());
		return view;
	}

    @RequestMapping(value = "/open-Update")
    public ModelAndView openUpdate(ModelAndView view) {
		view.setViewName("update");
		view.addObject("u", new User());
		return view;
	}

	@PostMapping(value = "/update")
	public ModelAndView Update(@ModelAttribute User u, ModelAndView view) {
		u = userDao.UpdateUser(u);
		if (u != null) {
			view.setViewName("print");
			view.addObject("message", "User Update");
			return view;
		}
		view.setViewName("print");
		view.addObject("message", "Cannot Update");
		return view;
	}

	@RequestMapping(value = "/open-view")
	public String openView(@RequestParam String view) {
		return view;
	}

	@GetMapping(value = "/find-by-id")
	public ModelAndView Find(@ModelAttribute User u, ModelAndView view) {
		u = userDao.findById(u.getId());
		if (u != null) {
			view.setViewName("display");
			view.addObject("u", u);
			return view;
		}
		view.setViewName("print");
		view.addObject("message", "No Id Found");
		return view;

	}

	@GetMapping(value = "/verify-by-id")
	public ModelAndView VerifyById(@RequestParam int id, @RequestParam String password, ModelAndView view) {
		User u = userDao.VerifyUser(id, password);
		if (u != null) {
			view.setViewName("display");
			view.addObject("u", u);
			return view;
		}
		view.setViewName("print");
		view.addObject("message", "Invalid User Id or Password");
		return view;
	}

	@GetMapping(value = "/verify-by-phone")
	public ModelAndView VerifyByphone(@RequestParam long phone, @RequestParam String password, ModelAndView view) {
		User u = userDao.VerifyUser(phone, password);
		if (u != null) {
			view.setViewName("display");
			view.addObject("u", u);
			return view;
		}
		view.setViewName("print");
		view.addObject("message", "Invalid User phone or Password");
		return view;
	}

	@GetMapping(value = "/verify-by-email")
	public ModelAndView VerifyBYemail(@RequestParam String email, @RequestParam String password, ModelAndView view) {
		User u = userDao.VerifyUser(email, password);
		if (u != null) {
			view.setViewName("display");
			view.addObject("u", u);
			return view;
		}
		view.setViewName("print");
		view.addObject("message", "Invalid User Email or Password");
		return view;
	}

	@GetMapping(value = "/delete-by-id")
	public ModelAndView Delet(@RequestParam int id, ModelAndView view) {
		boolean deleted = userDao.DeletUser(id);
		if (deleted == true) {
			view.setViewName("print");
			view.addObject("message", "User deleted");
			return view;
		}
		view.setViewName("print");
		view.addObject("message", "Cannot delete user as Id is Invalid");
		return view;

	}
}
