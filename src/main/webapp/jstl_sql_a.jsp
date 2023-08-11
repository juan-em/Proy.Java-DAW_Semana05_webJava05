<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    
        <sql:setDataSource var="xcon" driver="com.mysql.cj.jdbc.Driver"
                           url="jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC"
                           user="root"
                           password="123456"/>
        
        <c:if test="${estado.equals('1')}">
            <sql:update dataSource="${xcon}"
                sql="delete from t_usuarios where codigo = '${codigo}'" />
        </c:if>
        <c:if test="${condicion.equals('1')}">
            <sql:update dataSource="${xcon}" var="update">
            update t_usuarios set nombre = ?, clave = ?, estado = ? where codigo = ?;
            <sql:param value="${nombre}" />
            <sql:param value="${clave}" />
            <sql:param value="${estado_g}" />
            <sql:param value="${codigo_g}" />
        </sql:update>
            
        </c:if>
        
        <sql:query dataSource="${xcon}"
                   sql="select * from t_usuarios"
                   var="result"/>

        <div style="width: 450px; text-align: center; margin: 50px auto;">
            <h1 class="display-8">Listado de Usuarios</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Clave</th>
                        <th scope="col">Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <th scope="row"><c:out value="${row.codigo}"/></th>
                            <td><c:out value="${row.nombre}"/></td>
                            <td><c:out value="${row.clave}"/></td>
                            <td><c:out value="${row.estado}"/></td>
                            <td><a class="btn btn-info" href="/WebJava05/editar?cod=${row.codigo}">editar</a></td>
                            <td><a class="btn btn-danger" href="/WebJava05/eliminar?cod=${row.codigo}">borrar</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
</html>
