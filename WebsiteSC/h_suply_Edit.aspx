<%@ page language="C#" autoeventwireup="true" inherits="h_suply_Edit, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="head" runat="server" ID="ctrl0">
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
            text-align: left;
            background-color: #ddd3d3;
        }
    </style>
    <link rel="stylesheet" href="vendor/summernote/dist/summernote.css" />
    <link rel="stylesheet" href="vendor/summernote/dist/summernote-bs3.css" />
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl001">
    <asp:HiddenField runat="server" ID="TXTDESC" ClientIDMode="Static" />
    <asp:HiddenField runat="server" ID="txtGovahinameh" ClientIDMode="Static" />
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
                        <li><a href="Index.aspx">صفحه اصلی </a></li>
                      
                         <li>
                            <a href="h_sup_view.aspx" class="btn btn-info btn-sm">  تجهیزات من<i class="fa fa-eye"></i></a>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">تامین تجهیزات
                </h2>
                <small>شما می توانید تجهیزات  خود را اصلاح   نمایید </small>
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
                        تجهیزات 
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">


                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2  col-sm-push-10 control-label">دسته بندی تجهیزات </label>

                                <div class="col-sm-10 col-sm-pull-2">
                                    <div class="row">

                                        <div class="col-md-6 col-md-push-6">
                                            <asp:DropDownList runat="server" ID="txtGroupMaster" placeholder="عنوان" class="form-control" OnSelectedIndexChanged="txtGroupMaster_SelectedIndexChanged"
                                                DataValueField="ID" DataTextField="StatuceName" AutoPostBack="true" />

                                        </div>


                                        <div class="col-md-6 col-md-pull-6">
                                            <asp:DropDownList runat="server" ID="txtGroupDte" placeholder="محدودیت" onkeypress='return isNumberKey(event);' class="form-control" DataValueField="ID" DataTextField="StatuceName" />
                                        </div>

                                    </div>
                                </div>
                                </div>
                              <div class="hr-line-dashed"></div>
                                       <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-12 ">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نوع خدمت </label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                         <asp:DropDownList runat="server" ID="txtServiceKind" placeholder="نوع خدمت" onkeypress='return isNumberKey(event);' class="form-control" DataValueField="ID" DataTextField="StatuceName" />

                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                <div class="hr-line-dashed"></div>
                              <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نام محصول</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                        <input type="text" runat="server" id="txtName" placeholder="نام محصول" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نام برند</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                         <input type="text" runat="server" id="txtBrandName" placeholder="نام برند" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                                            <div class="hr-line-dashed"></div>
                              <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label"> مدل</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                        <input type="text" runat="server" id="txtModel" placeholder="مدل" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">وضعیت</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                            <asp:DropDownList runat="server" ID="txtGoodsState" placeholder="محدودیت" onkeypress='return isNumberKey(event);' class="form-control" DataValueField="ID" DataTextField="StatuceName" />
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                                            <div class="hr-line-dashed"></div>
                              <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label"> موجودی انبار</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                        <input type="text" runat="server" id="txtCount" onkeypress='return isNumberKey(event);' placeholder="موجودی انبار" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">قیمت به ریال</label>
                                                 <div class="col-sm-10 col-sm-pull-2">
                                                <input type="text" runat="server" id="txtPrice" onkeypress='return isNumberKey(event);' placeholder="قیمت به ریال" class="form-control input-lg m-b" />
                                            </div>
                                                </div>
                                        </div>

                                    </div>
                                </div>
                                         <div class="hr-line-dashed"></div>
                              <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label"> محل انبار</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                        <input type="text" runat="server" id="txtWarehouse" placeholder="محل انبار" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نحوه پرداخت </label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                            <asp:DropDownList runat="server" ID="txtPayCondition" placeholder="محدودیت" onkeypress='return isNumberKey(event);' class="form-control" DataValueField="ID" DataTextField="StatuceName" />
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                       
                                                            <div class="hr-line-dashed"></div>

                               <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label"> وزن </label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                        <input type="text" runat="server" id="txtWight" onkeypress='return isNumberKey(event);' placeholder="وزن" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">ظرفیت </label>
                                                 <div class="col-sm-10 col-sm-pull-2">
                                                <input type="text" runat="server" id="txtCapacity" onkeypress='return isNumberKey(event);' placeholder="ظرفیت" class="form-control input-lg m-b" />
                                            </div>
                                                </div>
                                        </div>

                                    </div>
                                </div>
                             <div class="hr-line-dashed"></div>

                               <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label"> توان ورودی بر حسب وات </label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                        <input type="text" runat="server" id="txtInPower" onkeypress='return isNumberKey(event);' placeholder="توان ورودی" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">توان خروجی بر حسب وات </label>
                                                 <div class="col-sm-10 col-sm-pull-2">
                                                <input type="text" runat="server" id="txtOutPower" onkeypress='return isNumberKey(event);' placeholder="توان خروجی" class="form-control input-lg m-b" />
                                            </div>
                                                </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                       
                                <div class="form-group">
                                    <label class="col-sm-2  col-sm-push-10 control-label">ابعاد محصول برحسب سانتی متر</label>

                                    <div class="col-sm-10 col-sm-pull-2">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <input type="text" runat="server" id="txtlength" placeholder="طول" onkeypress='return isNumberKey(event);' class="form-control" /></div>
                                            <div class="col-md-4">
                                                <input type="text" runat="server" id="txtWidth" placeholder="عرض" onkeypress='return isNumberKey(event);'  class="form-control" /></div>
                                            <div class="col-md-4">
                                                <input type="text" runat="server" id="txtHeight" placeholder="ارتفاع" onkeypress='return isNumberKey(event);' class="form-control" /></div>
                                        </div>
                                    </div>
                                </div>

                             <div class="hr-line-dashed"></div>
                              
                               <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-8 col-sm-push-4 control-label">دارای تاییده دریایی است؟</label>

                                                <div class="col-sm-4 col-sm-pull-8">
                                                         <div class="checkbox checkbox-inline">
                                    <asp:CheckBox runat="server"  ID="txtHasSCer"  Checked="false"/>
                                    <label for="inlineCheckbox1"> &nbsp&nbsp&nbsp بله</label>
                                </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                           <div class="row">
                                                <label class="col-sm-8 col-sm-push-4 control-label">دارای تاییدیه در نفت و گاز هست ؟</label>

                                                <div class="col-sm-4 col-sm-pull-8">
                                                         <div class="checkbox checkbox-inline">
                                    <asp:CheckBox runat="server"  ID="txtHasOilCer"  Checked="false"/>
                                    <label for="inlineCheckbox1"> &nbsp&nbsp&nbsp بله</label>
                                </div>

                                                </div>
                                            </div>
                                            
                                    </div>
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
                                                        توضیحات محصل
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="summernote" runat="server" id="txtDescription" clientidmode="Static">
                                                            <p>
                                                                هر توضیحی که مربوط به کالا و نحوه تحویل و شرایط ویژه شما هست در این قسمت یادداشت نمایید
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            <div class="form-group">
                                    <div class="col-sm-12">

                                        <asp:Button runat="server" ID="Button1" class="btn btn-primary" Text="ذخیره اطلاعات" OnClientClick="myfun()" OnClick="Button1_Click"></asp:Button>
                                    </div>
                                </div>
                         
                               
                            </div>

                                
                        </div>
                    </div>
                </div>
            </div>
       
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="footer" ID="ctl002">
    <script src="vendor/summernote/dist/summernote.min.js"></script>



    <script>

        function myfun() {
            var MyDiv1 = $('#txtDescription').code()
            document.getElementById("TXTDESC").value = MyDiv1;
           

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

        });

    </script>

</asp:Content>

