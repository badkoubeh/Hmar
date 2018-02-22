﻿<%@ page language="C#" autoeventwireup="true" inherits="h_suply_view, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

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
                            <a href="h_sup_ins.aspx" class="btn btn-info btn-sm">اضافه کردن تجهیزات دریایی جدید<i class="fa fa-plus"></i></a>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">لیست تجهیزات دریایی 
                </h2>
                <small>مشاهده و جستجوی تجهیزات  </small>
            </div>
        </div>
    </div>


    <div class="content animate-panel">

        <div class="row">
       <%--    <div class="col-md-3">
            <div class="hpanel">
                <div class="panel-body">
                  

                    <ul class="h-list m-t">
                        <asp:Repeater runat="server">
                            <ItemTemplate>
                        <li ><a href="#"><i class="fa fa-folder"></i> Files</a></li>
                        </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>

            </div>
           

        </div>--%>
            <div class="col-md-12">
                <div class="hpanel">
                   
                    <div class="panel-body">
                        <input type="text" class="form-control input-sm m-b-md" id="filter" placeholder="جستجو در تمام ایتم ها"/>
                        <table id="example1" class="footable table table-stripped toggle-arrow-circle-filled" data-page-size="8" data-filter="#filter">
                            <thead>
                                <tr>

                                    <th data-toggle="true">گروه  </th>
                                    <th>زیر گروه </th>
                                    <th>نام </th>
                                    <th>برند  </th>
                                       <th>نوع خدمت  </th>
                                    <th>وضعیت</th>
                                    <th>  </th>
                                    <th data-hide="all">قیمت </th>
                                    <th data-hide="all">نحوه پرداخت </th>
                                    <th data-hide="all">وضعیت </th>
                                    <th data-hide="all">تاییدیه دریایی</th>
                                 
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater runat="server" ID="rptCV" OnItemDataBound="rptCV_ItemDataBound">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("Constant2.StatuceName") %></td>
                                            <td><%#Eval("Constant3.StatuceName") %></td>
                                            <td><%# Eval("Name")%></td>
                                            <td><%# Eval("BrandName")%></td>
                                              <td><%# Eval("Constant5.StatuceName")%></td>
                                                 <th> <asp:CheckBox Checked='<%# (Eval("IsActive") != null )  ? Eval("IsActive"):Convert.ToBoolean(0)%> '  Enabled="false" runat="server" ID="cheksf"/></th>
                                                         <td>
                                                           <a class ="btn btn-info btn-sm" href="<%#"h_suply_dte.aspx?ID="+Eval("ID") %>"> اطلاعات بیشتر</a>
                                                  <a class ="btn btn-primary btn-sm" href="<%#"h_suply_Edit.aspx?ID="+Eval("ID") %>">ویرایش</a>
                        <button type="button" class="btn btn-danger btn-sm" title="<%#Eval("ID") %>" onclick="myscript(this.title )" >
                        حذف
                    </button>
                                                             <asp:Button runat="server" CssClass="btn btn-danger" Text="فعال/غیر فعال"  ID="btnisok" Visible="false" CommandArgument='<%#Eval("ID") %>' OnClick="btnisok_Click" />
                                            </td>
                                            <td><%# Eval("Price")%></td>
                               
                                            <td><%# Eval("Constant.StatuceName")%></td>
                                            <td><%# Eval("Constant1.StatuceName")%></td>
                                            <td>
                                                <div>
                                                   <asp:CheckBox Checked='<%#Eval("HasSCer")%>' runat="server"  ID="txtid"/>
                                                </div>

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


