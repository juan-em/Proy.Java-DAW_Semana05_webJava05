<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebJava05/Controlador2">
                <div style="width: 250px; text-align: center; margin: 50px auto;">
                <h1>Operaciones Matemáticas</h1>
                <div class="form-group">
                    
                    <input name="num1" class="form-control" ><br>
                    <input name="num2" class="form-control" ><br>
                    <label for="exampleFormControlSelect1">Seleccione la operación a realizar</label>
                    <select name="operacion" class="form-control" id="exampleFormControlSelect1">
                        <option>Suma</option>
                        <option>Resta</option>
                        <option>Producto</option>
                        <option>División</option>
                    </select>
                </div>
                <br><button type="submit" class="btn btn-primary">Calcular</button>
            </div>
            </form>
        </div>
    </body>

</html>
