<!DOCTYPE html>
<html>
<head>
    <title>Logged in!</title>
</head>
<body>
    <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
    %>
            <div class="myclass">
                You are not logged in<br/>
                <a href="index.jsp">Please Login</a>
            </div>
    <%} else {
    %>
            <div class="myclass">Logged in!</div>
            <div class="nextclass">
                Welcome <%=session.getAttribute("userid")%>
                <a href='logout.jsp'>Log out</a>
            </div>
    <%
        }
    %>
</body>
</html>
