<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_EditProduct, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content runat="server" ContentPlaceHolderID="head" ID="ctl09">
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
    	<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
				
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">ویرایش کردن محصول</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>فرم ابجاد محصول</h2>
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
							  <label class="control-label" for="typeahead">نام محصول </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" runat="server"  ValidationGroup="reg" />
								<p class="help-block">نام محصول مورد نظر وارد</p>
							  </div>
							</div>
                              	
								<div class="control-group">
							  <label class="control-label" for="typeahead"> قیمت </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtPRice"  data-provide="typeahead" data-items="4"  runat="server" onkeypress='return isNumberKey(event);'/>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage=" فقط عدد" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
								
							  </div>
							</div>
                              		<div class="control-group">
							  <label class="control-label" for="typeahead">میزان تخفیف </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtDiscount"  data-provide="typeahead" data-items="4"  runat="server" onkeypress='return isNumberKey(event);'/>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDiscount" ErrorMessage=" فقط عدد" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
							  </div>
							</div>
							
                               <div class="control-group">
                                    <label class="control-label" for="selectError">گروه  اصلی</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="txtGroupID" OnSelectedIndexChanged="txtGroupID_SelectedIndexChanged" AutoPostBack="true">

                                            </asp:DropDownList>
                                        </div>
                                   </div>
                               <div class="control-group">
                                    <label class="control-label" for="selectError">گروه فرعی</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="txtDetailsGroup">

                                            </asp:DropDownList>
                                        <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtDetailsGroup" runat="server" />
                                        </div>
                                   </div>
                           	<div class="control-group">
							  <label class="control-label" for="typeahead">دسترسی اعطایی</label>
							  <div class="controls">
								<asp:DropDownList  data-rel="chosen" runat="server" ID="dropRole" DataValueField="ID" DataTextField="RoleFaName" >

                                            </asp:DropDownList>
						
							  </div>
                     </div>
							
                              	<div class="control-group">
							  <label class="control-label" for="typeahead">نویسنده</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtAuthor"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                              <div class="control-group">
							  <label class="control-label" for="typeahead">مترجم</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtTranslator"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                              <div class="control-group">
							  <label class="control-label" for="typeahead">طراح جلد</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtDesigner"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							
                               <div class="control-group">
							  <label class="control-label" for="typeahead">ویراستار</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtEditor"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                              </div>
                             
                      <div class="control-group">
							  <label class="control-label" for="typeahead"> تعداد صفحات</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtPageCount"  data-provide="typeahead" data-items="4"  runat="server" onkeypress='return isNumberKey(event);'/>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPageCount" ErrorMessage=" فقط عدد" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
							  </div>
							</div>
                            
                            
                      <div class="control-group">
							  <label class="control-label" for="typeahead">ناشر</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtPublisher"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                            
                     <div class="control-group">
							  <label class="control-label" for="typeahead">قطع</label>
							  <div class="controls">
								 <asp:DropDownList  data-rel="chosen" DataValueField="ID" DataTextField="StatuceName" ID="txtGhath"   data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                     <div class="control-group">
							  <label class="control-label" for="typeahead">نوع جلد</label>
							  <div class="controls">
										 <asp:DropDownList  data-rel="chosen" DataValueField="ID" DataTextField="StatuceName" ID="txtNoJeld"  data-provide="typeahead" data-items="4"  runat="server"/>
								
							  </div>
							</div>
                            
                            
							<div class="control-group">
							  <label class="control-label" for="fileInput">تصویر محصول</label>
							  <div class="controls">
								<asp:FileUpload class="input-file uniform_on" id="txtImage"   runat="server"/>
                              
							  </div>
							</div> 
                    <div class="control-group">
							  <label class="control-label" for="fileInput">فایل ضمیمه</label>
							  <div class="controls">
								<asp:FileUpload class="input-file uniform_on" id="txtFileAddress"   runat="server"/>
                              
							  </div>
							</div>          
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">توضیحات</label>
							  <div class="controls">
								<textarea class="cleditor" id="txtdesc"  runat="server" rows="3"></textarea>
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