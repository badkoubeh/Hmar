﻿<%@ page language="C#" autoeventwireup="true" inherits="PersonGroup, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
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
								<label class="control-label" for="focusedInput">نام  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtName" type="text" placeholder="نام  "/>
                                  
								</div>
							  </div>
                                <div class="control-group">
								<label class="control-label" for="focusedInput">نام خانوادگی </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtLastName" type="text" placeholder="نام خانوادگی "/>
                             
								</div>
							  </div>
							 <div class="control-group">
								<label class="control-label" for="focusedInput">ایمیل </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtEmail" type="text" placeholder="ایمیل "/>
                                    
								</div>
                                 <div class="control-group">
								<label class="control-label" for="focusedInput">تاریخ شروع عضویت </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtDate" type="text" placeholder="تاریخ شروع "/>
                                    
								</div>
							  </div>
                                 <div class="control-group">
								<label class="control-label" for="focusedInput">تلفن ثابت</label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtPhone" type="text" placeholder="تلفن ثابت "/>
                                    
								</div>
							  </div>
                                <div class="control-group">
								<label class="control-label" for="focusedInput">شماره همراه </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtCellPhone" type="text" placeholder="شماره همراه "/>
                                   <span class="help-inline">جهت اطلاع رسانی از رخداد های پنل</span> 
								</div>
							  </div>
							     <div class="control-group">
								<label class="control-label" for="focusedInput">نام کاربری </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtUserName" type="text" placeholder="نام کاربری  "/>
                                  
								</div>
							  </div>
							 	     <div class="control-group">
								<label class="control-label" for="focusedInput">کلمه عبور  </label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  id="txtPassword" type="password" placeholder="کلمه عبور  "/>
                                  
								</div>
							  </div>
                                              <div class="control-group">
								<label class="control-label warning text-warning "  for="focusedInput"  runat="server"  id="Text2"> </label>
								
								 <div class="controls">
                                     </div>
                                  
								</div>
							  
                                          
                                          
                                          </fieldset>
                               </div>
                             <div class="span6">
						
                             <fieldset>
                                 <asp:CheckBoxList runat="server" ID="chkProdouctSerVises" RepeatColumns="6" >

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

