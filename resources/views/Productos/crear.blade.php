<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Crear Producto</title>
  </head>
  <body>
    <div class="container my-4">
                <h1 class="dispay-4">Crear Producto</h1>  
        <form method="POST" action="{{ route('productos.crear') }}">
                @csrf<!--Proteccion formulario Token de seguridad evita 419-->
                <!--name debe ser igual al campo BD-->
                <input type="text" name="nombreProd" placeholder="Nombre" class="form-control mb-2"/>
                <input type="text" name="npProd" placeholder="N/P" class="form-control mb-2"/>
                <input type="text" name="descripcionProd" placeholder="Descripcion" class="form-control mb-2"/>
                <input type="text" name="mejorasProd" placeholder="Mejoras" class="form-control mb-2"/>
                <input type="text" name="precioDistProd" placeholder="pecioDist" class="form-control mb-2"/>
                <input type="text" name="precioUsrProd" placeholder="precioUsr" class="form-control mb-2"/>
                <input type="text" name="precioMlProd" placeholder="precioMl" class="form-control mb-2"/>
                <input type="text" name="precioLnProd" placeholder="precioLn" class="form-control mb-2"/>
                <input type="text" name="precioExProd" placeholder="precioEx" class="form-control mb-2"/>
                <input type="text" name="inventarioProd" placeholder="inventarioProd" class="form-control mb-2"/>
                <input type="text" name="precioEx" placeholder="precioEx" class="form-control mb-2"/>
                <input type="text" name="tipoProducto_id" placeholder="tipoProducto_id" class="form-control mb-2"/>
                <input type="text" name="marca_id" placeholder="marca_id" class="form-control mb-2"/>
                
                <button class="btn btn-primary btn-block" type="submit">Agregar</button>
           </form>
              
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>