<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="webasp.Admin.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FindControl" TypeName="webasp.Admin.Admin">
        <SelectParameters>
            <asp:Parameter Name="id" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>
