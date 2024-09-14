<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArchivoPrueba.aspx.cs" Inherits="SYSFARMACIASANJUAN.Pages.ArchivoPrueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                        <div class="contenedorBuscarEmpleadoID">
                    <asp:TextBox class="form-control me-2" placeholder="Buscar empleado por ID" aria-label="Search" id="tbBuscarEmpleadoID" runat="server"></asp:TextBox>
<%--                    <asp:Button class="btn btn-outline-success" runat="server" id="btnBuscarEmpleadoID" Text="Buscar" OnClick="BtnBuscarEmpleadoID_Click"/>--%>
                    <asp:Button class="btn btn-outline-success" runat="server" Text="Buscar" OnClick="BtnBuscarEmpleadoID_Click" />

                </div>
                <div id="contenedor-tabla">
                    <asp:Table ID="empleadosTable" runat="server" CssClass="table table-striped">
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
                    </asp:Table>
                </div>
    </form>
</body>
</html>
