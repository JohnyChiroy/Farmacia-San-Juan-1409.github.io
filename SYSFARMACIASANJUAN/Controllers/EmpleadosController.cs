using SYSFARMACIASANJUAN.Bussines;
using SYSFARMACIASANJUAN.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.UI.Adapters;

namespace SYSFARMACIASANJUAN.Controllers
{
    public class EmpleadosController : ApiController
    {
        private EmpleadoServices empleadoServices = new EmpleadoServices();


        //Controla el poder agregar empleados
        [HttpPost]
        [Route("api/empleados")]
        public IHttpActionResult AgregarEmpleado([FromBody] Empleado empleado)
        {
            if (empleado == null)
            {
                return BadRequest("Empleado no puede ser nulo");
            }

            try
            {
                empleadoServices.MantenimientoAgregarEmpleado(empleado);
                return Ok("Empleado agregado exitosamente");
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [HttpGet]
        [Route("api/empleados")]
        public IHttpActionResult GetEmpleados()
        {
            List<Empleado> empleados = empleadoServices.ListarEmpleados();

            if (empleados == null || empleados.Count == 0)
            {
                return NotFound();
            }

            return Ok(empleados);
        }

        //Controla el poder listarEmpleados por el id
        [HttpGet]
        [Route("api/empleados/{id}")]
        public IHttpActionResult ObtenerEmpleado(string id)
        {
            List<Empleado> empleados = empleadoServices.ObtenerEmpleadosPorId(id);

            if (empleados == null || empleados.Count == 0)
            {
                return NotFound();
            }

            return Ok(empleados);
        }

        [HttpPost]
        [Route("api/empleados/ModificarEmpleado")]
        public IHttpActionResult ModificarEmpleado([FromBody] Empleado empleado)
        {
            if (empleado == null)
            {
                return BadRequest("Empleado no proporcionado.");
            }

            // Agrega registros de depuración para verificar los valores recibidos
            System.Diagnostics.Debug.WriteLine("Empleado recibido: " + empleado.primerNombre);

            try
            {
                empleadoServices.ModificarEmpleado(empleado);
                return Ok(new { success = true, message = "Empleado modificado exitosamente." });
            }
            catch (Exception ex)
            {
                // Manejar el error adecuadamente
                return InternalServerError(new Exception("Error al modificar empleado: " + ex.Message));
            }
        }
    }
}