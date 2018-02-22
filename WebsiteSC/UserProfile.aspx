    <%@ page language="C#" autoeventwireup="true" inherits="UserProfile, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="ctl">
    <div class="content">

        <div class="row">
             <div class="col-md-3">
                <div class="hpanel">
                    <div class="panel-body">

                        <a  class="btn btn-success btn-block m-b-md">دفتر مجازی من</a>

                        <ul class="mailbox-list">
                            <li>
                                <a class="btn btn-info" href="h_Ship_ch.aspx">
                                    
                                    <i class="fa fa fa-list"></i>  کشتی های من 

                                </a>
                            </li>
                            <li>
                                <a class="btn btn-primary" href="h_ship_ins.aspx"><i class="fa fa fa-plus"></i> کشتی جدید</a>
                            </li>
                            
                        </ul>
                        <hr/>
                        <ul class="mailbox-list">
                            <li>
                                <a class="btn  btn-info"  href="h_Shipbuilding_view.aspx"><i class="fa fa-list "></i> کشتی سازی های من</a>
                            </li>
                            <li>
                                <a  class="btn btn-primary" href="h_Shipbuilding_ins.aspx"><i class="fa fa-plus"></i> کشتی سازی جدید</a>
                            </li>
                           
                        </ul>
                        <hr/>
                        <ul class="mailbox-list">
                            <li>
                                <a class="btn  btn-info"  href="h_suply_view.aspx"><i class="fa fa-list "></i> تجهیزات من </a>
                            </li>
                            <li>
                                <a  class="btn btn-primary" href="h_sup_ins.aspx"><i class="fa fa-plus"></i> تجهیزات جدید</a>
                            </li>
                           
                        </ul>
                         <ul class="mailbox-list">
                            <li>
                                <a class="btn  btn-info"  href="h_cv_ins.aspx"><i class="fa fa-list "></i> رزومه من </a>
                            </li>
                          
                           
                        </ul>

                          <ul class="mailbox-list" runat="server" id="adminlist1">
                             <li>
                                <a class="btn  btn-info"  href="h_cv_view.aspx"><i class="fa fa-list "></i> لیست پرسنل دریایی </a>
                            </li>
                            <li>
                                <a  class="btn btn-primary" href="h_cv_ins_admin_.aspx"><i class="fa fa-plus"></i> پرسنل دریایی جدید</a>
                            </li>
                          
                           
                        </ul>

                         <ul class="mailbox-list" runat="server" id="adminlist2">
                             <li>
                                <a class="btn  btn-info"  href="UserList.aspx"><i class="fa fa-list "></i> لیست اعضا </a>
                            </li>
                            <li>
                                <a  class="btn btn-primary" href="addUser.aspx"><i class="fa fa-plus"></i> کاربر جدید</a>
                            </li>
                          
                           
                        </ul>


                    </div>

                </div>
            </div>
            <div class="col-md-9">
                <div class="hpanel">
                    <div class="panel-heading">
                        <asp:Label Text="" ID="txtName00" runat="server" />
                    
                    </div>
                    <div class="panel-body">



                        <div class="text-center m-b-md" id="wizardControl">

                            <a class="btn btn-primary" href="#step1" runat="server" id="h1" data-toggle="tab">اطلاعات کاربری</a>

                         <a class="btn btn-default" href="#step2" data-toggle="tab" id="h2" runat="server">اطلاعات شخص حقوقی</a>
                            <a class="btn btn-default" href="#step4" data-toggle="tab" id="h4" runat="server">زمینه فعالیت اصلی</a>
                            <a class="btn btn-default" href="#step5" data-toggle="tab" id="h5" runat="server">سایر فعالیت ها</a>

                        </div>

                        <div class="tab-content">
                            <div id="step1" runat="server" class="p-m tab-pane active" clientidmode="Static">

                                <div class="row">
                                
                                        
                              
                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="form-group col-lg-6 col-lg-push-6">
                                                <label>ایمیل شما(نام کاربری شما در سایت ایمیل شماست)</label>
                                                <input runat="server" value="" id="txtEmail" class="form-control" name="" />
                                                <asp:RequiredFieldValidator ErrorMessage="لطفا ایمیل خود را وارد کنید" ControlToValidate="txtEmail" Display="Dynamic" runat="server"  ValidationGroup="sinup"/>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="ایمیل را درست وارد نمایید" ControlToValidate="txtEmail"   ValidationGroup="sinup"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                                            </div>
                                            <div class="form-group col-lg-6  col-lg-pull-6">
                                                <label>شماره همراه </label>
                                                <input runat="server" id="txtCellPhone" class="form-control" onkeypress='return isNumberKey(event);' name="" />
                                                <asp:RequiredFieldValidator ErrorMessage="لطفا شماره همراه خود را وارد کنید" ControlToValidate="txtCellPhone" Display="Dynamic" runat="server"   ValidationGroup="sinup"/>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-6 col-lg-push-6">
                                                <label>کلمه عبور</label>
                                                <input runat="server" type="password" value="" id="txtPassWord" class="form-control" name="" />
                                                <asp:RequiredFieldValidator ErrorMessage="کلمه عبور را وارد کنید" ControlToValidate="txtPassWord" runat="server" Display="Dynamic"   ValidationGroup="sinup"/>


                                            </div>
                                            <div class="form-group col-lg-6 col-lg-pull-6">
                                                <label>تکرار کلمه عبور</label>
                                                <input type="password" runat="server" value="" id="Password1" class="form-control" name="" />
                                                <asp:RequiredFieldValidator ErrorMessage="کلمه عبور را تکرار کنید" ControlToValidate="Password1" runat="server" Display="Dynamic"  ValidationGroup="sinup" />
                                                <asp:CompareValidator ErrorMessage="کلمه عبور را درست تکرار نکرده اید" ControlToValidate="Password1" ControlToCompare="txtPassWord"
                                                     runat="server" Display="Dynamic"   ValidationGroup="sinup" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-6  col-lg-push-6">
                                                <label>نام </label>
                                                <input runat="server" id="txtName" class="form-control" name="" />
                                                <asp:RequiredFieldValidator ErrorMessage="نام خود را وارد کنید" ControlToValidate="txtName" runat="server" Display="Dynamic" ValidationGroup="sinup"/>
                                            </div>
                                            <div class="form-group col-lg-6 col-lg-pull-6">
                                                <label>نام خانوادگی</label>
                                                <input runat="server" id="txtLastName" class="form-control" name="" />
                                                <asp:RequiredFieldValidator ErrorMessage="نام خانوادگی خود را وارد کنید" ControlToValidate="txtLastName" runat="server" Display="Dynamic"  ValidationGroup="sinup" />

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-6 col-lg-push-6">
                                                <label>رشته تحصیلی</label>
                                                <input runat="server" id="txtFriled" class="form-control" name="" />

                                            </div>
                                            <div class="form-group col-lg-6 col-lg-pull-6">
                                                <label>مقطع تحصیلی</label>
                                                <input runat="server" value="" id="txtDegree" class="form-control" name="" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-6 col-lg-push-6">
                                                <label></label>
                                                <asp:Image ID="Image1" runat="server" ImageUrl="/cim.aspx" />

                                            </div>
                                            <div class="form-group col-lg-6 col-lg-pull-6">
                                                <label>تصویر را وارد کنید</label>
                                                <asp:TextBox ID="txtimgcode" runat="server" placeholder="تصویط را وارد کنید" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ErrorMessage="اجباری است" ControlToValidate="txtimgcode" runat="server"  ValidationGroup="sinup" />
                                            </div>
                                        </div>
                                    </div>



                                <div class="text-right m-t-xs">

                                    <asp:Button ClientIDMode="Static" class="btn btn-success" runat="server" ID="btnAccept" Text="ثیت نام " OnClick="btnAccept_Click"  ValidationGroup="sinup" />
                                </div>

                            </div>
                                </div>
                            <div id="step2" class="p-m tab-pane" runat="server" clientidmode="Static">

                                <div class="row">
                               
                                    <div class="col-lg-12">


                                        <div class="row">
                                            <div class="form-group col-lg-6  col-lg-push-6">
                                                <label>نام شرکت  </label>
                                                <input runat="server" id="txtCompanyName" class="form-control" name="" />

                                            </div>
                                            <div class="form-group col-lg-6 col-lg-pull-6">
                                                <label>نام مدیر عامل</label>
                                                <input runat="server" id="txtModirName" class="form-control" name="" />


                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-6 col-lg-push-6">
                                                <label>ایمیل شرکت</label>
                                                <input runat="server" value="" id="txtCompanyEmail" class="form-control" name="" />

                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ایمیل را درست وارد نمایید" ControlToValidate="txtCompanyEmail"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                                            </div>
                                            <div class="form-group col-lg-6  col-lg-pull-6">
                                                <label>تلفن شرکت  </label>
                                                <input runat="server" id="txtPhoneCompany" class="form-control" onkeypress='return isNumberKey(event);' name="" />


                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-6 col-lg-push-6">
                                                <label>کد ثبت شرکت </label>
                                                <input runat="server" id="txtCompanyCode" class="form-control" name="" />

                                            </div>
                                            <div class="form-group col-lg-6 col-lg-pull-6">
                                                <label>تاریخ تاسیس</label>
                                                <input runat="server" value="" id="txtTarikhTasis" class="form-control" name="" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-lg-12 ">
                                                <label>آدرس شرکت</label>
                                                <input runat="server" value="" id="txtCompanyAddress" class="form-control" name="" />

                                            </div>

                                        </div>
                                    </div>

                                </div>


                                <div class="text-right m-t-xs">

                                    <asp:Button class="btn btn-success" runat="server" ID="btnCompanyAccept" Text="ثیت اطلاعات حقوقی " OnClick="btnCompanyAccept_Click" />
                                </div>

                            </div>

                            <div id="step4" class="p-m tab-pane" runat="server" clientidmode="Static">

                                <div class="row">
                                    
                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    خرید و فروش شناور
                                                    <br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkKestisazi" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;کشتی سازی </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkVasettejari" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;واسطه تجاری / خرید و فروش شناور </label>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    تامین تجهیزات
                                                    <br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkTolidKonandeh" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;تولیدکننده </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkNamayandehRasmi" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;نماینده رسمی </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkTaminTajizat" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;واسطه تجاری / تامین تجهیزات </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    مالک شناور
                                                    <br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkMalekShenavar" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;مالک شناور </label>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    پرسنل دریایی<br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkPersonelDaryai" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;پرسنل دریایی </label>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    خدمات<br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkMoshaverFani" type="checkbox" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  مشاور فنی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkBazrasi" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  بازرسی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkKeshtirani" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  کشتیرانی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkRahbarKeshti" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  راهبر کشتی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkGhavasi" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; عملیات زیر آبی (غواصی)</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkAfshor" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; آفشور</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkSalvij" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; کمک و نجات (سالویج)</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkKharjsaziMaghroghe" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;خارج سازی مغروقه</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chktamirvanasb" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; تعمیر و نصب تجهیزات</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkSazehfoladi" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; سازه فولادی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkDakheli" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  دکوراسیون داخلی شناور ها</label></div>

                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkYadakkesh" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; یدک کشی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkTakhlieh" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; تخلیه بارگیری</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkAmozesh" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; آموزشی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkBimeh" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  بیمه</label></div>


                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="text-right m-t-xs">

                                    <asp:Button runat="server" Text="تایید" ID="btnMainActivit" class="btn btn-default next" OnClick="btnMainActivit_Click" />
                                </div>

                            </div>

                            <div id="step5" class="p-m tab-pane" clientidmode="Static" runat="server">

                                <div class="row">
                        
                                    <div class="col-lg-12">
                                        <div class="row">
                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    خرید و فروش شناور
                                                    <br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkKestisazi2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;کشتی سازی </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkVasettejari2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;واسطه تجاری / خرید و فروش شناور </label>
                                                    </div>

                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    تامین تجهیزات
                                                    <br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkTolidKonandeh2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;تولیدکننده </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkNamayandehRasmi2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;نماینده رسمی </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkTaminTajizat2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;واسطه تجاری / تامین تجهیزات </label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    مالک شناور
                                                    <br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkMalekShenavar2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;مالک شناور </label>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    پرسنل دریایی<br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkPersonelDaryai2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;پرسنل دریایی </label>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-5  col-sm-push-7  control-label">
                                                    خدمات<br />
                                                </label>

                                                <div class="col-sm-7 col-sm-pull-5">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkMoshaverFani2" type="checkbox" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  مشاور فنی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkBazrasi2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  بازرسی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkKeshtirani12" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  کشتیرانی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkRahbarKeshti2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  راهبر کشتی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkGhavasi2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; عملیات زیر آبی (غواصی)</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkAfshor2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; آفشور</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkSalvij2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; کمک و نجات (سالویج)</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkKharjsaziMaghroghe2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;خارج سازی مغروقه</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chktamirvanasb2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; تعمیر و نصب تجهیزات</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkSazehfoladi2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; سازه فولادی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkDakheli2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  دکوراسیون داخلی شناور ها</label></div>

                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkYadakkesh2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; یدک کشی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkTakhlieh2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; تخلیه بارگیری</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkAmozesh2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; آموزشی</label></div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input runat="server" id="chkBimeh2" type="checkbox" value="" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  بیمه</label></div>


                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="text-right m-t-xs">

                                    <asp:Button runat="server" Text="تایید" ID="Button1" class="btn btn-default next" OnClick="btnsecondActivit_Click" />
                                </div>

                            </div>

                                             <div id="step6" class="p-m tab-pane" clientidmode="Static" runat="server">

                                <div class="row">
                                    <div class="col-lg-12 text-center">
                                        <i class="pe-7s-credit fa-5x text-muted"></i>
                                        <p class="small m-t-md">
                                            <strong>نتیجه عملیات ثبت نام  </strong>
                                            <br />
                                            <strong runat="server" id="Strong1"> :کاربر عزیز</strong>
                                            <br />
                                        <div runat="server" id="txtResult">

                                        </div>
                                        </p>
                                    </div>
                  

                                </div>
                                <div class="text-right m-t-xs">

                                    <asp:Button runat="server" Text="تایید" ID="Button2" class="btn btn-default next" OnClick="btnsecondActivit_Click" />
                                </div>

                            </div>
                        </div>


                        <div class="m-t-md">

                            <p runat="server" id="Text2">
                            </p>

                        </div>

                    </div>
                </div>
            </div>

        
    </div>
        </div>
</asp:Content>
