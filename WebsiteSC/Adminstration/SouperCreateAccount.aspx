<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_SouperCreateAccount, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content    runat="server"  ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>ایجاد کاربر </h2>
						
					</div>
					<div class="box-content">

						<form class="form-horizontal">
						
                              <div class="span6">
                                  	<fieldset>
							  
							     <div class="control-group">
								<label class="control-label" for="focusedInput">نام کاربری </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtUserName" type="text" placeholder="نام کاربری  "/>
                                  
								</div>
							  </div>
							 	     <div class="control-group">
								<label class="control-label" for="focusedInput">کلمه عبور   </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtPassword" type="text"  disabled="disabled" placeholder="کلمه عبور  "/>
                                  
								</div>
							  </div>
                                       <div class="control-group">
								<label class="control-label" for="focusedInput">پسورد جدید   </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtNewpass" type="text" placeholder="  کلمه عبور جدید این کاربر  "/>
                                  
								</div>
							  </div>      
							  
                                          
                                          
                                          </fieldset>
                               </div>
                             <div class="span6">
						
                             <fieldset>
                               <div class="warning align-center" runat="server" id="txtWarning">

                               </div>
                             </fieldset>
                         </div>
                            
							
							  <div class="span12">
							  <div class="form-actions">
								<asp:Button runat="server" ID="btnSave" Text="ذخیره تغیرات"  OnClick="btnSave_Click" class="btn btn-primary"></asp:Button>
								<button class="btn">انصراف</button>
							  </div>
                                  </div>
                            </form>
							
					</div>
				</div><!--/span-->
			
		

</asp:Content>
