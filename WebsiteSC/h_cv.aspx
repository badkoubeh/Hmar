<%@ page language="C#" autoeventwireup="true" inherits="h_cv, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="head" runat="server" ID="ctl001">
    <link rel="stylesheet" href="vendor/fooTable/css/footable.core.min.css" />
    <style>
        th {
            text-align: right;
        }
    </style>
   
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
                <h2 class="font-light m-b-xs">لیست پرسنل دریایی 
                </h2>
                <small>برای مشاهده جزییات  رزومه پرسنل روی هر ردیف کلیک کنید </small>
            </div>
        </div>
    </div>


    <div class="content animate-panel">

        <div class="row">
              <div class="col-md-3">
            <div class="hpanel">
                <div class="panel-body">
                    <div class="m-b-md">
                        <h4>
                            جستجو 
                        </h4>
                        <small>
                            شما میتوانید  پرسنل دریایی  مورد نظر خود را جستجو کنید
                        </small>
                    </div>

                  <div class="form-group">
                        <label class="control-label">عنوان شغلی </label>
                        <div class="input-group">
                            <asp:DropDownList ID="txtJobf" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" AutoPostBack="true" OnSelectedIndexChanged="txtJobf_SelectedIndexChanged"></asp:DropDownList>
                                
                                
                        </div>
                    </div>
                 <div class="form-group">
                        <label class="control-label">سمت</label>
                        <div class="input-group">
                               <asp:DropDownList ID="txtTitlef" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">محدوده </label>
                        <div class="input-group">
                           <asp:DropDownList ID="txtrestf" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                        </div>
                    </div>
                 
                    

                    <asp:Button runat="server" ID="btnSerach" class="btn btn-success btn-block" Text="جستجو" OnClick="btnSerach_Click"></asp:Button>

                </div>
                </div>
                  </div>
            
            <div class="col-lg-9">
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
                                    <th>عنوان شغلی</th>
                                    <th>سمت </th>
                                        <th> </th>
                                   
                                    <th data-hide="all">محدوده</th>
                                    <th data-hide="all">عنوان شعلی </th>

                                    <th data-hide="all">دوره ها</th>
                                    <th data-hide="all">جزییات </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater runat="server" ID="rptCV">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("Profile.FirstName") %></td>
                                            <td><%#Eval("Profile.LastName") %></td>
                                            <td><%# Eval("Constant.StatuceName")%></td>
                                            <td><%# Eval("Constant1.StatuceName")%></td>
                                          <td>       <a class="btn btn-info btn-sm" runat="server" id="btnMoreInfo" href='<%#"h_cv_dte.aspx?ID="+Eval("ID")%>'> اطلاعات بیشتر</a></td>
                                            <td><%# Eval("Constant2.StatuceName")%></td>
                                            <td><%# Eval("Constant3.StatuceName")%></td>
                                            <td><span class="fa fa-certificate"></span>
                                                <div>
                                                    <%#Eval("Govahiname")%>
                                                </div>

                                            </td>
                                            <td>
                                                <%#Eval("description")%>
                                            </td>

                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="5" dir="ltr">
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
