package com.thang.controllers;

import java.io.IOException;

import com.thang.models.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = "/index.jsp";

//		get action 
		String action = req.getParameter("action");

		if (action == null) {
			action = "join";
			url = "/index.jsp";
		}

		if (action.equals("add")) {
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String email = req.getParameter("email");

			User user = new User(firstName, lastName, email);

			String message;

			if (firstName == null || lastName == null || email == null || firstName.isEmpty() || lastName.isEmpty()
					|| email.isEmpty()) {

				message = "Please fill out all three text boxes";
				url = "/index.jsp";
				System.out.printf("First Name: %s, Last Name: %s, Email: %s\n", firstName, lastName, email);
			} else {
				message = "";
				url = "/thanks.jsp";
//				UserDB.insert(user);
			}
			req.setAttribute("user", user);
			req.setAttribute("message", message);
		}
		getServletContext().getRequestDispatcher(url).forward(req, resp);

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);

	}
}
