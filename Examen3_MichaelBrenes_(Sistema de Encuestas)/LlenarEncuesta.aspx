<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="LlenarEncuesta.aspx.cs" Inherits="Examen3_MichaelBrenes__Sistema_de_Encuestas_.LlenarEncuesta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>&nbsp;</h1>
        <h1>Encuesta </h1>
        <p>&nbsp;</p>



    <div class="container text-center">
        ID: <asp:TextBox ID="tid" class="form-control" runat="server"></asp:TextBox>
        <br />
        Nombre: <asp:TextBox ID="tnombre" class="form-control" runat="server"></asp:TextBox>
        <br />
        Correo Eléctronico: <asp:TextBox ID="tcorreo" class="form-control" runat="server"></asp:TextBox>
        <br />
        Fecha Nacimiento: <asp:TextBox ID="ttelefono" class="form-control" runat="server"></asp:TextBox>
        
        Partido Poolítico: <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    </div>

</asp:Content>