<%@ Page Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="web12.WebForm1" Title="giay Thời trang PHHT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Con1" runat="server">
    

    <div>
        
     <div id="slider">
      <div id="slider-holder" style="width: 64%;border-radius: 7px;">
        <ul style="width:20%;">
          <li><a href="#"><img style="width: 64%;height: 417px;" src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img style="width: 64%;height: 417px;" src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img style="width: 64%;height: 417px;" src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img style="width: 64%;height: 417px;" src="css/images/slide2.jpg" alt="" /></a></li>
          <li><a href="#"><img style="width: 64%;height: 417px;" src="css/images/slide1.jpg" alt="" /></a></li>
          <li><a href="#"><img style="width: 64%;height: 417px;" src="css/images/slide2.jpg" alt="" /></a></li>
        </ul>

      </div>
      <div id="slider-nav"> <a href="#" class="prev">Previous</a> <a href="#" class="next">Next</a> </div>
    </div>
       
        <br />
        <asp:Image ID="Image1" runat="server" Height="47px" ImageUrl="~/Anh/new.jpeg" 
            Width="82px" />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="web12.DataSet1TableAdapters.tbl_ProductTableAdapter" UpdateMethod="Update">
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
        <hr style="height: -15px" />
         <div style=" margin-left:5px;">
              <asp:DataList ID="sanpham" runat="server" HorizontalAlign="Center" 
        RepeatColumns="3" Width="100%" DataKeyField="Product_ID"  RepeatDirection="Horizontal"
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="SELECT * FROM [tbl_Product]" DataSourceID="ObjectDataSource2"
                  >
                  <ItemTemplate>
                       <div class="khungsanpham">
                             <div class="khunganh">
                      <asp:ImageButton ID="ImageButton4" runat="server" Height="227px" ImageUrl='<%# "images/"+Eval("Image") %>' Width="174px"
                          PostBackUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>'
                          />
                                 </div>
                      <br />
                           <div class="dong">
                      <asp:HyperLink ID="HyperLink6" runat="server" Text='<%# Eval("Product_Name") %>' 
                          NavigateUrl='<%# "Chitiet.aspx?Product_ID="+Eval("Product_ID") %>'
                          Font-Underline="False" >

                      </asp:HyperLink>
                               </div>
                      
                           <div class="dong">
                      <asp:HyperLink ID="HyperLink7" runat="server" Text='<%# Eval("Price_Export") %>'></asp:HyperLink>
                      <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="VND"  Font-Size="10pt" ></asp:Label>
                               </div>
                      
                                 </div>
                  </ItemTemplate>
        </asp:DataList>
        </div>
        <div style="float:right; margin-right:3px"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="HangMoiVe.aspx">Xem thêm&gt;&gt;</asp:LinkButton></div>
</div>
          
</asp:Content>
