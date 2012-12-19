
<%
    if (request.getParameter("logoff") != null) {
        session.invalidate();
        response.sendRedirect("index.jsp");
        return;
    }
%>

<html>
<body>
<h2>Hello from Waffle Test!</h2>

remote user <b><%= request.getRemoteUser() %></b> in session <b><%= session.getId() %></b>.<br>

<br><br>

Clicking <a href='<%= response.encodeURL("index.jsp?logoff=true") %>'>logoff</a>
should cause automatic re-logon with Waffle and a new session ID.

</body>
</html>