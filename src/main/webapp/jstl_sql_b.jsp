<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
                           user="root"
                           password="123456"/>

        <sql:query dataSource="${xcon}" var="result">
            select * from t_usuarios where codigo=?;
            <sql:param value="${codigo}" />
        </sql:query>

        <div class="container mt-5">
            <div style="width: 450px; margin: 5em auto;">
                <form action="/WebJava05/guardar">

                    <c:forEach var="row" items="${result.rows}">
                        <div class="form-group m-4">
                            <p >CODIGO</p>
                            <input type="number" class="form-control" value="${row.codigo}" name="codigo"/>
                        </div>
                        <div class="form-group m-4">
                            <p >NOMBRE</p>
                            <input type="text" class="form-control" value="${row.nombre}" name="nombre"/>
                        </div>
                        <div class="form-group m-4">
                            <p >CLAVE</p>
                            <input type="text" class="form-control" value="${row.clave}" name="clave"/>
                        </div>
                        <div class="form-group m-4">
                            <p >ESTADO</p>
                            <select name="estado" class="form-control">
                                <option value="A">A</option>
                                <option value="X">X</option>
                            </select>
                        </div>
                    </c:forEach>
                    <div class="form-group m-4">
                        <button type="submit" class="btn btn-primary">Guardar</button>
                        <a href="jstl_sql_a.jsp" class="btn btn-danger">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
