<%@ Page Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="webasp.WebForm1" Title="giay Thời trang PHHT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Con1" runat="server">
    

    <div>
        
         <div id="slider">
      <div id="slider-holder">
        <ul>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img src="css/images/slide2.jpg" alt="" /></a></li>
        </ul>
      </div>
      <div id="slider-nav"> <a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a> </div>
    </div>
       
        <br />
        <asp:Image ID="Image1" runat="server" Height="47px" ImageUrl="~/Anh/new.jpeg" 
            Width="82px" />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="ObjectDataSource2"
             RepeatColumns="4" Width="100%" DataKeyField="Product_ID"  RepeatDirection="Horizontal"
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [tbl_Product]">
            <Columns>
                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Images") %>'></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="64px" ImageUrl='<%# "images/"+Eval("Image") %>' Width="178px" 
                            PostBackUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>'/>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("Product_Name") %>'
                             NavigateUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>'></asp:HyperLink>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price_Export") %>'></asp:Label>
                        <asp:Label ID="Label6" runat="server" ForeColor="#FF0066">VND</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="webasp.net.DataSetTableAdapters.tbl_ProductTableAdapter" UpdateMethod="Update">
          
        </asp:ObjectDataSource>
        <hr style="height: -15px" />
         <div style=" margin-left:5px;">
              <asp:DataList ID="sanpham" runat="server" HorizontalAlign="Center" 
        RepeatColumns="4" Width="100%" DataKeyField="Product_ID"  RepeatDirection="Horizontal"
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [tbl_Product]"
                  >
                 
                   
        <ItemTemplate>
        <div class="khungsanpham">
        <div class="khunganh">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="170px" Width="150px"
                        ImageUrl='<%# "images/"+Eval("Image") %>' 
          
                PostBackUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>'/>
         </div>
            <div class="dong">
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="10pt" 
                    ForeColor="#333333" Text='<%# Eval("Product_Name") %>' 
                    NavigateUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>' Font-Underline="False"
                   ></asp:HyperLink>
             </div>
             <div class="dong">
                &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#CC0000" 
                    Text='<%# Eval("Price_Export") %>' Font-Size="10pt"></asp:Label>
                <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text="VNĐ" 
                     Font-Size="10pt"></asp:Label>
           
                </div>
                </div>
                </ItemTemplate>
        </asp:DataList>
        </div>
        <div style="float:right; margin-right:3px"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="HangMoiVe.aspx">Xem thêm&gt;&gt;</asp:LinkButton></div>
</div>
          
</asp:Content>
