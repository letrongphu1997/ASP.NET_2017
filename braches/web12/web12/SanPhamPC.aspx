<%@ Page Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="SanPhamPC.aspx.cs" Inherits="web12.WebForm5" Title="Sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Con1" runat="server">
    <div class="daukhungmain">
    <asp:Label ID="lblTieuDe" runat="server" Font-Bold="False" Font-Names="Arial" 
        Font-Size="Large" ForeColor="#333333"></asp:Label>
    </div>
    
    <asp:DataList ID="sanpham1" runat="server" HorizontalAlign="Center" 
        RepeatColumns="3" Width="100%" DataKeyField="Product_ID" 
        RepeatDirection="Horizontal"
         ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [tbl_Product]" DataSourceID="SqlDataSource1"
        >
        <ItemTemplate>
            <asp:ImageButton ID="Image5" runat="server" Height="109px" ImageUrl='<%# "images/"+Eval("Image") %>' Width="146px" PostBackUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>' />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("Product_Name") %>'></asp:HyperLink>
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
      
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Product]"></asp:SqlDataSource>
      

</asp:Content>
