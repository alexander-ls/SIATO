<%-- 
    Document   : formularioCursoNuevo
    Created on : Feb 18, 2015, 9:13:15 AM
    Author     : Alex Lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Formulario.css" media="screen" />
        <title>JSP Page</title>
    </head>
    <body>
 <h1 style="text-align:center;">curso Nuevo</h1> 
 
             <%
    String nombre = request.getParameter("Nombre"); 
    String valor= request.getParameter("valor"); 
    String correo = request.getParameter("correo"); 
    String jornada = request.getParameter("jornada"); 
    String curso= request.getParameter("curso"); 
    String sede = request.getParameter("sede"); 
    
    
    if (nombre!= null && valor!=null && correo!=null && jornada !=null && curso!=null && sede!=null) {
            
        
    String qry="insert into curso_nuevo(Nombre,Valor_Pagado,correo,jornada,Nombre_Curso,sede)values('"+nombre+"','"+valor+"','"+correo+"','"+jornada+"','"+curso+"','"+sede+"');";
    sql.executeUpdate(qry);
    out.print("insertado");
    }
        %>
        
<FORM name="insert" METHOD=post action="FormularioCursoNuevo.jsp">
<table>
<tr>
<td>Nombre</td>
<td>Valor Que Pagaria</td>
</tr>
<tr>
<td><input type="text" name="Nombre"><br></td>
<td><input type="text" name="valor"><br></td>
</tr>
<td>Correo</td>
<td>Jornada De Estudio</td>
</tr>
<tr>
<td><input type="text" name="correo"><br></td>
<td><input type="text" name="jornada"><br></td>
</tr>
<td>Nombre Curso</td>
<td>Sede Para El Curso</td>
</tr>
<tr>
<td><input type="text" name="curso"><br></td>
<td>
   <select name="sede">
   <option value="tagaste">Tagaste</option> 
   <option value="suba">Suba</option> 
</select>
</td>
</tr>
</table>
<INPUT class="Boton" TYPE=SUBMIT VALUE="Guardar"><BR>

</form>
    </body>
</html>
