<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");    
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection con = null;
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root", "root");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    Statement st = null;
    try {
        st = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    int i = 0;
    try {
        i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','"
        + lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
       
    } else {
        response.sendRedirect("index.jsp");
    }
%>