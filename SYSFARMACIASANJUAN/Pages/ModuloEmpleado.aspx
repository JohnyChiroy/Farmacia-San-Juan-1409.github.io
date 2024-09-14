<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloEmpleado.aspx.cs" Inherits="SYSFARMACIASANJUAN.Pages.ModuloEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Resources/css/estilo.css" rel="stylesheet" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <script src="~/Scripts/jquery-3.5.1.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
    <title>Empleado</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>


</head>
<body>
    <main class="mainModuloEmpleado">
        <div class="divModuloEmpleado">
            <section class="opcionesModuloEmpleado">
                <div class="opcionFila1ModuloEmpleado">
                    <article class="articleOpcionModuloEmpleado">
                        <button class="botonRegistrarEmpleado" onclick="abrirModalAgregarEmpleado()">
                        <img src="../Resources/img/agregar-empleado.png" alt="Registrar Empleado" />
                        </button>
                        <h2>Nuevo Empleado</h2>
                    </article>
                    <article class="articleOpcionModuloEmpleado">
                        <button class="botonModificarEmpleado" id="botonModificarEmpleadoID" runat="server" onclick="abrirModalModificarEmpleado()">
                        <img src="../Resources/img/editar-empleado.png" alt="Registrar Empleado" />
                        </button>
                        <h2>Modificar Empleado</h2>
                    </article>
                    <article class="articleOpcionModuloEmpleado">
                        <button class="botonListaEmpleados">
                        <img src="../Resources/img/lista_empleados.png" alt="Registrar Empleado" />
                        </button>
                        <h2>Listar Empleados</h2>
                    </article>
                </div>
                <hr/>
                <div class="opcionFila2ModuloEmpleado">
                    <article class="articleOpcionModuloEmpleado">
                        <button class="botonCrearUsuario">
                        <img src="../Resources/img/nuevo_usuario.png" alt="Registrar Empleado" />
                        </button>
                        <h2>Crear Usuario</h2>
                    </article>
                    <article class="articleOpcionModuloEmpleado">
                        <button class="botonModificarUsuario">
                        <img src="../Resources/img/modificar_usuario.png" alt="Registrar Empleado" />
                        </button>
                        <h2>Modificar Usuario</h2>
                    </article>
                    <article class="articleOpcionModuloEmpleado">
                        <button class="botonListaUsuarios">
                        <img src="../Resources/img/lista_usuarios.png" alt="Registrar Empleado" />
                        </button>
                        <h2>Listar Usuarios</h2>
                    </article>
                </div>
            </section>
        </div>
    </main>

    <form id="form1" runat="server">

        <%--modal agregar empleados--%>
        <div id="modalRegistrarEmpleado" clientidmode="Static" class="modal" style="display:none;">
            <div class="modal-content">
                <span class="close">&times;</span>
                <h2>Registrar Nuevo Empleado</h2>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblPrimerNombreEmpleado" runat="server" Text="Primer Nombre*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbPrimerNombreEmpleado" runat="server" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblSegundoNombreEmpleado" runat="server" Text="Segundo Nombre"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbSegundoNombreEmpleado" runat="server"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblTercerNombreEmpleado" runat="server" Text="Tercer Nombre"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbTercerNombreEmpleado" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblPrimerApellidoEmpleado" runat="server" Text="Primer Apellido*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbPrimerApellidoEmpleado" runat="server" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblSegundoApellidoEmpleado" runat="server" Text="Segundo Apellido"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbSegundoApellidoEmpleado" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblApellidoCasadaEmpleado" runat="server" Text="Apellido de Casada"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbApellidoCasadaEmpleado" runat="server"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblCUIEmpleado" runat="server" Text="CUI*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbCUIEmpleado" runat="server" TextMode="Number" required="true" maxlength="13"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblNITEmpleado" runat="server" Text="NIT"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbNITEmpleado" runat="server" TextMode="Number" required="true" maxlength="10"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblFechaNacimientoEmpleado" runat="server" Text="Fecha de Nacimiento*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbFechaNacimientoEmpleado" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblFechaIngresoEmpleado" runat="server" Text="Fecha de Ingreso*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbFechaIngresoEmpleado" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblDireccionEmpleado" runat="server" Text="Dirección"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbDireccionEmpleado" runat="server" TextMode="SingleLine" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <asp:Label ID="lblTelefonoEmpleado" runat="server" Text="Teléfono"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbTelefonoEmpleado" runat="server" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <asp:Label ID="lblMovilEmpleado" runat="server" Text="Móvil"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbMovilEmpleado" runat="server" TextMode="Phone" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblGeneroEmpleado" runat="server" Text="Género*"></asp:Label>
                        <asp:DropDownList ID="ddlGeneroEmpleado" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Seleccione" Value="" />
                            <asp:ListItem Text="Masculino" Value="M" />
                            <asp:ListItem Text="Femenino" Value="F" />
                            <asp:ListItem Text="Otro" Value="O" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblEstadoEmpleado" runat="server" Text="Estado*"></asp:Label>
                        <asp:DropDownList ID="ddlEstadoEmpleado" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Seleccione" Value="" />
                            <asp:ListItem Text="Activo" Value="1" />
                            <asp:ListItem Text="Inactivo" Value="2" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblPuestoEmpleado" runat="server" Text="Puesto*"></asp:Label>
                        <asp:DropDownList class="form-control" ID="ddlPuestoEmpleado" runat="server" required="true">

                        </asp:DropDownList>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <asp:Label ID="lblFotoEmpleado" runat="server" Text="Foto"></asp:Label>
                        <asp:FileUpload ID="fuFotoEmpleado" runat="server" CssClass="form-control-file"/>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-12 text-right">
                        <asp:Button ID="btnGuardarEmpleado" runat="server" Text="Guardar Registro" CssClass="btn btn-primary" OnClientClick="agregarEmpleado();"/>
                    </div>
                </div>
            </div>
        </div>

        <!--Modal listar y modificar empleado-->
        <div id="modalModificarEmpleado" clientidmode="Static" class="modal" style="display:none;">
            <div class="modal-content-modificarEmpleado">
                <span class="closeModificarEmpleado">&times;</span>
                <h2 style="text-align:center;">Modificar Empleado</h2>
                <%--<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--%>
                <%--<button class="btn btn-outline-success" type="submit">Search</button>--%>
                <div class="contenedorBuscarEmpleadoID" runat="server">
                    <asp:TextBox class="form-control me-2" placeholder="Buscar empleado por ID" aria-label="Search" id="tbBuscarEmpleadoID" runat="server"></asp:TextBox>
