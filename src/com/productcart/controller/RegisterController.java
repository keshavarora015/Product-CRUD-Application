package com.productcart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.productcart.dao.UserNotfoundException;
import com.productcart.service.UserService;
import com.productcart.service.UserServiceImpl;
import com.productcart.userdao.User;

public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserServiceImpl();
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			User newUser= new User(username,password);
			try {
				userService.addUser(newUser);
				response.sendRedirect("login.jsp");
			} catch (UserNotfoundException e) {
				response.sendRedirect("login.jsp?error=Register fail");
			}

	}

}
