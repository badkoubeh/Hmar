<%@ page language="C#" autoeventwireup="true" inherits="h_cv_ins_admin_, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstate="true" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="head" runat="server" ID="ctrl0">
        
<!--[if IE 8]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
   <script lang="javascript"  type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script> 
  
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false
            else
                return true;
        }
        
    </script>
    <style>
        th {
            text-align:left;
            background-color:#ddd3d3
        }
    </style>
    <link rel="stylesheet" href="vendor/summernote/dist/summernote.css" />
    <link rel="stylesheet" href="vendor/summernote/dist/summernote-bs3.css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl001">
     <asp:HiddenField runat="server" ID="TXTDESC"  ClientIDMode="Static"/>
         <asp:HiddenField runat="server" ID="txtGovahinameh"  ClientIDMode="Static"/>
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
                            <a href="h_cv_view.aspx" class="btn btn-info btn-sm">مشاهده اطلاعات من<i class="fa fa-eye"></i></a>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">پرسنل دریایی
                </h2>
                <small>شما می توانید اطلاعات و رزومه خود را به لیست اضافه نمایید </small>
            </div>
        </div>
    </div>


    <div class="content animate-panel">

        <div>



            <div class="row">
                <div class="col-lg-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools">
                                <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                                <a class="closebox"><i class="fa fa-times"></i></a>
                            </div>
                            پرسنل دریایی
                        </div>
                        <div class="panel-body">

                              <div class="form-horizontal">
																<ul class="list-unstyled">
								<li><span class="project__meta-icon">
                                    <i class="fa  fa-search">
                                    </i></span> <strong >چند کلمه از مشخصات پرسنلی که به دنبال آن هستید بنویسید</strong></li>
                                    <li><asp:TextBox runat="server" ID="MainContent_txtCo" ClientIDMode="Static" style="width:100%"/> </li>
                     
                                                                    
                                                                		</ul>
							</div>
                            <div class="form-horizontal">
                                    <div class="form-group">
                                    <label class="col-sm-2  col-sm-push-10 control-label">اطلاعات پرسنلی </label>

                                    <div class="col-sm-10 col-sm-pull-2">
                                        <div class="row">
                                            <div class="col-md-8 col-md-push-4">
                                            <div class="col-md-7 col-md-push-5">
                                              <label class="col-sm-2  col-sm-push-10 control-label" id="txtname0001"  runat="server" ClientIDMode="Static"  >اطلاعات پرسنلی </label>
                                                <asp:HiddenField    runat="server"  ID="txtIDHiden" ClientIDMode="Static"/>
                                            <div class="col-md-5  col-md-pull-7">
                                                      <label class="col-sm-2  col-sm-push-10 control-label" id="txtId0003"  runat="server" ClientIDMode="Static"  >  </label>
                                                </div>
                                            
                                            <div class="col-md-4 col-md-pull-8">
                                              
                                                </div>
                                        </div>
                                    </div>
                                </div>
                               
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-sm-2  col-sm-push-10 control-label">عنوان شغلی</label>

                                    <div class="col-sm-10 col-sm-pull-2">
                                        <div class="row">
                                            <div class="col-md-8 col-md-push-4">
                                            <div class="col-md-7 col-md-push-5">
                                                <asp:DropDownList runat="server" id="txtJobf" placeholder="عنوان" class="form-control"  DataValueField="ID" DataTextField="StatuceName" OnSelectedIndexChanged="txt_SelectedIndexChanged" AutoPostBack="true"/></div>
                                            <div class="col-md-5  col-md-pull-7">
                                                <asp:DropDownList  runat="server" id="txtTitlef" placeholder="سمت" onkeypress='return isNumberKey(event);'  class="form-control"  DataValueField="ID" DataTextField="StatuceName" /></div>
                                                </div>
                                            
                                            <div class="col-md-4 col-md-pull-8">
                                                <asp:DropDownList  runat="server" id="txtrestf" placeholder="محدودیت" onkeypress='return isNumberKey(event);' class="form-control"  DataValueField="ID" DataTextField="StatuceName" /></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                 
                                
                          

                               
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-sm-2  col-sm-push-10 control-label">  عنوان شغلی دوم</label>

                                    <div class="col-sm-10 col-sm-pull-2">
                                        <div class="row">
                                            <div class="col-md-8 col-md-push-4">
                                            <div class="col-md-7 col-md-push-5">
                                                <asp:DropDownList runat="server" id="txtjobS" placeholder="عنوان" class="form-control"  DataValueField="ID" DataTextField="StatuceName" OnSelectedIndexChanged="txtjobS_SelectedIndexChanged" AutoPostBack="true"/></div>
                                            <div class="col-md-5  col-md-pull-7">
                                                <asp:DropDownList  runat="server" id="txtTitelS" placeholder="سمت" onkeypress='return isNumberKey(event);'  class="form-control"  DataValueField="ID" DataTextField="StatuceName" /></div>
                                                </div>
                                            
                                            <div class="col-md-4 col-md-pull-8">
                                                <asp:DropDownList  runat="server" id="txtRestS" placeholder="محدودیت" onkeypress='return isNumberKey(event);' class="form-control"  DataValueField="ID" DataTextField="StatuceName" /></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                 <div class="content">

