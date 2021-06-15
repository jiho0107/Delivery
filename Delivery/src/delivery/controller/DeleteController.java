package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class DeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int cNo = Integer.parseInt(request.getParameter("cNo")); //장바구니 번호
		Service.getInstance().delete(cNo);
		
		HttpUtil.forward(request, response, "cartList.do");
	}

}
