<%@ page language="C#" autoeventwireup="true" inherits="h_Shipbuilding, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>
    <asp:Content ContentPlaceHolderID="head" ID="ct000" runat="server">
    

        <!-- App styles -->
          <link rel="stylesheet" href="vendor/fooTable/css/footable.core.min.css" />

        <style>
            th {
                text-align:right
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
    <asp:Content runat="server" ID="ctl001" ContentPlaceHolderID="ContentPlaceHolder1" >
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
                                <a href="h_Shipbuilding_ins.aspx" class="btn btn-info btn-sm">اضافه کردن کشتی سازی جدید<i class="fa fa-eye"></i></a>
                            </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">
                  لیست کشتی سازی ها
                </h2>
                <small>شما میتوانید لیست کشتی ها را اینجا مشاهده کنید </small>
            </div>
        </div>
    </div>

    <div class="content animate-panel">

        <div class="row">
            '  <div class="col-md-3">
            <div class="hpanel">
                <div class="panel-body">
                    <div class="m-b-md">
                        <h4>
                            جستجو 
                        </h4>
                        <small>
                            شما میتوانید از طریق ایتم های زیر محصولات و خدمات مورد نظر خود را گروه بندی کنید
                        </small>
                    </div>

         
                     <div class="form-group">
                        <label class="control-label">نام شرکت </label>
                        <div class="input-group">
                               <input type="text" id="txtName" runat="server" class="form-control m-b" />
                        </div>
                    </div>
               
             <div class="form-group">
                        <label class="control-label">کشتی تخصصی</label>
                        <div class="input-group">
                               <asp:DropDownList ID="txtShipKind" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">موقعیت کشتی سازی</label>
                        <div class="input-group">
                            <asp:DropDownList ID="txtBandar" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                                
                        </div>
                    </div>
                      <div class="form-group">
                        <label class="control-label">قابلیت ارایه تسهیلات </label>
                        <div class="input-group">

                            <asp:CheckBox Checked="true" ID="chkTashilat" runat="server" />
                        </div>
                    </div>
                    

                    <asp:Button ID="btnsearch" runat="server" Text="جستجو" OnClick="btnsearch_Click"  class="btn btn-success btn-block"></asp:Button>

                </div>

            </div>

        </div>
            <div class="col-md-9">
     
             
          
                                  <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                     لیست کشتی سازی ها
                    </div>
                    <div class="panel-body">
                     <input type="text" class="form-control input-sm m-b-md" id="filter" placeholder="جستجو در تمامی ایتم ها" />
                     <table id="example1" class="footable table table-stripped toggle-arrow-tiny" data-page-size="8" data-filter="#filter">
               
                    <thead>
                    <tr>
                        <th>نام شرکت</th>
                        <th>موقعیت </th>
                         <th>نوع کشتی تخصصی </th>
                
                        <th>سیستم به آب اندازی</th>
                        <th>ظرفیت به آب ندازی</th>
                        <th></th>
                    </tr>
                    </thead>
         <tbody>
             <asp:Repeater runat="server" ID="rptShipData">
                 <ItemTemplate>
             <tr>
                 <td>
                     <%# Eval("Name") %>
                 </td>
                  <td>
                     <%# Eval("Constant1.StatuceName") %>
                 </td>
                 <td>  <%# Eval("Constant.StatuceName") %></td>
                
                  <td ><%#Eval("WaterSystem") %></td>
                       <td ><%#Eval("WaterCapacity") %></td>
          
                   <td> 
                 <a class ="btn btn-info btn-sm" href="<%#"h_Shipbuilding_Dte.aspx?ID="+Eval("ID") %>"> اطلاعات بیشتر</a>
                     
                     
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
    <asp:Content ContentPlaceHolderID ="footer" runat="server" ID="cttl002">



        <!-- DataTables -->
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

