package delivery.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.controller.LoginController;

public class FrontController extends HttpServlet{
	HashMap<String,Controller> map = null;
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		map = new HashMap<String,Controller>();
		map.put("/login.do", new LoginController()); //로그인
		map.put("/join.do", new JoinController()); //회원가입
		map.put("/idCheck.do", new IdCheckController()); //회원가입시 id중복확인
		map.put("/cartList.do", new CartListController()); //장바구니 목록
		map.put("/orderList.do", new OrderListController()); //주문목록
		map.put("/add.do", new AddController()); //담기
		map.put("/order.do", new OrderController()); //주문하기
		map.put("/delete.do", new DeleteController()); //장바구니 메뉴 삭제
		map.put("/showStores.do", new ShowStoresController()); //가게목록보여주기
		map.put("/showItems.do", new ShowItemsController()); //가게의 음식목록 보여주기
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String path = uri.substring(contextPath.length());
		Controller cont = map.get(path);
		cont.execute(req, resp);
	}
}
