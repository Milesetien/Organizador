<%-- 
    Document   : NuevoUsuario
    Created on : 06/05/2021, 14:07:18
    Author     : Myself
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">
	<style type="text/css">
		.container {
			margin-top: 40px;
		}
		.btn-primary {
			width: 100%;
		}
	</style>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/2.14.1/moment.min.js"></script> 
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

	<script type='text/javascript'>
		$( document ).ready(function() {
			$('#datetimepicker1').datetimepicker(
                                {
                                     defaultDate: new Date(2020, 0, 1),
                                });
		});
	</script>
    </head>
    <body>
<form method="POST" action="NuevoUsuario">
<div class="container">
   <div class="panel panel-primary">
      <div class="panel-heading">Registra tu nuevo usuario</div>
      <div class="panel-body">
         <div class="row">
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Nombre</label>
                  <input type="text" class="form-control" name="txtNombre" id="txtNombre">
               </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Apellido</label>
                  <input type="text" class="form-control" name="txtApellido" id="txtApellido">
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Dni</label>
                  <input type="text" class="form-control" name="txtDni" id="txtDni">
               </div>
            </div>
            <div class='col-md-6'>
               <div class="form-group">
                  <label class="control-label">Fecha de Nacimiento</label>
                  <div class='input-group date'  id='datetimepicker1'>
                     <input type='text'name='calendario' class="form-control" />
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar"></span>
                     </span>
                  </div>
               </div>
            </div>
         </div>
          
         <div class="row">
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">E-mail</label>
                  <input type="text" class="form-control" name="txtEmail" id="txtE-mail">
               </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Telefono</label>
                  <input type="text" class="form-control" name="txtTelefono" id="txtTelefono">
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Nombre de usuario</label>
                  <input type="text" class="form-control" name="txtNombreDeUsuario" id="txtNombreDeUsuario">
               </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Contraseña</label>
                  <input type="text" class="form-control" name="txtClave" id="txtClave">
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Sexo</label>
                                    <div class="form-check">
                                    <input class="form-check-input" type="radio" name="rbtSexo" id="inputSexo1" value=true checked>
                                        <label class="form-check-label" for="gridRadios1">
                                            Masculino
                                        </label>
                                    </div>
                                    <div class="form-check">
                                    <input class="form-check-input" type="radio" name="rbtSexo" id="inputSexo2" value=false>
                                        <label class="form-check-label" for="gridRadios2">
                                            Femenino
                                        </label>
                                    </div> 
               </div>
            </div>
            <div class="col-md-6">
               <div class="form-group">
                  <label class="control-label">Domicilio</label>
                  <input type="text" class="form-control" name="txtDomicilio" id="txtDomicilio">
               </div>
            </div>
         </div>
          
         <input type="submit" class="btn btn-primary" value="Listo">
      </div>
   </div>
</div>

</form>

    </body>
</html>
