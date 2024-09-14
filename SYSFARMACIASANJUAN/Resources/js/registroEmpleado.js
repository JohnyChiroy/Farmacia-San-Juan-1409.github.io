document.addEventListener('DOMContentLoaded', function () {
    // Mostrar el modal cuando se hace clic en el botón
    document.querySelector('.botonRegistrarEmpleado').addEventListener('click', function () {
        document.getElementById('modalRegistrarEmpleado').style.display = 'flex';
    });

    // Cerrar el modal cuando se hace clic en el botón de cerrar
    document.querySelector('.close').addEventListener('click', function () {
        document.getElementById('modalRegistrarEmpleado').style.display = 'none';
    });

    // Cerrar el modal cuando se hace clic fuera del modal
    window.addEventListener('click', function (event) {
        if (event.target == document.getElementById('modalRegistrarEmpleado')) {
            document.getElementById('modalRegistrarEmpleado').style.display = 'none';
        }
    });
});