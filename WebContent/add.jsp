<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%@page import="com.bit2016.guestbook.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");

	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);

	GuestBookDao dao = new GuestBookDao();
	dao.insert(vo);

	//리다이렉트
	response.sendRedirect("/guestbook/index.jsp");
%>