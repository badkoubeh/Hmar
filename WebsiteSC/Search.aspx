<%@ page language="C#" autoeventwireup="true" inherits="Search, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="vendor/fooTable/css/footable.core.min.css" />
    <style>
        th {
            text-align:right;
        }
    </style>
</asp:Content>
<asp:Content    runat="server" ID="ctl01" ContentPlaceHolderID="ContentPlaceHolder1">
<div class="content animate-panel">

    <div class="row" >
        <div class="col-lg-12">
            <div class="hpanel">
                <div class="panel-heading">
                    <div class="panel-tools">
                        <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                        <a class="closebox"><i class="fa fa-times"></i></a>
                    </div>
                  List 
                </div>
                <div class="panel-body">
                    <input type="text" class="form-control input-sm m-b-md" id="filter" placeholder="Search in table"/>
                    <table id="example1" class="footable table table-stripped toggle-arrow-tiny" data-page-size="8" data-filter="#filter">
                        <thead>
                        <tr>

                            <th data-toggle="true">عنوان</th>
                            <th>تاریخ</th>
                            <th></th>
                            <th  data-hide="all">قیمت</th>
                            <th  data-hide="all">تعداد صفحات</th>
                            <th data-hide="all">چکیده</th>
                          
                            <th data-hide="all">تعداد بازدید</th>
                            <th data-hide="all"></th>
                        </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater runat="server" ID="rpt1" OnItemDataBound="rpt1_ItemDataBound">
                                <ItemTemplate>
                        <tr>
                            <td><%#Eval("Name") %></td>
                            <td><%#Eval("img2") %></td>
                            <td>
                                <div class="  float-e-margins">
                                <asp:LinkButton class="btn btn-primary " runat="server" ID="btnbuy" CommandArgument='<%#Eval("ID") %>' OnClick="Unnamed_Click"><i class="fa fa-cart-plus"></i><span class="bold">خرید</span> </asp:LinkButton>
                                <asp:LinkButton runat="server" ID="btnDownload" OnClick="btnDownload_Click" CommandArgument='<%#Eval("ID") %>' class="btn btn-success "><i class="fa fa-download"></i> <span class="bold">دریافت فایل</span></asp:LinkButton>
                               

                              
                            </div>
                        </div>
                            </td>
                                                        <td><%# (Eval("Price") == null ||(int)Eval("Price") == 0)  ? "رایگان" :Eval("Price")+ " تومان "%> </td>
                            <td><%#Eval("img1") %></td>
                            <td><%#Eval("Description")%></td>
                            
                            <td>  12</td>
                            <td> <a href="<%# "Fa_Details_Blog.aspx?ID="+Eval("ID") %>" class="btn btn-info "><i class="fa fa-paste"></i><span>اطلاعات بیشتر</span> </a></td>
                        </tr>
               </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="5">
                                <ul class="pagination pull-right"></ul>
                            </td>
                        </tr>
                        </tfoot>
                    </table>

                </div>
            </div>
</div>
        </div>
    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="footer" ID="fort" runat="server">
 <script src="vendor/jquery/dist/jquery.min.js"></script>
<script src="vendor/jquery-ui/jquery-ui.min.js"></script>
<script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendor/metisMenu/dist/metisMenu.min.js"></script>
<script src="vendor/iCheck/icheck.min.js"></script>
<script src="vendor/sparkline/index.js"></script>
<script src="vendor/fooTable/dist/footable.all.min.js"></script>
    <script>
        
    $(function () {

        // Initialize Example 1
        $('#example1').footable();

        // Initialize Example 2
        $('#example2').footable();


    });

</script>

</asp:Content>
