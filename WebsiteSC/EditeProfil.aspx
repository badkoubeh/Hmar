<%@ page language="C#" autoeventwireup="true" inherits="EditeProfil, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>
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

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="content animate-panel">
           <div class="register-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>اطلاعات من  </h3>
                
            </div>
            <div class="hpanel">
                <div class="panel-body">
                   
                            <div class="row">
                            <div class="form-group col-lg-6 col-lg-push-6">
                                <label>ایمیل شما(نام کاربری شما در سایت ایمیل شماست)</label>
                                <input  runat="server"   value="" id="txtEmail" class="form-control" name=""/>
                                <asp:RequiredFieldValidator ErrorMessage="لطفا ایمیل خود را وارد کنید" ControlToValidate="txtEmail"   Display="Dynamic" runat="server" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="ایمیل را درست وارد نمایید" ControlToValidate="txtEmail"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                            </div>
                                   <div class="form-group col-lg-6  col-lg-pull-6">
                                <label>شماره همراه </label>
                                <input  runat="server" id="txtCellPhone" class="form-control"  onkeypress='return isNumberKey(event);' name="">
                                       <asp:RequiredFieldValidator ErrorMessage="لطفا شماره همراه خود را وارد کنید" ControlToValidate="txtCellPhone" Display="Dynamic" runat="server" />

                            </div>
                                </div>
                             <div class="row">
                 
                                 </div>
                            <div class="row">
                            <div class="form-group col-lg-6  col-lg-push-6">
                                <label>نام </label>
                                <input  runat="server" id="txtName" class="form-control" name=""/>
                                <asp:RequiredFieldValidator ErrorMessage="نام خود را وارد کنید" ControlToValidate="txtName" runat="server" Display="Dynamic"/>
                            </div>
                            <div class="form-group col-lg-6 col-lg-pull-6">
                                <label>نام خانوادگی</label>
                                <input  runat="server" id="txtLastName" class="form-control" name=""/>
                                <asp:RequiredFieldValidator ErrorMessage="نام خانوادگی خود را وارد کنید" ControlToValidate="txtLastName" runat="server" Display="Dynamic"/>

                            </div>
                              </div>
                            <div class="row">
                            <div class="form-group col-lg-6 col-lg-push-6">
                                <label>رشته تحصیلی</label>
                                <input  runat="server" id="txtFriled" class="form-control" name="">

                            </div>
                                   <div class="form-group col-lg-6 col-lg-pull-6">
                                <label>مقطع تحصیلی</label>
                                <input  runat="server"   value="" id="txtDegree" class="form-control" name="">
                            </div> 
                                </div>
            
                            </div>
                            <div class="text-center">
                                  
                                <asp:Button class="btn btn-success" runat="server" ID="btnAccept" Text="تایید " OnClick="btnAdd_Click"/>
                              
                            </div>
               
                </div>
            </div>
        </div>
    </div>
         <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-body">

                        <div class="lightBoxGallery">

                            <p>
                               دسترسی سریع
                            </p>

                            <a href="h_sup_ins.aspx" target="_blank" title="Image from Unsplash" ><img src="Images/landing/c1.png"/></a>
                            <a href="h_cv_ins.aspx" target="_blank" data-gallery=""><img src="Images/landing/c2.png"/></a>
                            <a href="h_ship_ins.aspx" target="_blank" data-gallery=""><img src="Images/landing/c4.png"/></a>
                            <a href="http://fa.hmariner.com/contact-us/" target="_blank" data-gallery=""><img src="Images/landing/c3.png"/></a>
                            

                        </div>





                    </div>
                    <div class="panel-footer">
                        
                    </div>
                </div>
            </div>
        </div>
     
          </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="footer" runat="server" ID="txtfoter">
     <script src="vendor/blueimp-gallery/js/jquery.blueimp-gallery.min.js"></script>

    <style>

    .lightBoxGallery {
        text-align: center;
    }

    .lightBoxGallery a {
        margin: 5px;
        display: inline-block;
    }

</style>
</asp:Content>
