<%@ Page Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="webasp.WebForm2" Title="Sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Con1" runat="server">
    <link href="CSS/Giaodien.css" rel="stylesheet" type="text/css" />
<div class="daukhungmain">
    <asp:Label ID="lblTieuDe" runat="server" Font-Bold="False" Font-Names="Arial" 
        Font-Size="Large" ForeColor="#333333"></asp:Label>
    </div>
    <asp:DataList ID="sanpham" runat="server" HorizontalAlign="Center" 
        RepeatColumns="3" Width="100%" DataKeyField="Product_ID" 
        onselectedindexchanged="DataList3_SelectedIndexChanged" 
        RepeatDirection="Horizontal" DataSourceID="ObjectDataSource1">
        <EditItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl='<%# "images/"+Eval("Image") %>' Width="153px" />
        </EditItemTemplate>
        <ItemTemplate>
           
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Eval("Product_Name") %>' />
            <br />
          
         
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# "images/"+Eval("Image") %>' />
            <asp:ImageButton ID="ImageButton2" runat="server" Height="64px" ImageUrl='<%# "images/"+Eval("Image") %>' Width="173px" />
            <br />
            Color:
            <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
            <br />
          
            Size:
            <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
            <br />
           
            Price_Export:
            <asp:Label ID="Price_ExportLabel" runat="server" Text='<%# Eval("Price_Export") %>' />
            <br />
        
            <br />
        
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="webasp.net.DataSetTableAdapters.tbl_ProductTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Product_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Type_ID" Type="Int32" />
            <asp:Parameter Name="Style_ID" Type="Int32" />
            <asp:Parameter Name="Producer_ID" Type="Int32" />
            <asp:Parameter Name="Supplier_ID" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Price_Import" Type="Double" />
            <asp:Parameter Name="Price_Export" Type="Double" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="Weight" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Type_ID" Type="Int32" />
            <asp:Parameter Name="Style_ID" Type="Int32" />
            <asp:Parameter Name="Producer_ID" Type="Int32" />
            <asp:Parameter Name="Supplier_ID" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Price_Import" Type="Double" />
            <asp:Parameter Name="Price_Export" Type="Double" />
            <asp:Parameter Name="Amount" Type="Int32" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Original_Product_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <div style=" float:right; width:150px;">
       
    </div>
</asp:Content>
