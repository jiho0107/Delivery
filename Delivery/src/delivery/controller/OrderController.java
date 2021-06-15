package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class OrderController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = (String)request.getSession().getAttribute("id"); //고객id
		int totalSum = Integer.parseInt(request.getParameter("totalSum")); //총액
		Service.getInstance().order(id,totalSum);
		
		HttpUtil.forward(request, response, "/result/orderResult.jsp");
	}

}
