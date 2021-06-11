package delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivery.service.Service;

public class IdCheckController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		boolean result = Service.getInstance().idCheck(id);
		String msg=null;
		if(result)
			msg="true"; //중복
		else
			msg="false"; //중복아님
		request.setAttribute("msg", msg);
		request.setAttribute("id", id);
		
		HttpUtil.forward(request, response, "/idCheckForm.jsp");
	}

}
