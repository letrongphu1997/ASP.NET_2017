<%@ Page Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="web12.WebForm2" Title="Sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 328px;
        margin-left: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Con1" runat="server">
    <div style=" float:right; width:150px;">
       
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="web12.DataSet1TableAdapters.tbl_ProductTableAdapter" UpdateMethod="Update">
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
    <asp:DataList ID="DataList3" runat="server" CssClass="auto-style1" DataKeyField="Product_ID" DataSourceID="ObjectDataSource1">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="112px" ImageUrl='<%# "images/"+Eval("Image") %>' Width="98px" 
                PostBackUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>'/>
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("Product_Name") %>'></asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("Price_Export") %>'></asp:HyperLink>
            &nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="VND"></asp:Label>
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>
