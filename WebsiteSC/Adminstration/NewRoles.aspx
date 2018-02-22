<%@ page language="C#" autoeventwireup="true" inherits="NewRoles, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content    runat="server" ContentPlaceHolderID="ContentPlaceHolder1" >

    <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>فرم ایجاد نقش ها</h2>
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
							  <label class="control-label" for="typeahead">نام نقش</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtRole"  data-provide="typeahead" data-items="4"  runat="server"/>
                                
								
							  </div>
							</div>
                              	
								<div class="control-group">
							  <label class="control-label" for="typeahead">نام فارسی </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                     
								
							  </div>
							</div>
                              		
							
							
                          
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">توضیحات</label>
							  <div class="controls">
								<textarea class="cleditor" id="txtdesc"  runat="server" rows="3"></textarea>
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
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

</asp:Content>