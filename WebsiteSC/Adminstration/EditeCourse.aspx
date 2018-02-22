<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_EditeCourse, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

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

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl0">
    <asp:ScriptManager runat="server" />
    	<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
				
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">ویرایش کردن دوره</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>فرم ویرایش دوره</h2>
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
							  <label class="control-label" for="typeahead">نام دوره </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" runat="server"  ValidationGroup="reg" />
								
							  </div>
							</div>
                              	
							
							
                              	<div class="control-group">
							  <label class="control-label" for="typeahead">نام لاتین</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtlatin"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                          	
                     
                     
                           
							
                                <div class="control-group">
							  <label class="control-label" for="fileInput">تمابش داده شود </label>
							  <div class="controls">
								<asp:CheckBox Checked="true" ID="isshowm" runat="server" />
                              
							  </div>
							</div> 
                    
                            
                  
                  
						
                    
                                 
                  
                  
                    
							<div class="form-actions">
							  <asp:Button runat="server" ID="btnAccept" OnClick="btnAccept_Click" Text="تایید" class="btn btn-primary" ValidationGroup="reg"/>
							  <button type="reset" class="btn">انصراف</button>
                               
							</div>
						  </fieldset>
                          
						</form>   
                        
					</div>
				</div><!--/span-->
          
			</div><!--/row-->

    
    </asp:Content>