<%--                    <asp:Button class="btn btn-outline-success" id="btnBuscarEmpleadoID" runat="server" Text="Buscar"/>--%>
                </div>
                <div id="contenedor-tabla">
                    <%--<asp:Table ID="empleadosTable" runat="server" CssClass="table table-striped">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>Código</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Nombre Completo</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Cui</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Nit</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Fecha Nacimiento</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Fecha Ingreso</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Dirección</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Tel. Casa</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Num. Celular</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Género</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Estado</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Puesto</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Acción</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>--%>
                </div>
            </div>
        </div>

        <%--modal modificar empleado--%>
        <div id="modalModificarEmpleadoM" clientidmode="Static" class="modal" style="display:none;">
            <div class="modal-content-ModificarEmpleadoM">
                <span class="close-ModificarEmpleadoM">&times;</span>
                <h2>Modificar Empleado</h2>
                <div class="fotoEmpleadoModificar">
                    <asp:Image ID="ImgEmpleadoModificara" runat="server" />
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblIdEmpleadoModificar" runat="server" Text="Id Empleado"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbIdEmpleadoModificar" runat="server" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblPrimerNombreEmpleadoModificar" runat="server" Text="Primer Nombre*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbPrimerNombreEmpleadoModificar" runat="server" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblSegundoNombreEmpleadoModificar" runat="server" Text="Segundo Nombre"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbSegundoNombreEmpleadoModificar" runat="server"></asp:TextBox>
                    </div>
                </div>
    
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblTercerNombreEmpleadoModificar" runat="server" Text="Tercer Nombre"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbTercerNombreEmpleadoModificar" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblPrimerApellidoEmpleadoModificar" runat="server" Text="Primer Apellido*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbPrimerApellidoEmpleadoModificar" runat="server" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblSegundoApellidoEmpleadoModificar" runat="server" Text="Segundo Apellido"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbSegundoApellidoEmpleadoModificar" runat="server"></asp:TextBox>
                    </div>
                </div>
    
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblApellidoCasadaEmpleadoModificar" runat="server" Text="Apellido de Casada"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbApellidoCasadaEmpleadoModificar" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblCUIEmpleadoModificar" runat="server" Text="CUI*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbCUIEmpleadoModificar" runat="server" TextMode="Number" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblNITEmpleadoModificar" runat="server" Text="NIT"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbNITEmpleadoModificar" runat="server" TextMode="Number" required="true"></asp:TextBox>
                    </div>
                </div>
    
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblFechaNacimientoEmpleadoModificar" runat="server" Text="Fecha de Nacimiento*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbFechaNacimientoEmpleadoModificar" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblFechaIngresoEmpleadoModificar" runat="server" Text="Fecha de Ingreso*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbFechaIngresoEmpleadoModificar" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblDireccionEmpleadoModificar" runat="server" Text="Dirección"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbDireccionEmpleadoModificar" runat="server" TextMode="SingleLine" required="true"></asp:TextBox>
                    </div>
                </div>
    
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblTelefonoEmpleadoModificar" runat="server" Text="Teléfono"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbTelefonoEmpleadoModificar" runat="server" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblMovilEmpleadoModificar" runat="server" Text="Móvil"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbMovilEmpleadoModificar" runat="server" TextMode="Phone" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblGeneroEmpleadoModificar" runat="server" Text="Género*"></asp:Label>
                        <asp:DropDownList ID="ddlGeneroEmpleadoModificar" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Seleccione" Value="" />
                            <asp:ListItem Text="Masculino" Value="M" />
                            <asp:ListItem Text="Femenino" Value="F" />
                            <asp:ListItem Text="Otro" Value="O" />
                        </asp:DropDownList>
                    </div>
                </div>
    
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblEstadoEmpleadoModificar" runat="server" Text="Estado*"></asp:Label>
                        <asp:DropDownList ID="ddlEstadoEmpleadoModificar" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Seleccione" Value="" />
                            <asp:ListItem Text="Activo" Value="1" />
                            <asp:ListItem Text="Inactivo" Value="2" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblPuestoEmpleadoModificar" runat="server" Text="Puesto*"></asp:Label>
                        <asp:DropDownList class="form-control" ID="ddlPuestoEmpleadoModificar" runat="server" required="true">

                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblFotoEmpleadoModificar" runat="server" Text="Foto"></asp:Label>
                        <asp:FileUpload ID="fuFotoEmpleadoModificar" runat="server" CssClass="form-control-file"/>
                    </div>
                </div>    
                <div class="form-row">
                    <div class="form-group col-md-12 text-right">
                        <asp:Button ID="btnGuardarEmpleadoModificar" runat="server" Text="Modificar Empleado" CssClass="btn btn-primary" OnClientClick="modificarEmpleadoAccion()"/>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script>

        document.addEventListener('DOMContentLoaded', function () {
            // Función genérica para abrir cualquier modal
            function abrirModal(modalId, closeClass) {
                var modal = document.getElementById(modalId);
                modal.style.display = 'flex';

                // Cerrar el modal cuando se hace clic en el botón de cerrar
                modal.querySelector(closeClass).addEventListener('click', function () {
                    modal.style.display = 'none';
                });

                // Cerrar el modal cuando se hace clic fuera del modal
                window.addEventListener('click', function (event) {
                    if (event.target == modal) {
                        modal.style.display = 'none';
                    }
                });
            }

            // Mostrar el modal de agregar empleado
            document.querySelector('.botonRegistrarEmpleado').addEventListener('click', function () {
                abrirModal('modalRegistrarEmpleado', '.close');
            });

            // Mostrar el modal de listar y modificar empleado
            document.querySelector('.botonModificarEmpleado').addEventListener('click', function () {
                abrirModal('modalModificarEmpleado', '.closeModificarEmpleado');
            });
        });

        //Valida que solamente se ingresen 13 caracteres en el campo CUI
        document.getElementById('tbCUIEmpleado').addEventListener('input', function () {
            if (this.value.length > 13) {
                alert('El CUI no puede tener más de 13 caracteres.');
                this.value = this.value.slice(0, 13); // Limita el tamaño del valor
            }
        });

        //Valida que solamente se ingresen 10 caracteres en el campo NIT
        document.getElementById('tbNITEmpleado').addEventListener('input', function () {
            if (this.value.length > 10) {
                alert('El NIT no puede tener más de 10 caracteres.');
                this.value = this.value.slice(0, 10); // Limita el tamaño del valor
            }
        });

        function agregarEmpleado() {
            // Obtener valores de los campos
            var primerNombreEmpleado = $('#tbPrimerNombreEmpleado').val();
            var segundoNombreEmpleado = $('#tbSegundoNombreEmpleado').val();
            var tercerNombreEmpleado = $('#tbTercerNombreEmpleado').val();
            var primerApellidoEmpleado = $('#tbPrimerApellidoEmpleado').val();
            var segundoApellidoEmpleado = $('#tbSegundoApellidoEmpleado').val();
            var apellidoCasada = $('#tbApellidoCasadaEmpleado').val();
            var cuiEmpleado = $('#tbCUIEmpleado').val();
            var nitEmpleado = $('#tbNITEmpleado').val();
            var fechaNacimientoEmpleado = $('#tbFechaNacimientoEmpleado').val();
            var fechaIngresoEmpleado = $('#tbFechaIngresoEmpleado').val();
            var direccionEmpleado = $('#tbDireccionEmpleado').val();
            var telefonoEmpleado = $('#tbTelefonoEmpleado').val();
            var movilEmpleado = $('#tbMovilEmpleado').val();
            var generoEmpleado = $('#ddlGeneroEmpleado').val();
            var estadoEmpleado = $('#ddlEstadoEmpleado').val();
            var puestoEmpleado = $('#ddlPuestoEmpleado').val();        

            

            // Si todas las validaciones pasan, crear el objeto empleado
            var empleado = {
                primerNombre: primerNombreEmpleado,
                segundoNombre: segundoNombreEmpleado,
                tercerNombre: tercerNombreEmpleado,
                primerApellido: primerApellidoEmpleado,
                segundoApellido: segundoApellidoEmpleado,
                apellidoCasada: apellidoCasada,
                cui: cuiEmpleado,
                nit: nitEmpleado,
                fechaNacimiento: fechaNacimientoEmpleado,
                fechaIngreso: fechaIngresoEmpleado,
                direccion: direccionEmpleado,
                telefonoCasa: telefonoEmpleado,
                telefonoMovil: movilEmpleado,
                genero: generoEmpleado,
                estado: estadoEmpleado,
                puesto: puestoEmpleado
            };

            // Enviar la información si pasa las validaciones
            $.ajax({
                url: '/api/empleados',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(empleado),
                success: function (response) {
                    alert("Empleado agregado exitosamente");

                     /*Limpiar los campos del formulario*/
                    $('#tbPrimerNombreEmpleado').val('');
                    $('#tbSegundoNombreEmpleado').val('');
                    $('#tbTercerNombreEmpleado').val('');
                    $('#tbPrimerApellidoEmpleado').val('');
                    $('#tbSegundoApellidoEmpleado').val('');
                    $('#tbApellidoCasadaEmpleado').val('');
                    $('#tbCUIEmpleado').val('');
                    $('#tbNITEmpleado').val('');
                    $('#tbFechaNacimientoEmpleado').val('');
                    $('#tbFechaIngresoEmpleado').val('');
                    $('#tbDireccionEmpleado').val('');
                    $('#tbTelefonoEmpleado').val('');
                    $('#tbMovilEmpleado').val('');
                    $('#ddlGeneroEmpleado').val('');
                    $('#ddlEstadoEmpleado').val('');
                    $('#ddlPuestoEmpleado').val('');

                },
                error: function (xhr, status, error) {
                    console.log("Error al agregar el empleado: " + xhr.responseText);
                }
            });
        }

        /*MUESTRA TABLA CON EMPLEADOS DESPUES DE HACER CLICK EN EL BOTÓN MODIFICAR */
        document.getElementById('botonModificarEmpleadoID').addEventListener('click', function () {
            // Llamar al WebMethod para obtener la tabla de empleados
            fetch('ModuloEmpleado.aspx/ListarEmpleados', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                }
            })
                .then(response => response.json())
                .then(data => {
                    var empleados = JSON.parse(data.d);
                    var html = generarHtmlDeEmpleados(empleados);
                    document.getElementById('contenedor-tabla').innerHTML = html;
                })
                .catch(error => {
                    console.error('Error al obtener la lista de empleados:', error);
                });
        });

        document.getElementById('tbBuscarEmpleadoID').addEventListener('keyup', function () {
            var empleadoId = this.value.trim(); // Elimina espacios en blanco al inicio y final

            if (empleadoId.length > 0) {
                // Llamar al WebMethod para obtener el empleado por ID
                fetch('ModuloEmpleado.aspx/ObtenerEmpleadoPorId', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ empleadoId: empleadoId })
                })
                    .then(response => response.json())
                    .then(data => {
                        var empleado = JSON.parse(data.d);
                        var html = generarHtmlDeEmpleados(empleado);
                        document.getElementById('contenedor-tabla').innerHTML = html;
                    })
                    .catch(error => {
                        console.error('Error al obtener el empleado:', error);
                    });
            } else {
                // Llamar al WebMethod para obtener todos los empleados
                fetch('ModuloEmpleado.aspx/ListarEmpleados', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                })
                    .then(response => response.json())
                    .then(data => {
                        var empleados = JSON.parse(data.d);
                        var html = generarHtmlDeEmpleados(empleados);
                        document.getElementById('contenedor-tabla').innerHTML = html;
                    })
                    .catch(error => {
                        console.error('Error al obtener la lista de empleados:', error);
                    });
            }
        });

        // Función para generar el HTML de la tabla con todos los empleados
        function generarHtmlDeEmpleados(empleados) {
            if (empleados.length === 0) {
                return '<p>No se encontraron empleados.</p>';
            }

            var html = `
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre Completo</th>
                    <th>CUI</th>
                    <th>NIT</th>
                    <th>Fecha Nacimiento</th>
                    <th>Fecha Ingreso</th>
                    <th>Dirección</th>
                    <th>Tel. Casa</th>
                    <th>Num. Celular</th>
                    <th>Género</th>
                    <th>Estado</th>
                    <th>Puesto</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                ${empleados.map(empleado => `
                    <tr>
                        <td>${empleado.idEmpleado}</td>
                        <td>${empleado.primerNombre} ${empleado.segundoNombre} ${empleado.tercerNombre} ${empleado.primerApellido} ${empleado.segundoApellido} ${empleado.apellidoCasada}</td>
                        <td>${empleado.cui}</td>
                        <td>${empleado.nit}</td>
                        <td>${formatDate(empleado.fechaNacimiento)}</td>
                        <td>${formatDate(empleado.fechaIngreso)}</td>
                        <td>${empleado.direccion}</td>
                        <td>${empleado.telefonoCasa}</td>
                        <td>${empleado.telefonoMovil}</td>
                        <td>${empleado.genero}</td>
                        <td>${empleado.estado}</td>
                        <td>${empleado.puesto}</td>
                        <td><button class='modificarBtn' id='modificarBtnID' onclick="modificarEmpleado('${empleado.idEmpleado}')">Modificar</button></td>
                    </tr>
                `).join('')}
            </tbody>
        </table>
    `;
            return html;
        }

        function modificarEmpleado(id) {
            // Implementar la función para manejar la acción de modificar empleado
            /*alert('Modificar empleado con ID: ' + id);*/
            // Mostrar el modal
            // Mostrar el modal
            var modal = document.getElementById('modalModificarEmpleadoM');
            modal.style.display = "block";
            // Llamar al servidor para obtener los datos del empleado
            fetch('ModuloEmpleado.aspx/ObtenerUnEmpleadoPorId', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ empleadoId: id })
            })
                .then(response => response.json())
                .then(data => {
                    // Parsear la respuesta y cargar los datos en el formulario
                    var empleado = JSON.parse(data.d)
                    // Llenar los campos del formulario con los datos del empleado
                    /*alert(empleado.idEmpleado);*/
                    alert(empleado.idEmpleado);
                    document.getElementById('tbIdEmpleadoModificar').value = empleado.idEmpleado;
                    document.getElementById('tbPrimerNombreEmpleadoModificar').value = empleado.primerNombre;
                    document.getElementById('tbSegundoNombreEmpleadoModificar').value = empleado.segundoNombre;
                    document.getElementById('tbTercerNombreEmpleadoModificar').value = empleado.tercerNombre;
                    document.getElementById('tbPrimerApellidoEmpleadoModificar').value = empleado.primerApellido;
                    document.getElementById('tbSegundoApellidoEmpleadoModificar').value = empleado.segundoApellido;
                    document.getElementById('tbApellidoCasadaEmpleadoModificar').value = empleado.apellidoCasada; //formatDate(empleado.fechaNacimiento)
                    document.getElementById('tbCUIEmpleadoModificar').value = empleado.cui;
                    document.getElementById('tbNITEmpleadoModificar').value = empleado.nit;
                    document.getElementById('tbFechaNacimientoEmpleadoModificar').value = formatDate(empleado.fechaNacimiento.split('T')[0]);
                    document.getElementById('tbFechaIngresoEmpleadoModificar').value = formatDate(empleado.fechaIngreso.split('T')[0]);
                    document.getElementById('tbDireccionEmpleadoModificar').value = empleado.direccion;
                    document.getElementById('tbTelefonoEmpleadoModificar').value = empleado.telefonoCasa;
                    document.getElementById('tbMovilEmpleadoModificar').value = empleado.telefonoMovil;
                    document.getElementById('ddlGeneroEmpleadoModificar').value = empleado.genero;
                    document.getElementById('ddlEstadoEmpleadoModificar').value = empleado.estado;
                    document.getElementById('ddlPuestoEmpleadoModificar').value = empleado.puesto;

                    /*document.getElementById('ImgEmpleadoModificara').src = empleado.foto;*/
                    // Asignar la imagen en Base64 al elemento <img>
                    //if (empleado.FotoBase64) {
                    //    document.getElementById('ImgEmpleadoModificara').src = 'data:image/jpeg;base64,' + empleado.FotoBase64;
                    //} else {
                    //    document.getElementById('ImgEmpleadoModificara').src = ''; // O una imagen por defecto si no hay foto
                    //}

                    // Convierte los bytes a Base64 en JavaScript
                    //if (empleado.foto) {
                    //    var fotoBase64 = btoa(String.fromCharCode.apply(null, new Uint8Array(empleado.foto)));
                    //    document.getElementById('ImgEmpleadoModificara').src = 'data:image/jpeg;base64,' + fotoBase64;
                    //} else {
                    //    document.getElementById('ImgEmpleadoModificara').src = ''; // O una imagen por defecto
                    //}

                    //console.log(empleado);

                    /*alert(empleado.f);*/
                    //document.getElementById('ImgEmpleadoModificara') = empleado.foto;
                    // Llenar otros campos de modificación...
                })
                .catch(error => {
                    console.error('Error al obtener los datos del empleado:', error);
                });


        }

        // Cerrar el modal al hacer clic en la "X"
        var span = document.getElementsByClassName("close-ModificarEmpleadoM")[0];
        span.onclick = function () {
            var modal = document.getElementById('modalModificarEmpleadoM');
            modal.style.display = "none";
        }

        // Cerrar el modal si se hace clic fuera de él
        window.onclick = function (event) {
            var modal = document.getElementById('modalModificarEmpleadoM');
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        function formatDate(dateString) {
            if (!dateString) return 'Fecha no disponible';

            // Usar moment.js para convertir la cadena y formatearla a "dd-MM-yyyy"
            var formattedDate = moment(dateString).format('YYYY-MM-DD');

            // Si la fecha no es válida, moment devuelve "Invalid date"
            return formattedDate === 'Invalid date' ? 'Fecha no válida' : formattedDate;
        }

        //Método para modifiar al empleado
        function modificarEmpleadoAccion() {
            // Obtén los datos del formulario
            const empleado = {
                idEmpleado: document.getElementById('tbIdEmpleadoModificar').value,
                primerNombre: document.getElementById('tbPrimerNombreEmpleadoModificar').value,
                segundoNombre: document.getElementById('tbSegundoNombreEmpleadoModificar').value,
                tercerNombre: document.getElementById('tbTercerNombreEmpleadoModificar').value,
                primerApellido: document.getElementById('tbPrimerApellidoEmpleadoModificar').value,
                segundoApellido: document.getElementById('tbSegundoApellidoEmpleadoModificar').value,
                apellidoCasada: document.getElementById('tbApellidoCasadaEmpleadoModificar').value,
                cui: document.getElementById('tbCUIEmpleadoModificar').value,
                nit: document.getElementById('tbNITEmpleadoModificar').value,
                fechaNacimiento: document.getElementById('tbFechaNacimientoEmpleadoModificar').value,
                fechaIngreso: document.getElementById('tbFechaIngresoEmpleadoModificar').value,
                direccion: document.getElementById('tbDireccionEmpleadoModificar').value,
                telefonoCasa: document.getElementById('tbTelefonoCasaEmpleadoModificar').value,
                telefonoMovil: document.getElementById('tbTelefonoMovilEmpleadoModificar').value,
                genero: document.getElementById('ddlGeneroEmpleadoModificar').value,
                estado: document.getElementById('ddlEstadoEmpleadoModificar').value,
                puesto: document.getElementById('ddlPuestoEmpleadoModificar').value
            };

            fetch('/api/empleados/ModificarEmpleado', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(empleado)
            })
                .then(response => {
                    console.log(response.status);  // Muestra el código de estado
                    return response.json();
                })
                .then(data => {
                    if (data.success) {
                        alert(data.message);
                    } else {
                        alert('Error: ' + data.message);
                    }
                })
                .catch(error => console.error('Error:', error));

            //fetch('/api/empleados/ModificarEmpleado', {
            //    method: 'POST',
            //    headers: {
            //        'Content-Type': 'application/json'
            //    },
            //    body: JSON.stringify(empleado)
            //})
            //    .then(response => response.json())
            //    .then(data => {
            //        if (data.success) {
            //            alert(data.message);
            //        } else {
            //            alert(data.message);
            //        }
            //    })
            //    .catch(error => console.error('Error:', error));
        }
    </script>

    <%--El modal agregar empleados--%>
    <%--<div id="modalRegistrarEmpleado" class="modal" style="display:none;">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Registrar Nuevo Empleado</h2>
            <form id="form1" runat="server">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblPrimerNombreEmpleado" runat="server" Text="Primer Nombre*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbPrimerNombreEmpleado" runat="server" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblSegundoNombreEmpleado" runat="server" Text="Segundo Nombre"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbSegundoNombreEmpleado" runat="server"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblTercerNombreEmpleado" runat="server" Text="Tercer Nombre"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbTercerNombreEmpleado" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblPrimerApellidoEmpleado" runat="server" Text="Primer Apellido*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbPrimerApellidoEmpleado" runat="server" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblSegundoApellidoEmpleado" runat="server" Text="Segundo Apellido"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbSegundoApellidoEmpleado" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblApellidoCasadaEmpleado" runat="server" Text="Apellido de Casada"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbApellidoCasadaEmpleado" runat="server"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblCUIEmpleado" runat="server" Text="CUI*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbCUIEmpleado" runat="server" TextMode="Number" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblNITEmpleado" runat="server" Text="NIT"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbNITEmpleado" runat="server" TextMode="Number" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblFechaNacimientoEmpleado" runat="server" Text="Fecha de Nacimiento*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbFechaNacimientoEmpleado" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblFechaIngresoEmpleado" runat="server" Text="Fecha de Ingreso*"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbFechaIngresoEmpleado" runat="server" TextMode="Date" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="lblDireccionEmpleado" runat="server" Text="Dirección"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbDireccionEmpleado" runat="server" TextMode="SingleLine" required="true"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <asp:Label ID="lblTelefonoEmpleado" runat="server" Text="Teléfono"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbTelefonoEmpleado" runat="server" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <asp:Label ID="lblMovilEmpleado" runat="server" Text="Móvil"></asp:Label>
                        <asp:TextBox class="form-control" ID="tbMovilEmpleado" runat="server" TextMode="Phone" required="true"></asp:TextBox>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblGeneroEmpleado" runat="server" Text="Género*"></asp:Label>
                        <asp:DropDownList ID="ddlGeneroEmpleado" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Seleccione" Value="" />
                            <asp:ListItem Text="Masculino" Value="M" />
                            <asp:ListItem Text="Femenino" Value="F" />
                            <asp:ListItem Text="Otro" Value="O" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblEstadoEmpleado" runat="server" Text="Estado*"></asp:Label>
                        <asp:DropDownList ID="ddlEstadoEmpleado" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Text="Seleccione" Value="" />
                            <asp:ListItem Text="Activo" Value="1" />
                            <asp:ListItem Text="Inactivo" Value="2" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <asp:Label ID="lblPuestoEmpleado" runat="server" Text="Puesto*"></asp:Label>
                        <asp:DropDownList class="form-control" ID="ddlPuestoEmpleado" runat="server" required="true">

                        </asp:DropDownList>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <asp:Label ID="lblFotoEmpleado" runat="server" Text="Foto"></asp:Label>
                        <asp:FileUpload ID="fuFotoEmpleado" runat="server" CssClass="form-control-file"/>
                    </div>
                </div>
            
                <div class="form-row">
                    <div class="form-group col-md-12 text-right">
                        <asp:Button ID="btnGuardarEmpleado" runat="server" Text="Guardar Registro" CssClass="btn btn-primary"  OnClick="btnSubir_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>--%>
