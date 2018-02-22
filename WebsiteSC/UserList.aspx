<%@ page language="C#" autoeventwireup="true" inherits="UserList, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>


<asp:Content ContentPlaceHolderID="head" runat="server" ID="ctl001">
    <link rel="stylesheet" href="vendor/fooTable/css/footable.core.min.css" />
    <style>
        th {
            text-align: right;
        }
    </style>
     <script>
        function myscript( id )
        {
            document.getElementById("currentDeleteID").value = id;
        
            $('#myModal').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ct002">
      <asp:HiddenField   runat="server" ID="currentDeleteID" ClientIDMode="Static" />
    <div class="normalheader transition animated fadeIn">
        <div class="hpanel">
            <div class="panel-body">
                <a class="small-header-action" href="#">
                    <div class="clip-header">
                        <i class="fa fa-arrow-up"></i>
                    </div>
                </a>

                <div id="hbreadcrumb" class="pull-left m-t-lg">
                    <ol class="hbreadcrumb breadcrumb">
                       
                        <li>
                            <a href="h_cv_ins.aspx" class="btn btn-info btn-sm">اضافه کردن پرسنل جدید<i class="fa fa-plus"></i></a>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">لیست کاربران 
                </h2>
                <small> </small>
            </div>
        </div>
    </div>


    <div class="content animate-panel">

        <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                        تامین پرسنل دریایی 
                    </div>
                    <div class="panel-body">
                        <input type="text" class="form-control input-sm m-b-md" id="filter" placeholder="Search in table">
                        <table id="example1" class="footable table table-stripped toggle-arrow-tiny" data-page-size="8" data-filter="#filter">
                            <thead>
                                <tr>

                                    <th data-toggle="true">نام </th>
                                    <th>نام خانوادگی </th>
                                    <th>ایمیل</th>
                                    <th>نلفن همراه  </th>
                                        <th>تایید</th>
                                    <th></th>
                                   
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater runat="server" ID="rptCV">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("FirstName") %></td>
                                            <td><%#Eval("LastName") %></td>
                                            <td><%# Eval("Email")%></td>
                                            <td><%# Eval("CellPhone")%></td> 
                                            <th> <asp:CheckBox Checked='<%# (Eval("isOk") != null )  ? Eval("isOk"):Convert.ToBoolean(0)%> '  Enabled="false" runat="server" ID="cheksf"/></th>
                                              <td> 
             <a class="btn btn-info btn-sm" runat="server" id="btnMoreInfo" href='<%#"h_cv_dte.aspx?ID="+Eval("ID")%>'> اطلاعات بیشتر</a>
                  <a class ="btn btn-primary btn-sm" runat="server" id="btnEdit" href='<%#"h_cv_Edit.aspx?ID="+Eval("ID") %>'>ویرایش</a>
                        <button type="button" class="btn btn-danger btn-sm" runat="server" id="btndelte"  title='<%#Eval("ID") %>'  onclick="myscript(this.title )"  >
                           حذف
                     
                    </button>
                                                   <asp:Button runat="server" CssClass="btn btn-danger" Text="فعال/غیر فعال"  ID="btnisok" CommandArgument='<%#Eval("ID") %>' OnClick="btnisok_Click" />
                    </td>
                                         

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
         <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="color-line"></div>
                                <div class="modal-header text-center">
                                    <h4 class="modal-title">هشدار </h4>
                                    <small class="font-bold">حدف ردیف انتخاب شده </small>
                                </div>
                                <div class="modal-body">
                                    <p>توجه داشته باشید بعد از حذف این ردیف دیگر قادر به بازیابی اطلاعات آن نخواهید بود</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">انصراف</button>
                                    <asp:LinkButton ID="btnDelete" OnClick="btnDelete_Click" runat="server" class="btn btn-danger">حذف</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="footer" runat="server" ID="ctl003">
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
