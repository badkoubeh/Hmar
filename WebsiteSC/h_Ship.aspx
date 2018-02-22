<%@ page language="C#" autoeventwireup="true" inherits="h_Ship, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content ContentPlaceHolderID="head" runat="server" ID="Content1">
    <link rel="stylesheet" href="vendor/fooTable/css/footable.core.min.css" />
    <style>
        th {
            text-align: right;
        }
    </style>
   
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
                            <a href="h_ship_ins.aspx" class="btn btn-info btn-sm">اضافه کردن کشتی جدید<i class="fa fa-plus"></i></a>
                        </li>
               
                </ol>
            </div>
            <h2 class="font-light m-b-xs">
              لیست کشتی ها
            </h2>
            <small>شما میتوانید لیست کشتی ها را اینجا مشاهده کنید </small>
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
                            شما میتوانید از طریق ایتم های زیر محصولات و خدمات مورد نظر خود را گروه بندی کنید
                        </small>
                    </div>

                  <%--<div class="form-group">
                        <label class="control-label">نوع مالکیت</label>
                        <div class="input-group">
                            <asp:DropDownList ID="txtPropertyType" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                                
                        </div>
                    </div>--%>
                     <div class="form-group">
                        <label class="control-label">نوع کشتی</label>
                        <div class="input-group">
                               <asp:DropDownList ID="txtShipKind" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">وضعیت کشتی</label>
                        <div class="input-group">
                            <asp:DropDownList ID="txtPropertyType" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                                
                        </div>
                    </div>
                   <%-- <div class="form-group">
                        <label class="control-label">پرچم ثبت شده </label>
                        <div class="input-group">
                           <asp:DropDownList ID="txtFlagCountry" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">کشور سازنده </label>
                        <div class="input-group">
                             <asp:DropDownList ID="txtManufacturingCountry" runat="server" class="form-control m-b" name="account" DataTextField="StatuceName" DataValueField="ID" />
                        </div>
                    </div>--%>
           
                     <%-- <div class="form-group">
                        <label class="control-label">چارتر </label>
                        <div class="input-group">
                            <select class="form-control m-b" name="account">
                                <option selected>بله</option>
                                <option>خیر</option>
                            </select>
                        </div>
                    </div>--%>
                    

                        <asp:Button ID="btnsearch" runat="server" Text="جستجو" OnClick="btnsearch_Click"  class="btn btn-success btn-block"></asp:Button>

                </div>

            </div>

        </div>
        <div class="col-md-9">
     
            <div class="row">

           <div class="col-lg-12">
          
                              <div class="hpanel">
                <div class="panel-heading">
                    <div class="panel-tools">
                        <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                        <a class="closebox"><i class="fa fa-times"></i></a>
                    </div>
                 لیست کشتی ها
                </div>
                <div class="panel-body">
                      <input type="text" class="form-control input-sm m-b-md" id="filter" placeholder="جستجو در تمامی ایتم ها" />
                     <table id="example1" class="footable table table-stripped toggle-arrow-tiny" data-page-size="8" data-filter="#filter">
                  <thead>
                <tr>
                    <th> پیشنهاد دهنده</th>
                 <th>نوع کشتی</th>
                    <th>سال ساخت</th>
                          <th>ابعاد اصلی</th>
                    <td>وضعیت کشتی</td>
                 <th></th>
                </tr>
                </thead>
     <tbody>
         <asp:Repeater runat="server" ID="rptShipData">
             <ItemTemplate>
         <tr>
         
               <td ><%#Eval("Constant1.StatuceName") %></td>
              <td>
         <%#Eval("Constant3.StatuceName") %>
             </td>
             <td>
                 <%#Eval("YearOfConstruction")%>
             </td>
              <td>
                 <%#Eval("length")+" * "+ Eval("Width")+" * " +Eval("Height")%>
             </td>
             <td>
                 <%#Eval("Constant4.StatuceName") %>
             </td>
             
               <td> <a class ="btn btn-info btn-sm" href="<%#"h_Ship_dte.aspx?ID="+Eval("ID") %>"> اطلاعات بیشتر</a>
                  
                  
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
   