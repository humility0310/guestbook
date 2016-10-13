<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%@page import="com.bit2016.guestbook.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");
	String password = request.getParameter("password");

	GuestBookDao dao = new GuestBookDao();
	
	GuestBookVo vo = new GuestBookVo();
	vo.setNo( Long.parseLong(no));
	vo.setPassword(password);
	dao.delete(vo);

	//리다이렉트
	response.sendRedirect("/guestbook/index.jsp");
%>