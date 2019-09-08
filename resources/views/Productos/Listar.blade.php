<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>General</title>
  </head>
  <body>
    <div class="container my-4">
        <h1 class="dispay-4">Productos</h1>
        <div class="form-group">
          <input type="text" class="form-control pull-right d-inline" style="width:60%" id="search" placeholder="Buscar en la tabla..">
          <!-- Button trigger modal --> 
          <i class="fas fa-plus-circle d-inline float-right text-primary" style="font-size: 3em;" data-toggle="modal" data-target="#exampleModal"></i>     
        </div>
         @if(session('mensaje'))<!--Validacion Crear-->
          <div class="alert alert-success">
              {{session('mensaje')}}
           </div>
        @endif 
        <table class="table table-striped" id="mytable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Inv</th>
                    <th scope="col">N/P</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Distri</th>
                    <th scope="col">User</th>
                    <th scope="col">ML</th>
                    <th scope="col">Linio</th>
                    <th scope="col">Exito</th>
                  </tr>
                </thead>
                <tbody>
                @foreach ($productos as $item)
                  <tr>
                  <th scope="row"> {{$item->id}}</th>
                  <td>{{$item->inventarioProd}}</td>
                  <td>{{$item->npProd}}</td>
                  <td><a href="{{route('productos.detalle',$item)}}"> {{$item->nombreProd}}</a></td>
                  <td class="bg-success">{{$item->precioDistProd}}</td>
                  <td class="bg-primary">{{$item->precioUsrProd}}</td>
                  <td style="background-color:yellow;">{{$item->precioMlProd}}</td>
                  <td class="bg-warning">{{$item->precioLnProd}}</td>
                  <td class="bg-danger">{{$item->precioExProd}}</td>
                  <td><a href="{{route('productos.editar',$item)}}"><i class="fas fa-pencil-alt"></i> </a>  
                  </td>
                </tr>
                @endforeach
              </tbody>
      </table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Crear Productos</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div><!--End Modal Header-->
        <form method="POST" action="{{ route('productos.crear') }}">
          @csrf<!--Proteccion formulario Token de seguridad evita 419-->
          @error('nombreProd')
           <div class="m-2 alert alert-danger">
              El campo Nombre es Obligatorio
           </div>
          @endError
          <div class="modal-body">
            <!--name debe ser igual al campo BD-->
            <input type="text" name="nombreProd" placeholder="Nombre" class="form-control mb-2"/>
            <input type="text" name="npProd" placeholder="N/P" class="form-control mb-2"/>
            <input type="text" name="descripcionProd" value="{{old('descripcionProd')}}"placeholder="Descripcion" class="form-control mb-2"/>
            <input type="text" name="mejorasProd" placeholder="Mejoras" class="form-control mb-2"/>
            <input type="text" name="precioDistProd" placeholder="pecioDist" class="form-control mb-2"/>
            <input type="texta" name="precioUsrProd" placeholder="precioUsr" class="form-control mb-2"/>
            <input type="text" name="precioMlProd" placeholder="precioMl" class="form-control mb-2"/>
            <input type="text" name="precioLnProd" placeholder="precioLn" class="form-control mb-2"/>
            <input type="text" name="precioExProd" placeholder="precioEx" class="form-control mb-2"/>
            <input type="text" name="inventarioProd" placeholder="inventarioProd" class="form-control mb-2"/>
            <input type="text" name="precioEx" placeholder="precioEx" class="form-control mb-2"/>
            <input type="text" name="tipoProducto_id" placeholder="tipoProducto_id" class="form-control mb-2"/>
            <input type="text" name="marca_id" placeholder="marca_id" class="form-control mb-2"/>
          </div><!--End Modal Body-->
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>
          </div>
       </form><!--End form Body-->
    </div>
  </div>
</div><!--End Modal-->
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script>//Buscador
      // Write on keyup event of keyword input element
      $(document).ready(function(){
      $("#search").keyup(function(){
      _this = this;
      // Show only matching TR, hide rest of them
      $.each($("#mytable tbody tr"), function() {
      if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
      $(this).hide();
      else
      $(this).show();
      });
      });
     });
     </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>