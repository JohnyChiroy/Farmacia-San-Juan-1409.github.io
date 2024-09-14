using SYSFARMACIASANJUAN.Bussines;
using SYSFARMACIASANJUAN.DataAccess;
using SYSFARMACIASANJUAN.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SYSFARMACIASANJUAN.Pages
{
    public partial class ModuloEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarPuestosEmpleado();  // Solo cargar los puestos si es la primera vez que se carga la página
                //ListarEmpleados();
            }
        }

        //[WebMethod]
        //public static string AgregarEmpleado(Empleado empleado)
        //{
        //    try
        //    {
        //        EmpleadoServices empleadoServices = new EmpleadoServices();
        //        empleadoServices.MantenimientoAgregarEmpleado(empleado);

        //        // Devuelve una respuesta JSON con el estado de la operación
        //        return new JavaScriptSerializer().Serialize(new { success = true });
        //    }
        //    catch (Exception ex)
        //    {
        //        // Devuelve una respuesta JSON con el error
        //        return new JavaScriptSerializer().Serialize(new { success = false, error = ex.Message });
        //    }
        //}

        //[WebMethod]
        //public static string AgregarEmpleado(
        //string primerNombre, string segundoNombre, string tercerNombre,
        //string primerApellido, string segundoApellido, string apellidoCasada,
        //string cui, string nit, string fechaNacimiento, string fechaIngreso,
        //string direccion, string telefono, string movil, string genero,
        //string estado, string puesto, string foto)
        //{
        //    try
        //    {
        //        // Crear un objeto Empleado y asignar los valores recibidos
        //        Empleado empleado = new Empleado
        //        {
        //            primerNombre = primerNombre,
        //            segundoNombre = segundoNombre,
        //            tercerNombre = tercerNombre,
        //            primerApellido = primerApellido,
        //            segundoApellido = segundoApellido,
        //            apellidoCasada = apellidoCasada,
        //            cui = cui,
        //            nit = nit,
        //            fechaNacimiento = DateTime.Parse(fechaNacimiento),
        //            fechaIngreso = DateTime.Parse(fechaIngreso),
        //            direccion = direccion,
        //            telefonoCasa = telefono,
        //            telefonoMovil = movil,
        //            genero = genero[0],
        //            estado = estado[0],
        //            puesto = puesto,
        //            foto = Convert.FromBase64String(foto) // Convertir de base64 a byte[]
        //        };

        //        // Llamar al servicio para guardar el empleado
        //        EmpleadoServices empleadoServices = new EmpleadoServices();
        //        empleadoServices.MantenimientoAgregarEmpleado(empleado);

        //        return "Empleado agregado exitosamente";
        //    }
        //    catch (Exception ex)
        //    {
        //        return "Error: " + ex.Message;
        //    }
        //}

        //protected void btnSubir_Click(object sender, EventArgs e)
        //{
        //    string mensaje = "";

        //    // Inicializar la variable para la foto
        //    byte[] imagenBytes = null;

        //    // Verificar si se ha seleccionado una foto
        //    if (fuFotoEmpleado.HasFile)
        //    {
        //        imagenBytes = fuFotoEmpleado.FileBytes;
        //        if (imagenBytes == null || imagenBytes.Length == 0)
        //        {
        //            imagenBytes = null; // Asegúrate de que sea null si no hay datos
        //        }
        //    }

        //    // Capturar los datos desde los campos del formulario
        //    string primerNombreEmpleado = tbPrimerNombreEmpleado.Text.Trim();
        //    string segundoNombreEmpleado = tbSegundoNombreEmpleado.Text.Trim();
        //    string tercerNombreEmpleado = tbTercerNombreEmpleado.Text.Trim();
        //    string primerApellidoEmpleado = tbPrimerApellidoEmpleado.Text.Trim();
        //    string segundoApellidoEmpleado = tbSegundoApellidoEmpleado.Text.Trim();
        //    string apellidoCasadaEmpleado = tbApellidoCasadaEmpleado.Text.Trim();
        //    string cuiEmpleado = tbCUIEmpleado.Text.Trim();
        //    string nitEmpleado = tbNITEmpleado.Text.Trim();
        //    DateTime fechaNacimientoEmpleado = DateTime.Parse(tbFechaNacimientoEmpleado.Text.Trim());
        //    DateTime fechaIngresoEmpleado = DateTime.Parse(tbFechaIngresoEmpleado.Text.Trim());
        //    string direccionEmpleado = tbDireccionEmpleado.Text.Trim();
        //    string telefonoEmpleado = tbTelefonoEmpleado.Text.Trim();
        //    string movilEmpleado = tbMovilEmpleado.Text.Trim();
        //    char generoEmpleado = char.Parse(ddlGeneroEmpleado.SelectedValue);
        //    char estadoEmpleado = char.Parse(ddlEstadoEmpleado.SelectedValue);

        //    // Validar la selección del puesto
        //    if (ddlPuestoEmpleado.SelectedValue == "0")
        //    {
        //        mensaje = "Debe seleccionar un puesto válido.";
        //        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{mensaje}');", true);
        //        return; // Salir de la función si no se seleccionó un puesto
        //    }

        //    string puestoEmpleado = ddlPuestoEmpleado.SelectedValue; // Capturar el PUESTO_ID como valor del DropDownList

        //    // Crear un objeto 'Empleado' y asignar los valores capturados
        //    Empleado empleado = new Empleado
        //    {
        //        primerNombre = primerNombreEmpleado,
        //        segundoNombre = segundoNombreEmpleado,
        //        tercerNombre = tercerNombreEmpleado,
        //        primerApellido = primerApellidoEmpleado,
        //        segundoApellido = segundoApellidoEmpleado,
        //        apellidoCasada = apellidoCasadaEmpleado,
        //        cui = cuiEmpleado,
        //        nit = nitEmpleado,
        //        fechaNacimiento = fechaNacimientoEmpleado,
        //        fechaIngreso = fechaIngresoEmpleado,
        //        direccion = direccionEmpleado,
        //        telefonoCasa = telefonoEmpleado,
        //        telefonoMovil = movilEmpleado,
        //        genero = generoEmpleado,
        //        estado = estadoEmpleado,
        //        foto = imagenBytes,
        //        puesto = puestoEmpleado // Asignar el PUESTO_ID capturado
        //    };

        //    // Llamar a tu servicio para guardar el empleado, incluyendo la imagen
        //    EmpleadoServices empleadoServices = new EmpleadoServices();
        //    empleadoServices.MantenimientoAgregarEmpleado(empleado);

        //    mensaje = "Empleado agregado exitosamente";
        //    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{mensaje}');", true);

        //    // Limpiar el formulario
        //    limpiarFormularioAgregarEmpleado();
        //    //ListarEmpleados();
        //}

        private void ListarPuestosEmpleado()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MiConexionDB"].ConnectionString;
            string query = "SELECT PUESTO_ID, PUESTO_NOMBRE FROM PUESTO";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    try
                    {
                        conn.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            ddlPuestoEmpleado.Items.Clear();
                            ddlPuestoEmpleadoModificar.Items.Clear();
                            while (reader.Read())
                            {
                                string puestoId = reader["PUESTO_ID"].ToString();
                                string puestoNombre = reader["PUESTO_NOMBRE"].ToString();
                                ddlPuestoEmpleado.Items.Add(new ListItem(puestoNombre, puestoId));
                                ddlPuestoEmpleadoModificar.Items.Add(new ListItem(puestoNombre, puestoId));
                            }

                            ddlPuestoEmpleado.Items.Insert(0, new ListItem("Seleccione", "0"));
                            ddlPuestoEmpleadoModificar.Items.Insert(0, new ListItem("Seleccione", "0"));
                        }
                        
                        reader.Close();
                    }
                    catch (Exception ex)
                    {
                        string mensaje = "Error al cargar los puestos: " + ex.Message;
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{mensaje}');", true);
                    }
                }
            }
        }

        //protected void btnCargarEmpleados_Click(object sender, EventArgs e)
        //{
        //    // Llamar al método ListarEmpleados para cargar los empleados en la tabla
        //    ListarEmpleados();
        //}

        [WebMethod]
        public static string ListarEmpleados()
        {
            EmpleadoServices empleadoServices = new EmpleadoServices();
            var empleados = empleadoServices.ListarEmpleados();
            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(empleados);
        }

        //[WebMethod]
        //public static string ListarEmpleadosInicio()
        //{
        //    // Simular el proceso de generación de la tabla en el servidor
        //    StringBuilder tablaHtml = new StringBuilder();

        //    // Crear la tabla HTML
        //    tablaHtml.Append("<table id='empleadosTable'>");
        //    tablaHtml.Append("<thead><tr>");
        //    tablaHtml.Append("<th>Código</th><th>Nombre Completo</th><th>Cui</th><th>Nit</th>");
        //    tablaHtml.Append("<th>Fecha Nacimiento</th><th>Fecha Ingreso</th><th>Dirección</th>");
        //    tablaHtml.Append("<th>Tel. Casa</th><th>Num. Celular</th><th>Género</th><th>Estado</th><th>Puesto</th><th>Acción</th>");
        //    tablaHtml.Append("</tr></thead>");
        //    tablaHtml.Append("<tbody>");

        //    // Obtener los empleados desde la capa de servicios
        //    EmpleadoServices empleadoServices = new EmpleadoServices();
        //    List<Empleado> empleados = empleadoServices.ListarEmpleados();

        //    foreach (var empleado in empleados)
        //    {
        //        tablaHtml.Append("<tr>");
        //        tablaHtml.Append($"<td>{empleado.idEmpleado}</td>");
        //        tablaHtml.Append($"<td>{empleado.primerNombre} {empleado.segundoNombre} {empleado.tercerNombre} {empleado.primerApellido} {empleado.segundoApellido} {empleado.apellidoCasada}</td>");
        //        tablaHtml.Append($"<td>{empleado.cui}</td>");
        //        tablaHtml.Append($"<td>{empleado.nit}</td>");
        //        tablaHtml.Append($"<td>{empleado.fechaNacimiento:dd-MM-yyyy}</td>");
        //        tablaHtml.Append($"<td>{empleado.fechaIngreso:dd-MM-yyyy}</td>");
        //        tablaHtml.Append($"<td>{empleado.direccion}</td>");
        //        tablaHtml.Append($"<td>{empleado.telefonoCasa}</td>");
        //        tablaHtml.Append($"<td>{empleado.telefonoMovil}</td>");
        //        tablaHtml.Append($"<td>{empleado.genero}</td>");
        //        tablaHtml.Append($"<td>{empleado.estado}</td>");
        //        tablaHtml.Append($"<td>{empleado.puesto}</td>");
        //        tablaHtml.Append("<td><button class='modificarBtn' data-id='" + empleado.idEmpleado + "'>Modificar</button></td>");
        //        tablaHtml.Append("</tr>");
        //    }

        //    tablaHtml.Append("</tbody></table>");

        //    return tablaHtml.ToString();
        //}

        //private void ListarEmpleados()
        //{

        //    // Limpiar filas anteriores de la tabla
        //    empleadosTable.Rows.Clear();

        //    // Crear la fila de encabezado
        //    TableHeaderRow header = new TableHeaderRow();
        //    header.Cells.Add(new TableHeaderCell() { Text = "Código" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Nombre Completo" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Cui" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Nit" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Fecha Nacimiento" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Fecha Ingreso" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Dirección" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Tel. Casa" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Num. Celular" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Género" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Estado" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Puesto" });
        //    header.Cells.Add(new TableHeaderCell() { Text = "Acción" });
        //    empleadosTable.Rows.Add(header);

        //    // Obtener empleados desde la capa de servicios
        //    EmpleadoServices empleadoServices = new EmpleadoServices();
        //    List<Empleado> empleados = empleadoServices.ListarEmpleados();

        //    // Iterar sobre la lista de empleados y crear las filas dinámicas
        //    foreach (var empleado in empleados)
        //    {
        //        TableRow row = new TableRow();

        //        // Crear celdas y agregar los datos
        //        row.Cells.Add(new TableCell { Text = empleado.idEmpleado.ToString() });
        //        row.Cells.Add(new TableCell { Text = $"{empleado.primerNombre} {empleado.segundoNombre} {empleado.tercerNombre} {empleado.primerApellido} {empleado.segundoApellido} {empleado.apellidoCasada}" });
        //        row.Cells.Add(new TableCell { Text = empleado.cui.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.nit.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.fechaNacimiento.ToString("dd-MM-yyyy") });
        //        row.Cells.Add(new TableCell { Text = empleado.fechaIngreso.ToString("dd-MM-yyyy") });
        //        row.Cells.Add(new TableCell { Text = empleado.direccion.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.telefonoCasa.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.telefonoMovil.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.genero.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.estado.ToString() });
        //        row.Cells.Add(new TableCell { Text = empleado.puesto.ToString() });

        //        // Crear una celda para el botón de acción
        //        TableCell actionCell = new TableCell();
        //        Button btnModificar = new Button
        //        {
        //            Text = "Modificar",
        //            CommandArgument = empleado.idEmpleado.ToString(), // Pasar el ID del empleado como argumento
        //            CommandName = "Modificar" // Nombre del comando para identificar qué acción realizar
        //        };
        //        btnModificar.Click += new EventHandler(BtnModificar_Click); // Manejar el evento de clic
        //        actionCell.Controls.Add(btnModificar);

        //        // Agregar la celda de acción a la fila
        //        row.Cells.Add(actionCell);

        //        // Agregar la fila a la tabla
        //        empleadosTable.Rows.Add(row);
        //    }
        //}

        //private List<Empleado> BuscarEmpleadosPorCriterio(string criterio)
        //{
        //    EmpleadoServices empleado = new EmpleadoServices();
        //    // Simulación de búsqueda en la base de datos. Reemplaza esto por la consulta a la BD.
        //    // Puedes buscar por código, nombre, etc.
        //    return empleado.ObtenerEmpleadoPorId(criterio); // Llama a tu capa de servicios o acceso a datos
        //}

        // Método para manejar el clic en el botón de modificar
        //protected void BtnModificar_Click(object sender, EventArgs e)
        //{
        //    Button btn = (Button)sender;
        //    string empleadoId = btn.CommandArgument;

        //    // Lógica para modificar el empleado con el ID recibido
        //    // Por ejemplo, abrir un modal o redirigir a una página de edición
        //    // Puedes usar el ID para cargar los datos del empleado y mostrarlos en un formulario de edición
        //}

        public void limpiarFormularioAgregarEmpleado()
        {
            tbPrimerNombreEmpleado.Text = "";
            tbSegundoNombreEmpleado.Text = "";
            tbTercerNombreEmpleado.Text = "";
            tbPrimerApellidoEmpleado.Text = "";
            tbSegundoApellidoEmpleado.Text = "";
            tbApellidoCasadaEmpleado.Text = "";
            tbCUIEmpleado.Text = "";
            tbNITEmpleado.Text = "";
            tbFechaNacimientoEmpleado.Text = "";
            tbFechaIngresoEmpleado.Text = "";
            tbDireccionEmpleado.Text = "";
            tbTelefonoEmpleado.Text = "";
            tbMovilEmpleado.Text = "";
            ddlGeneroEmpleado.Text = "";
            ddlEstadoEmpleado.Text = "";
            ddlPuestoEmpleado.SelectedIndex = 0; // Regresar al primer ítem del DropDownList
        }

        //public static string ObtenerEmpleadoPorId(string empleadoId)
        //{
        //    EmpleadoServices empleadoServices = new EmpleadoServices();
        //    var empleado = empleadoServices.ObtenerEmpleadoPorId(empleadoId);
        //    JavaScriptSerializer js = new JavaScriptSerializer();
        //    return js.Serialize(empleado);
        //}

        [WebMethod]
        public static string ObtenerEmpleadoPorId(string empleadoId)
        {
            EmpleadoServices empleadoServices = new EmpleadoServices();
            var empleado = empleadoServices.ObtenerEmpleadosPorId(empleadoId);

            // Serializar el empleado como JSON para enviarlo al cliente
            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(empleado);
        }

        [WebMethod]
        public static string ObtenerUnEmpleadoPorId(string empleadoId)
        {
            EmpleadoServices empleadoServices = new EmpleadoServices();
            var empleado = empleadoServices.ObtenerUnEmpleadoPorId(empleadoId); // Modificado para obtener solo un empleado

            // Serializar el empleado como JSON para enviarlo al cliente
            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(empleado);
        }

        //[WebMethod]
        //public static string ObtenerTodosEmpleados()
        //{
        //    EmpleadoServices empleadoServices = new EmpleadoServices();
        //    var empleados = empleadoServices.ListarEmpleados(); // Método para obtener todos los empleados
        //    JavaScriptSerializer js = new JavaScriptSerializer();
        //    return js.Serialize(empleados);
        //}

    }
}