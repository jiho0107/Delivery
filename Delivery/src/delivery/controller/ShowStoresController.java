package delivery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class ShowStoresController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("type"); //음식종류
		ArrayList<String> lists = Service.getInstance().showStores(type);
		request.setAttribute("lists", lists);
		
		HttpUtil.forward(request, response, "/result/showStoresResult.jsp");
	}

}
