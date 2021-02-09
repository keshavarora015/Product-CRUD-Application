package com.productcart.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.productcart.dao.DataAccessException;
import com.productcart.dao.UserNotfoundException;
import com.productcart.service.UserService;
import com.productcart.service.UserServiceImpl;
import com.productcart.userdao.User;

public class LoginController extends HttpServlet {
	UserService userService = new UserServiceImpl();
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			User user = userService.getUser(username, password);
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("user", user);
			response.sendRedirect("productcontroller.do?action=home");
		} catch (UserNotfoundException e) {
			response.sendRedirect("login.jsp?error=login faild!");
		}
	}
}
