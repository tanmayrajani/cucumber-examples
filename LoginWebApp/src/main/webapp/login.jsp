<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("uname");    
    String password = request.getParameter("password");
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection con = null;
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql",
                "root", "root");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    Statement st = null;
    try {
        st = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    try {
        ResultSet rs;
        rs = st.executeQuery("select * from USER where userName='" + userName + "' and password='" +password + "'");
        if (rs.next()) {
            session.setAttribute("userid", userName);
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("index.jsp?reason=invalid+login");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>