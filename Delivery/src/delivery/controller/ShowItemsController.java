package delivery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;
import delivery.vo.ProductVO;

public class ShowItemsController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String store = request.getParameter("store");//가게선택
		ArrayList<ProductVO> lists = Service.getInstance().showItems(store);
		request.setAttribute("lists", lists);
		
		HttpUtil.forward(request, response, "/result/showItemsResult.jsp");
	}

}