<div>

    <div class="row">
        <div class="col-lg-12">
            <div class="hpanel">
                <div class="panel-heading">
                    
                  گواهینامه ها
                </div>
                <div class="panel-body">
                    <div class="summernote"  runat="server" id="txtGovahiname"  ClientIDMode="Static">
                        <h3>گواهینامه ها </h3>
                        <p>لطفا گواهینامه های خود را به ترتیب در جدول زیر وارد نمایید</p>
                       <h3><br></h3>
<table class="table table-bordered">
    <thead>
        <tr>
<th> عنوان گواهی نامه</th>
<th>کد گواهی نامه</th>
<th>تاریخ دریافت گواهی نامه</th>
<th>تاریخ اعتبارگواهی نامه</th>
</tr>
    </thead>
<tbody>

<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
<tr>
<td><br></td>
<td><br></td>
<td><br></td>
<td><br></td>
</tr>
</tbody>
</table>
   
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="hpanel">
                <div class="panel-heading">
                    
                  رزومه شما
                </div>
                <div class="panel-body">
                    <div class="summernote"  runat="server" id="txtDescription" ClientIDMode="Static" >
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>
    </div>
                                
                                <div class="form-group">
                                    <div class="col-sm-12">
                            
                                        <asp:Button runat="server" ID="Button1" class="btn btn-primary" Text="ذخیره اطلاعات" OnClientClick="myfun()" OnClick="btnSave_Click"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content    runat="server" ContentPlaceHolderID="footer" ID="ctl002">
    <script src="vendor/summernote/dist/summernote.min.js"></script>
    

<script>

    function myfun()
    {
        var MyDiv1 = $('#txtDescription').code()
        document.getElementById("TXTDESC").value = MyDiv1;
        var MyDiv2 = $('#txtGovahiname').code()
        document.getElementById("txtGovahinameh").value = MyDiv2;

    }
    $(function () {

        // Initialize summernote plugin
        $('.summernote').summernote();

        var sHTML = $('.summernote').code();

        console.log(sHTML);

        $('.summernote1').summernote({
            toolbar: [
                ['headline', ['style']],
                ['style', ['bold', 'italic', 'underline', 'superscript', 'subscript', 'strikethrough', 'clear']],
                ['textsize', ['fontsize']],
                ['alignment', ['ul', 'ol', 'paragraph', 'lineheight']],
            ]
        });

        $('.summernote2').summernote({
            airMode: true,
        });
        //overriding jquery-ui.autocomplete .js functions
        $.ui.autocomplete.prototype._renderMenu = function (ul, items) {
            var self = this;
            //table definitions
            ul.append("<table  style='text-align:center' class='table table-striped table-bordered bootstrap-datatable datatable'><thead><tr  ><th style='text-align:center' ></th><th style='text-align:center'>نام   </th><th style='text-align:center'>نام خانوادگی   </th> <th style='text-align:center'>ایمیل  </th><th style='text-align:center'>شماره همراه  </th></tr></tr></thead><tbody></tbody></table>");
            $.each(items, function (index, item) {
                self._renderItemData(ul, ul.find("table tbody"), item);
            });
        };
        $.ui.autocomplete.prototype._renderItemData = function (ul, table, item) {
            return this._renderItem(table, item).data("ui-autocomplete-item", item);
        };
        $.ui.autocomplete.prototype._renderItem = function (table, item) {
            return $("<tr ></tr>")
              //.data( "item.autocomplete", item )
              .append("<td  > <button  onclick='myfunction(" + item.value.ID + ")' class='target'>ثبت</button></td><td>" + item.value.Name + "</td><td>" + item.value.Description
              + "</td><td>" + item.value.Discount + "</td><td>" + item.value.Code + "</td><td>")
              .appendTo(table);
        };
        //random json values

        $("#MainContent_txtCo").autocomplete({
            source: function (request, response) {
                var param = { keyword: $('#MainContent_txtCo ').val() };

                $.ajax({
                    url: "h_cv_ins.aspx/GetSuperList",
                    data: JSON.stringify(param),
                    dataType: "json",
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    dataFilter: function (data) { return data; },
                    success: function (data) {
                        response($.map(data.d, function (item) {
                            return {
                                value: item
                            }
                        }))
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(textStatus);
                    }
                });
            },

         
            minLength: 3
        });
    });
 
        function myfunction(id) {
            document.getElementById("txtId0003").innerHTML = id;
            
            document.getElementById("txtIDHiden").value = id;
           
            $.ajax({

                url: "h_cv_ins.aspx/Insertgood",
                data: JSON.stringify({ "Id": id }),

                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                dataFilter: function (data) { return data; },
                success: function (data) {

                    alert(data.d)
                    document.getElementById("txtname0001").innerHTML = data.d;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }

     

    </script>


</asp:Content>