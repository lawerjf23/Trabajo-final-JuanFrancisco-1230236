<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu</title>
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
     <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="Scripts/jquery.backstretch.min.js"></script>
    <link rel="stylesheet" href="../css/estilos.css"/>   
    <script type="text/javascript">
        $(function () {
            var imagenes = [
                "../imagenes/bgcolor1.jpg",
                 "../imagenes/bgcolor2.jpg",
                 "../imagenes/bgcolor3.jpg",
                 "../imagenes/bgcolor4.jpg",
                 "../imagenes/bgcolor5.jpg",
                 "../imagenes/bgcolor6.jpg",
                 "../imagenes/bgcolor7.jpg"
            ];

            // Precarga de todas la imagenes
            $(imagenes).each(function () {
                $("<img/>")[0].src = this;
            });

            // Almacena cual imagen esta activa
            var index = 0;

            // Aplicamos la primera imagen del arreglo 
            // y lo configuramos para que realice un efecto de transición (fadeIn) 
            // de 500 milisegundos entre cada cambio imagen
            $.backstretch(imagenes[index], { speed: 500 });

            // setInterval es una funcion que se repite determinado tiempo
            // en este caso cada 5000 milisegundos incrementando el index
            // y aplicando una nueva imagen
            setInterval(function () {
                index = (index >= imagenes.length - 1) ? 0 : index + 1;
                $.backstretch(imagenes[index]);
            }, 2500);
        });
    </script>
</head>
<body>
    <section id="pagina"> 
        
         <section id="contenido">
             
         </section>
         <section id="encabezado">
             <br /><br /><br /><br /><br /><br /><br /><br />
            <section id="navegacion">
			<ul id="menu">
                <li>
				    <a href="#" class="menudesplieg">Inicio</a>
          	</li>
          	<li>
             <a href="#" class="menudesplieg">Catalogos</a>
                <div>
                    <h5>Catalogos</h5>
                       <p class="desplieg">
                          <a href="#">Estados............</a></p>
                       <p class="desplieg">
                          <a href="#">Ciudades...........</a></p>
                       <p class="desplieg">
                          <a href="#">Departamentos...</a></p>
                       <p class="desplieg">
                          <a href="#">Usuarios...........</a></p>
                </div>
          </li>
          <li>
             <a href="#" class="menudesplieg">Tickets</a>
                <div>
                    <h5>Tickets</h5>
                         <p class="desplieg">
                          <a href="#">Nuevo Ticket       </a>
                       </p>
               </div>
          </li>
          <li>
             <a href="#" class="menudesplieg">Reportes</a>
                <div>
                   <h5>Reportes</h5>
                     <p class="desplieg">
                        <a href="http://www.google.com">Tickets por periodo</a>
                     </p>
                </div>
         </li>
         <li>
            <a href="#" class="menudesplieg">Acerca de...</a>
              <div>
                 <h5>Acerca de..</h5>
                   <p>Este es un sistema creado con la finalidad de llevar un control de soporte tecnico controlado por tickets de servicio con la finalidad de resolver los problemas 
                    que nos aquejan en la empresa.
                    </p>
                   <p class="desplieg">
                      <a href="http://www.google.com">Leer Mas...</a>
                   </p>
               </div>
         </li>
			</ul> 
        </section>
            
        </section>
        <section id="pie">
             <p>Todos los derechos reservados &copy; 2014</p>
           
        </section> 
    </section>
       
   
     <form id="form1" runat="server">
     </form>
</body>
</html>
