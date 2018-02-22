<%@ page language="C#" autoeventwireup="true" inherits="h_Shipbuilding_ins, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>
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
    <script src="js/fa.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl001">
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
                            <a href="h_Shipbuilding_view.aspx" class="btn btn-info btn-sm"> کشتی سازی ها من<i class="fa fa-eye"></i></a>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">کشتی سازی جدید
                </h2>
                <small>شما می توانید کشتی سازی خود را به لیست اضافه نمایید </small>
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
                            کشتی سازی جدید
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label"> نام شرکت</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtName" placeholder=".نام شرکت" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                           <label class="col-sm-2 col-sm-push-10 control-label">سال تاسیس</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtEstablishedYear" placeholder=".سال تاسیس" onkeypress='return isNumberKey(event);' class="form-control input-lg m-b" />

                                                </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                  
                                                <label class="col-sm-2 col-sm-push-10 control-label">آدرس</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                <input type="text" runat="server" id="txtAddress" placeholder="آدرس" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        
                                
                              
                              
                         
                                
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">ظرفیت خالی</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtCapacity" placeholder="ظرفیت خالی" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">تعداد شناور در حال ساخت</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtCountOfShip" onkeypress='return isNumberKey(event);' placeholder="تعداد شناور در حال ساخت" class="form-control input-lg m-b" />

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">موقعیت کشتی سازی</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <asp:DropDownList runat="server" ID="txtBandar" DataTextField="StatuceName" DataValueField="ID" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نوع کشتی تخصصی</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <asp:DropDownList runat="server" ID="txtShipType" DataTextField="StatuceName" DataValueField="ID" class="form-control input-lg m-b" />

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">سیستم به آب اندازی</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtWaterSystem" placeholder="سیستم به آب اندازی" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">ظرفیت به آب ندازی</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtWaterCapacity" onkeypress='return isNumberKey(event);' placeholder="ظرفیت به آب ندازی" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                 <div class="row">
                        <div class="col-md-12">
                            <fieldset>
                                <legend>
                                  مشخصات خاص
                                </legend>
                              
                                
                                <div class="checkbox checkbox-inline">
                                    <asp:CheckBox runat="server"  ID="txtBankingFacilities" />
                                    <label for="inlineCheckbox1"> &nbsp&nbsp&nbsp قابلیت ارائه تسهیلات بانکی</label>
                                </div>
                               
                            </fieldset>
                        </div>
                                     </div>
                                
                                <div class="form-group">
                                  <div class="col-sm-12">
                            
                                        <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="ذخیره اطلاعات" OnClick="btnSave_Click"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    
</asp:Content>
