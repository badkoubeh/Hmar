<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_ChangPass, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
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
								<label class="control-label" for="focusedInput">کلمه عبور قبلی  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtPassword" type="password" placeholder="کلمه عبور  "/>
                                  
								</div>
							  </div>
                                            <div class="control-group">
								<label class="control-label" for="focusedInput">جدید </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="Password1" type="password" placeholder="کلمه عبور  "/>
                                  
								</div>
							  </div>
							  
                                          
                                          
                                          </fieldset>
                               </div>
                             <div class="span6">
						
                             <fieldset>
                                 <asp:CheckBoxList runat="server" ID="chkProdouctSerVises" >

                                 </asp:CheckBoxList>
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
