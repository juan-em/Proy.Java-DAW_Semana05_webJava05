<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="container">
            <h1>Tabla de Multiplicar</h1>
            <c:set var="tabla" value="5" />
            Tabla del <c:out value="${tabla}"/>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Operación</th>
                        <th scope="col">Resultado</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="contador" begin="1" end="10">
                        <tr scope='row'><th> <c:out value="${contador}"/> </th>
                            <td> <c:out value="${tabla} * ${contador}"/> </td>
                            <c:set var="producto" value="${contador*tabla}"/>
                            <td> <c:out value="${producto}"/> </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>

</html>
