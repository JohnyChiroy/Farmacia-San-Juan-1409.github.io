using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SYSFARMACIASANJUAN.Pages
{
    public partial class ArchivoPrueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscarEmpleadoID_Click(object sender, EventArgs e)
        {
            empleadosTable.Rows.Clear();

            //string empleadoId = tbBuscarEmpleadoID.Text.Trim();
            //Console.WriteLine(empleadoId);

            //if (!string.IsNullOrEmpty(empleadoId))
            //{
            //    EmpleadoServices empleadoServices = new EmpleadoServices();
            //    List<Empleado> empleados = empleadoServices.ObtenerEmpleadoPorId(empleadoId);

            //    // Limpiar la tabla antes de llenarla con los nuevos datos
            //    empleadosTable.Rows.Clear();

            //    if (empleados != null && empleados.Any())
            //    {
            //        // Crear la fila de encabezado (si no está ya creada)
            //        if (empleadosTable.Rows.Count == 0)
            //        {
            //            TableHeaderRow header = new TableHeaderRow();
            //            header.Cells.Add(new TableHeaderCell() { Text = "Código" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Nombre Completo" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Cui" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Nit" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Fecha Nacimiento" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Fecha Ingreso" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Dirección" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Tel. Casa" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Num. Celular" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Género" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Estado" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Puesto" });
            //            header.Cells.Add(new TableHeaderCell() { Text = "Acción" });
            //            empleadosTable.Rows.Add(header);
            //        }

            //        // Iterar sobre la lista de empleados y crear las filas dinámicas
            //        foreach (var empleado in empleados)
            //        {
            //            TableRow row = new TableRow();

            //            row.Cells.Add(new TableCell { Text = empleado.idEmpleado.ToString() });
            //            row.Cells.Add(new TableCell { Text = $"{empleado.primerNombre} {empleado.segundoNombre} {empleado.tercerNombre} {empleado.primerApellido} {empleado.segundoApellido} {empleado.apellidoCasada}" });
            //            row.Cells.Add(new TableCell { Text = empleado.cui.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.nit.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.fechaNacimiento.ToString("dd-MM-yyyy") });
            //            row.Cells.Add(new TableCell { Text = empleado.fechaIngreso.ToString("dd-MM-yyyy") });
            //            row.Cells.Add(new TableCell { Text = empleado.direccion.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.telefonoCasa.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.telefonoMovil.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.genero.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.estado.ToString() });
            //            row.Cells.Add(new TableCell { Text = empleado.puesto.ToString() });

            //            // Crear la celda de acción con el botón de modificar
            //            TableCell actionCell = new TableCell();
            //            Button btnModificar = new Button
            //            {
            //                Text = "Modificar",
            //                CommandArgument = empleado.idEmpleado.ToString(),
            //                CommandName = "Modificar"
            //            };
            //            btnModificar.Click += BtnModificar_Click;
            //            actionCell.Controls.Add(btnModificar);

            //            row.Cells.Add(actionCell);

            //            // Agregar la fila a la tabla
            //            empleadosTable.Rows.Add(row);
            //        }
            //    }
            //    else
            //    {
            //        // Mostrar mensaje si no se encuentra ningún empleado
            //        empleadosTable.Rows.Clear();
            //        empleadosTable.Rows.Add(new TableRow { Cells = { new TableCell { Text = "No se encontraron empleados." } } });
            //    }
            //}
            //else
            //{
            //    // Mostrar mensaje de error si el ID no es válido
            //    // Puedes agregar un Label para mostrar errores en la interfaz
            //}
        }
    }
}