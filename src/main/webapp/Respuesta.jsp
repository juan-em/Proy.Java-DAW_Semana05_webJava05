
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
        <div style="width: 450px; text-align: center; margin: 50px auto;">

            <c:choose>
                <c:when test='${op.equals("Suma")}'>
                    <c:set var="rpta" value="${num1+num2}"/>
                </c:when>
                <c:when test='${op.equals("Resta")}'>
                    <c:set var="rpta" value="${num1-num2}"/>
                </c:when>
                <c:when test='${op.equals("Producto")}'>
                    <c:set var="rpta" value="${num1*num2}"/>
                </c:when>
                <c:when test='${op.equals("División")}'>
                    <c:set var="rpta" value="${num1/num2}"/>
                </c:when>
           
            </c:choose>

            <h1>Respuesta</h1><br>
            La operación es <c:out value="${op}"/><br>
            - Primer número: <c:out value="${num1}"/><br>
            - Segundo número: <c:out value="${num2}"/><br><br>
            Resultado: <c:out value="${rpta}"/>
        </div>
    </body>
</html>
