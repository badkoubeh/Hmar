<%@ page language="C#" autoeventwireup="true" inherits="h_ship_edit, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

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
                        <li><a href="Index.aspx">صفحه اصلی </a></li>
                        
                        <li>
                            <a href="h_Ship_ch.aspx" class="btn btn-info btn-sm">کشتی های من<i class="fa fa-eye"></i></a>
                        </li>
                    </ol>
                </div>
                <h2 class="font-light m-b-xs">کشتی جدید
                </h2>
                <small>شما می توانید اطلاعاتی را که قبلا وارد کرده بودید را اصلاح کنید </small>
            </div>
        </div>
    </div>


    <div class="content animate-panel">
        <asp:HiddenField runat="server" ID="TXTDESC"  ClientIDMode="Static"/>
        <div>



            <div class="row">
                <div class="col-lg-12">
                    <div class="hpanel">
                        <div class="panel-heading">
                            <div class="panel-tools">
                                <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                                <a class="closebox"><i class="fa fa-times"></i></a>
                            </div>
                            کشتی جدید
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6 col-md-push-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نام کشتی</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtName" placeholder=".نام کشتی" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">کد ایمو</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtImoCode" placeholder="کد ایمو" class="form-control input-lg m-b" />

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">پیشنهاد دهنده</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <asp:DropDownList runat="server" ID="txtPropertyType" DataTextField="StatuceName" DataValueField="ID" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">نوع کشتی</label>

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">کشور سازنده</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <asp:DropDownList runat="server" ID="txtManufacturingCountry" DataTextField="StatuceName" DataValueField="ID" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">پرچم ثبت</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <asp:DropDownList runat="server" ID="txtflagCountry" DataTextField="StatuceName" DataValueField="ID" class="form-control input-lg m-b" />

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">سال ساخت</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtYearOfConstruction" placeholder=".سال ساخت" onkeypress='return isNumberKey(event);' class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">DWT</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtDWT" placeholder="DWT" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-sm-2  col-sm-push-10 control-label">ابعاد کشتی</label>

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">برند موتور</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtBrandEngine" placeholder=".برند موتور" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-md-pull-6">
                                            <div class="row">
                                                <label class="col-sm-2 col-sm-push-10 control-label">قدرت موتور</label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <input type="text" runat="server" id="txtPowerEngine" onkeypress='return isNumberKey(event);' placeholder="قدرت موتور" class="form-control input-lg m-b" />

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
                                                <label class="col-sm-2 col-sm-push-10 control-label">وضعیت کشتی </label>

                                                <div class="col-sm-10 col-sm-pull-2">
                                                    <asp:DropDownList runat="server" ID="txtShipStatus" DataTextField="StatuceName" DataValueField="ID" class="form-control input-lg m-b" />

                                                </div>
                                            </div>
                                        </div>
                                        
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

    </div>
</asp:Content>