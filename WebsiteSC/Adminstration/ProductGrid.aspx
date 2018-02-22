<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_ProductGrid, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>





<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
        <ContentTemplate>

          
     
           


            <div class="box-header" data-original-title>
                <h2 runat="server" id="H2"></h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon search"></i></a>
                    <asp:LinkButton runat="server" ID="LinkButton1"><i class="halflings-icon delete"></i></asp:LinkButton>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable" style="direction: rtl">
                    <thead>
                        <tr>
                            <th>نام کالا</th>
                            <th>گروه کالا</th>
                            <th>نام دپارتمان</th>
                            <th>قیمت</th>
                            <th>تخفیف</th>
                           <th>نویسنده</th>
                           <th>مترجم</th>
                            <th>ناشر</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <asp:Repeater runat="server" ID="rptProuduct" >
                                <ItemTemplate>

                                    <td class="right"><%#Eval("Good.Name") %></td>
                                    <td class="right"><%#Eval("Good.Grouping.Name") %> </td>
                                    <td class="right"><%#Eval("Good.CompanyInfo.ComanyName")%> </td>
                                    <td class="right" id="txt" runat="server"><%#Eval("Good.Price")%></td>
                                    <td class="right" id="Td1" runat="server"><%#Eval("Good.DiscountPayment")%></td>
                                    <td class="right" id="Td2" runat="server"><%#Eval("Autoer")%></td>
                                    <td class="right" id="Td3" runat="server"><%#Eval("Translator")%></td>
                                    <td class="right" id="Td4" runat="server"><%#Eval("Publisher")%></td>
                                 
                                 

                                    <td class="right">
                                        <a   href="/Adminstration/AddProduct.aspx"  class="btn btn-success"  target="_blank"/>ایجاد</a>
                                        <a href='<%#"/Adminstration/EditProduct.aspx?vID="+Eval("GoodID")%>' class="btn btn-info" target="_blank"   >ویرایش</a>
                                        <asp:Button Text="حذف" runat="server" CommandArgument='<%#Eval("GoodID")%>' CssClass="btn btn-warning" OnClick="btnDelete_Click" ID="btnDelete" />
                                       
                                    </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tr>
                    </tbody>
                </table>

                <div class="pagination pagination-centered">
                    <ul style="text-align: center">
          
                           <li><a class="btn btn-danger" href="AddProduct.aspx">;محصول جدید
                                        </a>
                                        </li>
                    </ul>

                </div>

                <div>

                    <a class="btn btn-success" href="#" runat="server" id="A1"></a>
                </div>
            </div>

           
            
            <asp:HiddenField ID="HiddenField1" runat="server" />


           
            <script src='/Adminstration/js/jquery.dataTables.min.js'></script>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
