<%@page import="java.time.LocalDateTime"%>
<!-- declaration tag -->
<%! 
	public String generate(String user){
		LocalDateTime idt = LocalDateTime.now();
		int hours = idt.getHour();
		
		if(hours < 12)
			return "Good Morning " + user;
		else if(hours < 16)
			return "Good Morning " + user;
		else if (hours < 20)
			return "Good Morning " + user;
		else
			return "Good Night " + user;
}
%>

<h1 style="text-align: center; color: red;"> Welcome to JSP -- Eclipse IDE</h1>
<b style="text-align: center;">Date and Time:: </b> <%= new java.util.Date()%> <!-- expression tag -->

<!-- scriptlet -->
<%
	String name = request.getParameter("uname");
%>

<br> <b style="text-align: center;">Wish Message is:: <%= generate(name) %></b>

<!-- .class file in :
D:\tst\JSP\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\Jsp-1\org\apache\jsp\WEB_002dINF\jsp -->