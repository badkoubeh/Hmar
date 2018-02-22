<%@ page language="C#" autoeventwireup="true" inherits="Contact, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content runat ="server" ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1">
   <div class="content animate-panel">
       <div class="hpanel">
                       <div class="panel-body">
                  
			<div class="col-md-8 col-md-push-4">
				    <div class="control-group">
                        <span class="control-label">نام و نام خانوادگی
                            <label>*</label></span>
                        <div class="controls">
                            <asp:TextBox runat="server" ID="name" class="form-control"  Lang="fa-IR" />
                            <asp:requiredfieldvalidator errormessage="*" controltovalidate="name" runat="server" />
                        </div>
                    </div>
                   
                    <div class="control-group">
                        <span class="control-label">ایمیل
                            <label>*</label></span>
                        <div class="controls">
                            <asp:textbox runat="server" ID="email" class="form-control" Lang="fa-IR"/>
                            <asp:requiredfieldvalidator errormessage="*" controltovalidate="email" runat="server" />
                        </div>
                    </div>
                      
                   <div class="control-group">
                        <span class="control-label">شماره تماس<label>*</label></span>
                        <div class="controls">
                            <asp:textbox runat="server" ID="url" onkeypress='return isNumberKey(event);' class="form-control" />
                            <asp:requiredfieldvalidator errormessage="*" controltovalidate="url" runat="server" />
                        </div>
                    </div>
                 <div class="control-group">
                        <span class="control-label">انتقاد و پیشنهاد<label>*</label></span>
                        <div class="controls">
                            <textarea runat="server" id="message" class="form-control" Lang="fa-IR" />

                            <asp:requiredfieldvalidator errormessage="*" controltovalidate="message" runat="server" />

                        </div>
                    </div>
                <div class="control-group">
                        <span class="control-label">

                        </span>
                    <asp:Button Text="ثبت "  CssClass="btn-success btn-lg" ID="btnAdd" OnClick="btnsend_Click"   style="margin-top:20px;width:40%" runat="server" />
                        </div>
				<!-- Classic Heading -->
			</div>
			
			<div class="col-md-4 col-md-pull-8" style="direction:rtl">
				
				<!-- Classic Heading -->
				<h4 class="classic-title"><span>اطلاعات تماس</span></h4>
				
				<!-- Some Info -->
				<p>با ما در تماس باشید</p>
				
				<!-- Divider -->
				<div class="hr1" style="margin-bottom:10px;"></div>
				
				<!-- Info - Icons List -->
				<ul class="icons-list">
					<li><i class="fa fa-globe">  </i><%:this.Addrress %> </li>
					<li><i class="fa fa-envelope-o"></i> <%:this.Email %> </li>
                      <li><a href="#" class="link-dark"><i class="text-default fa fa-info pl-10 pr-5"></i>تماس با بخش فروش از ساعت 9 تا 14</a></li>
					<li><a href="#" class="link-dark"><i class="text-default fa fa-phone pl-10 pr-5"></i><%:this.CompanyPhone%></a></li>
                                            	<li><a href="#" class="link-dark"><i class="text-default fa fa-phone pl-10 pr-5"></i><%:this.CompanyPhone1%></a></li>
                     <li><a href="#" class="link-dark"><i class="text-default fa fa-info pl-10 pr-5"></i>در تمام ساعات روز شماره زیر پاسخ گو است</a></li>
											<li><a href="#" class="link-dark"><i class="text-default fa fa-phone-square pl-10 pr-5"></i><%:this.Phone%></a></li>
				</ul>
				
				<!-- Divider -->
				<div class="hr1" style="margin-bottom:15px;"></div>
				
				<!-- Classic Heading -->
				
				
			</div>
		
	</div>
           </div>
       </div>
    
</asp:Content>