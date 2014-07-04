<%-- 
    Document   : list.jsp
    Created on : Julio de 2014
    Author     : Rafa
--%>
<%@page import="net.daw.helper.Conexion"%>
<%@page import="net.daw.dao.DocumentoDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%
    DocumentoDao oDocumentoDao_Mysql = new DocumentoDao();
    ArrayList<String> alColumnsNames = (ArrayList<String>) oDocumentoDao_Mysql.getColumnsNames();
    Iterator<String> oIterador = alColumnsNames.listIterator();
    String strNombreMantenimiento = "documento";
%>
<div id="<%=strNombreMantenimiento%>_list">
    <div class="row">
        <div class="col-md-5">       
            <h2>Listado de <%=strNombreMantenimiento%></h2>
            <button class="btn" id="crear">Crear <%=strNombreMantenimiento%></button>
        </div>
        <div class="col-md-7">
            <div class="text-right">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Filtro</div>
                    <div class="panel-body">
                        <form class="navbar-form navbar-right" role="form" action="Controller" method="post" id="empresaForm">
                            <select style="width:160px;" id="selectFilter" class="form-control" name="filter" width="80" style="width: 100px">
                                <%
                                    while (oIterador.hasNext()) {
                                        String strNombreColumna = oIterador.next();
                                        String strNombreColumnaPretty = strNombreColumna.charAt(0) + strNombreColumna.substring(1);
                                %>
                                <option value="<%=strNombreColumna%>"><%=strNombreColumnaPretty%></option>
                                <% }%>
                            </select>
                            <select style="width:200px;" id="selectFilteroperator" class="form-control" name="filteroperator" width="80" style="width: 100px">
                                <option value="like">contiene</option>
                                <option value="notlike">no contiene</option>
                                <option value="equals">es igual a</option>
                                <option value="notequalto">es distinto de</option>
                                <option value="less">es menor que</option>
                                <option value="lessorequal">es menor o igual que</option>
                                <option value="greater">es mayor que</option>
                                <option value="greaterorequal">es mayor o igual que</option> 
                            </select>
                            <input style="width:140px;" id="inputFiltervalue" class="form-control" name="filtervalue" type="text" size="20" maxlength="50" value=""  width="100" style="width: 90px" placeholder="Valor"/>
                            <input type="submit" class="btn" id="btnFiltrar" name="btnFiltrar" value="Filtrar " />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5"> 
            <div class="text-right">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Informaci�n de estado</div>
                    <div class="panel-body">
                        <div class="text-left">
                            <div id="order"></div>
                            <div id="filter"></div>            
                            <div id="registers"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div> 
        <div class="col-md-4">     

            <div class="text-right">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Paginaci�n</div>
                    <div class="panel-body">
                        <div class="text-center">
                            <div id="pagination"></div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <div class="col-md-3">  
            <div class="text-right">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Registros por p�gina</div>
                    <div class="panel-body">
                        <div class="text-center">
                            <div id="rpp1"></div>
                        </div>
                    </div>

                </div>
            </div> 
        </div> 


    </div> 


    <br>
    <div id="datos"></div>
    <div id="datos2"></div>

    <!-- Modales -->

    <div id="modal01" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header"></div>
                <div class="modal-body"></div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    <div id="modal02" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header"></div>
                <div class="modal-body"></div>
                <div class="modal-footer"></div>
            </div>                
        </div>
    </div>
</div>
