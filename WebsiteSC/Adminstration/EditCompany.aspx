<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_EditCompany, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content runat="server" ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1">
<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>وبرایش برند</h2>
						
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
                              
							  <div class="control-group">
								<label class="control-label" for="focusedInput">نام دپارتمان </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtCompanyName" type="text" placeholder="نام برند "/>
                                  
								</div>
							  </div>
                                <div class="control-group">
								<label class="control-label" for="focusedInput">نام صفحه اختصاصی  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtCompanyTitle" type="text" placeholder="نام دپارتمان  "/>
                                    <span class="help-inline">به لاتین وارد کنید </span>
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
								  <input class="input-xlarge focused" runat="server"  id="txtFax" type="text" placeholder="شماره فکس  "/>
                                  
								</div>
							  </div>
							 	     <div class="control-group">
								<label class="control-label" for="focusedInput">ایمیل  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="Text1" type="text" placeholder="ایمیل  "/>
                                  
								</div>
							  </div>
                                <div class="control-group hidden-phone">
							  <label class="control-label" for="txtarea2">توضیحات </label>
							  <div class="controls">
								<textarea class="cleditor"   runat="server"  id="txtarea2" rows="3"></textarea>
							  </div>
							</div>
							
							  
							  <div class="form-actions">
								<asp:Button runat="server" ID="btnSave" Text="ذخیره تغیرات" class="btn btn-primary"></asp:Button>
								<button class="btn">انصراف</button>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</asp:Content>			
