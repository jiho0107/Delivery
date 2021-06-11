package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class LoginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id"); //회원 아이디
		String pwd = request.getParameter("pwd"); //회원 비밀번호
		boolean result = Service.getInstance().login(id, pwd);
		String path;
		if(result) //로그인 성공시
		{
			request.getSession().setAttribute("id", id); //회원id
			path = "/home.jsp";
		}
		else //로그인 실패시
		{
			path = "/result/noMemberResult.jsp";
		}
		
		HttpUtil.forward(request, response, path);
	}

}
