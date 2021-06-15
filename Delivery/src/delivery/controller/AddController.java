package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class AddController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = (String)request.getSession().getAttribute("id"); //고객id
		String no = request.getParameter("no"); //제품id
		int count = Integer.parseInt(request.getParameter("count")); //수량
		Service.getInstance().add(id,no,count);
		
		HttpUtil.forward(request, response, "/result/addResult.jsp");
	}

}
