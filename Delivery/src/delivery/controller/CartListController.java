package delivery.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;
import delivery.vo.CartVO;

public class CartListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = (String)request.getSession().getAttribute("id"); //회원id
		ArrayList<CartVO> lists = Service.getInstance().cartList(id);
		request.setAttribute("lists", lists);
		
		HttpUtil.forward(request, response, "/result/cartListResult.jsp");
	}

}
