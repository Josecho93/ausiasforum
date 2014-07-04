<%-- 
/* 
 * 
 * Created on: June, 2014
 * Created by: Rafel Aznar (rafaaznar{at}gmail.com)
 * 
 * Copyright (C) 
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 */
--%>
<%@page import="net.daw.bean.UsuarioBean"%>
<%UsuarioBean user = (UsuarioBean) request.getSession().getAttribute("usuarioBean");%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Ajax Yield</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/animate.css">
    </head>
    <body>
        <!--[if lt IE 7]>
        <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="menuSuperior">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="jsp">ausi�sContent</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <%if (user != null) {%>
                    <jsp:include page="jsp/menuSuperior.jsp" /> 
                    <% }%>
                    <ul class="nav navbar-nav navbar-right">
                        <jsp:include page="jsp/usuario/infologin.jsp" />
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container -->
        </nav>


        <div class="container">
            <div class="row">
                <% if (user != null) { %>
                <div class="col-md-2" id="menuLateral">
                    <jsp:include page="jsp/menuLateral.jsp" />
                </div>
                <% } %>
                <%
                    if (user != null) {
                        out.print("<div class=\"col-md-10\">");
                        out.print("<div id=\"indexContenido\"></div>");
                    } else {
                        out.print("<div class=\"col-md-12\">");
                    }
                %>
                <div id="indexContenidoJsp">
                    <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                </div>
                <%
                    out.print("</div>");
                %>    
                <div class="row">
                    <div class="col-md-12" id="contenidoParseado"></div>   
                </div>
                <div class="row">
                    <div class="col-md-12"><hr><footer><p>&copy; Rafael Aznar (2013)</p></footer></div>   
                </div>
            </div>
        </div>                    

        <!-- carga de javascript   -->

        <script src="js/vendor/jquery-1.11.1.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="js/vendor/jquery-ui.js"></script>
        <script src="./js/vendor/path.min.js"></script> 
        <script src="./js/vendor/jquery.validate.min.js"></script>
        <script src="./js/vendor/creole-parser.js"></script>

        <!--
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        -->


   
  
        
        <script src="js/util.js" charset="UTF-8"></script>
        <script src="js/model.js" charset="UTF-8"></script>
        <script src="js/view.js" charset="UTF-8"></script>
        <script src="js/routes.js" charset="UTF-8"></script>
        
        <script src="js/control/documento.js" charset="UTF-8"></script> 
        


        <script src="js/control/alumno.js" charset="UTF-8"></script>
        <script src="js/control/usuario.js" charset="UTF-8"></script>
        <script src="js/control/lenguaje.js" charset="UTF-8"></script>

        <script src="js/control/entrada.js" charset="UTF-8"></script>
        <script src="js/control/actividad.js" charset="UTF-8"></script>
        <script src="js/control/empresa.js" charset="UTF-8"></script>
        <script src="js/control/entrada.js" charset="UTF-8"></script>
        <script src="js/control/hilo.js" charset="UTF-8"></script>
        <script src="js/control/tipodocumento.js" charset="UTF-8"></script>
        <script src="js/control/votodocumento.js" charset="UTF-8"></script>
        <script src="js/control/estado.js" charset="UTF-8"></script>
        <script src="js/control/comentario.js" charset="UTF-8"></script>
        <script src="js/control/actividadoffline.js" charset="UTF-8"></script>
        <script src="js/control/entrega.js" charset="UTF-8"></script>    
        <script src="js/control/metadocumento.js" charset="UTF-8"></script>
        <script src="js/control/repositorio.js" charset="UTF-8"></script>
        <script src="js/control/opcion.js" charset="UTF-8"></script>    
        <script src="js/control/cuestionario.js" charset="UTF-8"></script>
        <script src="js/control/pregunta.js" charset="UTF-8"></script>
        <script src="js/control/follower.js" charset="UTF-8"></script>
        <script src="js/control/incidencias.js" charset="UTF-8"></script>
        <script src="js/control/requerimiento.js" charset="UTF-8"></script>
        <script src="js/control/profesor.js" charset="UTF-8"></script>
        <script src="js/control/backlog.js" charset="UTF-8"></script>

        <script>





            $(document).ready(function() {
              
                //$('#indexContenidoJsp').addClass('animated slideInDown');
                //$('#menuSuperior').addClass('animated slideInLeft');
                //$('#menuLateral').addClass('animated slideInRight');
                inicializacion();
                do_routes('<%=request.getContextPath()%>');

            });

        </script>
    </body>
</html>