<%--<script>

    function agregarEmpleado() {

        // Obtener valores de los campos
        var primerNombreEmpleado = $('#tbPrimerNombreEmpleado').val();
        var segundoNombreEmpleado = $('#tbSegundoNombreEmpleado').val();
        var tercerNombreEmpleado = $('#tbTercerNombreEmpleado').val();
        var primerApellidoEmpleado = $('#tbPrimerApellidoEmpleado').val();
        var segundoApellidoEmpleado = $('#tbSegundoApellidoEmpleado').val();
        var apellidoCasadaEmpleado = $('#tbApellidoCasadaEmpleado').val();
        var cuiEmpleado = $('#tbCUIEmpleado').val();
        var nitEmpleado = $('#tbNITEmpleado').val();
        var fechaNacimientoEmpleado = $('#tbFechaNacimientoEmpleado').val();
        var fechaIngresoEmpleado = $('#tbFechaIngresoEmpleado').val();
        var direccionEmpleado = $('#tbDireccionEmpleado').val();
        var telefonoEmpleado = $('#tbTelefonoEmpleado').val();
        var movilEmpleado = $('#tbMovilEmpleado').val();
        var generoEmpleado = $('#ddlGeneroEmpleado').val();
        var estadoEmpleado = $('#ddlEstadoEmpleado').val();
        var puestoEmpleado = $('#tbPuestoEmpleado').val();
        var fotoEmpleado = Encoding.UTF8.GetBytes(document.getElementById('#fuFotoEmpleado').val());
        /*var fotoEmpleado = Encoding.UTF8.GetBytes($('#fuFotoEmpleado').val());*/

        //console.log(primerNombreEmpleado);
        //console.log(segundoNombreEmpleado);
        //console.log(tercerNombreEmpleado);
        //console.log(primerApellidoEmpleado);
        //console.log(segundoApellidoEmpleado);
        //console.log(apellidoCasadaEmpleado);
        //console.log(cuiEmpleado);
        //console.log(nitEmpleado);
        //console.log(fechaNacimientoEmpleado);
        //console.log(fechaIngresoEmpleado);
        //console.log(direccionEmpleado);
        //console.log(telefonoEmpleado);
        //console.log(movilEmpleado);
        //console.log(generoEmpleado);
        //console.log(estadoEmpleado);
        //console.log(puestoEmpleado);
        /*console.log(fotoEmpleado);*/

       /* console.log(fotoEmpledo);*/

        // Validaciones
        if (primerNombreEmpleado == "" || primerApellidoEmpleado == "" || cuiEmpleado == "" ||
            fechaNacimientoEmpleado == "" || fechaIngresoEmpleado == "" || direccionEmpleado == "" ||
            movilEmpleado == "" || generoEmpleado == "" || estadoEmpleado == "" || puestoEmpleado == "") {
            /*alert("Por favor, complete todos los campos obligatorios.");*/
            return; // Suspende el envío de la información
        }

        if (cuiEmpleado.length > 13) {
            alert("El CUI debe tener un máximo de 13 números.");
            return false; // Suspende el envío de la información
        }

        if (nitEmpleado.length > 10) {
            alert("El NIT debe tener un máximo de 9 números.");
            return false; // Suspende el envío de la información
        }

        //// Si todas las validaciones pasan, crear el objeto empleado
        var empleado = {
            primerNombre: primerNombreEmpleado,
            segundoNombre: $('#tbSegundoNombreEmpleado').val(),
            tercerNombre: $('#tbTercerNombreEmpleado').val(),
            primerApellido: primerApellidoEmpleado,
            segundoApellido: $('#tbSegundoApellidoEmpleado').val(),
            apellidoCasada: $('#tbApellidoCasadaEmpleado').val(),
            cui: cuiEmpleado,
            nit: $('#tbNITEmpleado').val(),
            fechaNacimiento: fechaNacimientoEmpleado,
            fechaIngreso: fechaIngresoEmpleado,
            direccion: direccionEmpleado,
            telefonoCasa: $('#tbTelefonoEmpleado').val(),
            telefonoMovil: movilEmpleado,
            genero: generoEmpleado,
            estado: estadoEmpleado,
            puesto: puestoEmpleado,
            foto: fotoEmpleado,
        };

        // Enviar la información si pasa las validaciones
        $.ajax({
            url: '/api/empleados',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(empleado),
            success: function (response) {
                /*mostrarModalConfirmacion();*/
                alert("Empleado agregado exitosamente");
                return true;

                //// Limpiar los campos del formulario
                //$('#tbPrimerNombreEmpleado').val('');
                //$('#tbSegundoNombreEmpleado').val('');
                //$('#tbTercerNombreEmpleado').val('');
                //$('#tbPrimerApellidoEmpleado').val('');
                //$('#tbSegundoApellidoEmpleado').val('');
                //$('#tbApellidoCasadaEmpleado').val('');
                //$('#tbCUIEmpleado').val('');
                //$('#tbNITEmpleado').val('');
                //$('#tbFechaNacimientoEmpleado').val('');
                //$('#tbFechaIngresoEmpleado').val('');
                //$('#tbDireccionEmpleado').val('');
                //$('#tbTelefonoEmpleado').val('');
                //$('#tbMovilEmpleado').val('');
                //$('#ddlGeneroEmpleado').val('');
                //$('#lblEstadoEmpleado').val('');
                //$('#lblPuestoEmpleado').val('');
                //$('#lblFotoEmpleado').val('');
            },
            error: function (xhr, status, error) {
                alert("Error al agregar el empleado: " + xhr.responseText);
                return false;
                //var errorMessage = xhr.status + ': ' + xhr.statusText;
                //alert("Error al agregar el empleado: " + errorMessage);
            }
        });

        /*return true;*/ // Permite que el formulario se envíe
    }
</script>--%>
<%--<script src="../Resources/js/registroEmpleado.js"></script>--%>
</body>
</html>
