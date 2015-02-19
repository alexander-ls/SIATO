<%-- 
    Document   : conexion
    Created on : Feb 18, 2015, 9:15:34 AM
    Author     : Alex Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
import="java.sql.DriverManager"


import="java.sql.ResultSet"

import="java.sql.Statement"

import="java.sql.SQLException"
%>

<%
Connection conex=null;
Statement sql=null;
try{
Class.forName("com.mysql.jdbc.Driver");
conex=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/votaciones","root","alexander05");
sql=conex.createStatement();
out.print("");
}catch(Exception e){
out.print("error en la conexion" + e);
}
%>
