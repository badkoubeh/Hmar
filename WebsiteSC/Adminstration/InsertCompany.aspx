<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_InsertCompany, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content runat="server" ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1">
<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>ایجاد برند</h2>
						
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
                              <div class="control-group">
								<label class="control-label" for="focusedInput">  </label>
								<div class="controls">
								  <span class="input-xlarge warning"  runat="server"  id="Text2" type="text"/>
                                  
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">نام برند </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtCompanyName" type="text" placeholder="نام برند "/>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtCompanyName" runat="server" />
                                    <span class="help-inline">در همه جا به عنوان تولید کننده و  نام برند کالا درنظر گرفته می شود</span>

								</div>
							  </div>
                                <div class="control-group">
								<label class="control-label" for="focusedInput">نام صفحه  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtCompanyTitle" type="text" placeholder="نام دپارتمان  "/>
                                    <span class="help-inline">نام دپارتمان ی که مالک برند است را وارد کنید </span>
								</div>
							  </div>
							 <div class="control-group">
								<label class="control-label" for="focusedInput">نام نماینده یا مالک </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtOwner" type="text" placeholder="نام نماینده "/>
                                    
								</div>
							  </div>

                                     
                                 <div class="control-group">
								<label class="control-label" for="focusedInput">شماره تماس دپارتمان  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtPhone" type="text" placeholder="نام نماینده "/>
                                    
								</div>
							  </div>
                                <div class="control-group">
								<label class="control-label" for="focusedInput">شماره همراه  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtCellPhone" type="text" placeholder="شماره همراه "/>
                                   <span class="help-inline">جهت اطلاع رسانی از رخداد های پنل</span> 
								</div>
							  </div>
							     <div class="control-group">
								<label class="control-label" for="focusedInput">شماره فکس  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtFax" type="text" placeholder="شماره فکس  " />
                                  
								</div>
							  </div>
							 	     <div class="control-group">
								<label class="control-label" for="focusedInput">ایمیل  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="Text1" type="text" placeholder="ایمیل  "/>
                                    <asp:RequiredFieldValidator ErrorMessage="*"   ControlToValidate="Text1" runat="server"  Display="Dynamic"/>
                                    <asp:RegularExpressionValidator ErrorMessage="ایمیل؟" ControlToValidate="Text1" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                  
								</div>
							  </div>
                                         <div class="control-group">
								<label class="control-label" for="focusedInput">نام کاربر </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtUserName" type="text" placeholder="نام کاربری "/>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtUserName" runat="server" />
                                    <span class="help-inline">نام کاریری برای نماینده دپارتمان  </span>
								</div>
							  </div>
                                <div class="control-group">
								<label class="control-label" for="focusedInput">کلمه عبور </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtPasword" type="password" placeholder="کلمه عبور "/>
                                    <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtPasword" runat="server" />
                                    <span class="help-inline">کلمه عبور </span>
								</div>
							  </div>
                                <div class="control-group hidden-phone">
							  <label class="control-label" for="txtarea2">توضیحات </label>
							  <div class="controls">
								<textarea class="cleditor"   runat="server"  id="txtarea2" rows="3"></textarea>
							  </div>
							</div>
							
							  
							  <div class="form-actions">
								<asp:Button runat="server" ID="btnSave"  OnClick="btnSave_Click" Text="ذخیره تغیرات" class="btn btn-primary"></asp:Button>
								<button class="btn">انصراف</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</asp:Content>	