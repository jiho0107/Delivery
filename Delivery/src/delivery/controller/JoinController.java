package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class JoinController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id"); //회원id
		String nick = request.getParameter("nick"); //닉네임
		String pwd = request.getParameter("pwd"); //비밀번호
		String name = request.getParameter("name"); //이름
		String addr = request.getParameter("addr"); //주소
		String tel = request.getParameter("tel"); //전화번호
		String email = request.getParameter("email"); //이메일
		String birth = request.getParameter("birth"); //생일
		Service.getInstance().join(id, pwd, nick, name, addr, tel, email, birth);
		
		HttpUtil.forward(request, response, "/result/joinResult.jsp");
	}

}
