<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_EditeService, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl0">
    	<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
				
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">اضافه کردن سرویس</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
                    <a href="EditeService.aspx">EditeService.aspx</a>
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>سرویس ها و خدمات</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">عنوان</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" runat="server" />
								<p class="help-block"></p>
							  </div>
							</div>
                              	

                              				<div class="control-group">
							  <label class="control-label" for="typeahead">نام لاتین سرویس</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtRoleName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtRoleName" runat="server" />
								<p class="help-block"> این نام در برنامه نقش بسیار مهمی دارد و باید یکتا ،لاتین و بدون فاصله باشد</p>
							  </div>
							</div>
								
                              	
							
							
							
                            
                            
							<div class="control-group">
							  <label class="control-label" for="fileInput">تصویر </label>
							  <div class="controls">
								<asp:FileUpload class="input-file uniform_on" id="txtImage"   runat="server"/>
                              
							  </div>
							</div>       
                                     
                              					<div class="control-group">
							  <label class="control-label" for="typeahead"> هزینه استفاده از سرویس </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtPRice"  data-provide="typeahead" data-items="4"  runat="server"/>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage=" فقط عدد" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtPRice" runat="server" />
								
							  </div>
							</div>
                                        
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">شرح سرویس</label>
							  <div class="controls">
								<textarea class="cleditor" id="txtdesc"  runat="server" rows="1"></textarea>
							  </div>
							</div>

                              	<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">شرایط استفاده</label>
							  <div class="controls">
								<textarea class="cleditor" id="Textarea1"  runat="server" rows="5" cols="100"></textarea>
							  </div>
							</div>

                              		<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2"></label>
							  <div class="controls">
								<p class="warning">
                      
								</p>
							  </div>
							</div>
							<div class="form-actions">
							  <asp:Button runat="server" ID="btnAccept" OnClick="btnAccept_Click" Text="تایید" class="btn btn-primary"/>
							  <button type="reset" class="btn">انصراف</button>
                                <div style="float:right">
                         
                              
                                    </div>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

    
    </asp:Content>