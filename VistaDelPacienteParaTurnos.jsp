<%-- 
    Document   : VistaDelPacienteParaTurnos
    Created on : 12/05/2021, 18:56:39
    Author     : Myself
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.*"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>              
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista del paciente para turnos</title>

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
                                    daysOfWeekDisabled('0,6')
                                });
		});
	</script>        
    </head>
    <body>
        <form method="POST" action="NuevoTurno">
        <div class="container">
           <div class="panel panel-primary">
              <div class="panel-heading">Agenda un turno</div>
              <div class="panel-body">
                 <div class="row">
                    <div class="col-md-6">
                       <div class="form-group">
                          <label class="control-label">Profesional</label>
                                <select name="cboProfesionales">
                                    <c:forEach var="p" items="${listaProfesionales}">
                                           <option value="${p.idProfesional}" ${cboProfesionales eq p.idProfesional?'selected':''}>${p.getPersona().getNombre()}</option>
                                    </c:forEach>                 
                                </select>  
                       </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                          <label class="control-label">Financiador</label>
                                <select name="cboFinanciadores">
                                    <c:forEach var="f" items="${listaFinanciadores}">
                                           <option value="${f.idFinanciador}" ${cboFinanciadores eq f.idFinanciador?'selected':''}>${f.descripcion}</option>
                                    </c:forEach>                 
                                </select>  
                       </div>
                    </div>
                                    
                    <div class='col-md-6'>
                       <div class="form-group">
                          <label class="control-label">Fecha y hora del turno</label>
                          <div class='input-group date'  id='datetimepicker1'>
                             <input type='text'name='calendario' id= 'calendarioTurno' class="form-control" />
                             <span class="input-group-addon">
                             <span class="glyphicon glyphicon-calendar"></span>
                             </span>
                          </div>
                       </div>
                    </div>                                    
                 </div>
                                    

                 <input type="submit" class="btn btn-primary" value="Listo">
                 <br><br>
                 <input type="reset" class="form-control" name="btnLimpiar" id="btnLimpiar" value="Limpiar">
              </div>
           </div>
        </div>

        </form>
        
<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker({
            minDate:new Date()
        });
    });
</script>  

    </body>
</html>
