<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_ContentEditPage, LastDll" validaterequest="false" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content  ContentPlaceHolderID="head" runat="server" ID="ctlHead">

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl0">
    	<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
				
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">ویرایش کردن متن</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>فرم ویرایش متن</h2>
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
							  <label class="control-label" for="typeahead">عنوان صفحه</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtTitle"  data-provide="typeahead" data-items="4"  runat="server"/>
                          
								<p class="help-block"></p>
							  </div>
                                          </div>
									<div class="control-group">
							  <label class="control-label" for="typeahead">سئو دیسکریپتشن</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtCountDescription"  data-provide="typeahead" data-items="4"  runat="server"/>
                          
								<p class="help-block"></p>
							  </div>
							</div>
                              <div class="control-group">
							  <label class="control-label" for="typeahead">سئو کیور</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtGoodKeyWord"  data-provide="typeahead" data-items="4"  runat="server"/>
                                 
							  </div>
							</div>
                              	
                                <div class="control-group">
								<label class="control-label" for="focusedInput">نام دپارتمان </label>
								<div class="controls">
								                            <asp:DropDownList  data-rel="chosen" runat="server" id="txtComoanyName"></asp:DropDownList>
                                 <asp:RequiredFieldValidator ErrorMessage="*" Display="Dynamic"  ControlToValidate="txtComoanyName" runat="server"  ValidationGroup="rptc"/>
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
                                    <label class="control-label" for="selectError">زبان</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="txtPakKind">

                                            </asp:DropDownList>
                                        </div>
                                   </div>
                              	<div class="control-group">
							  <label class="control-label" for="typeahead">اجازه نمایش</label>
							  <div class="controls">
								<asp:DropDownList  data-rel="chosen" runat="server" id="dropSatrasi" >

                                            </asp:DropDownList>
						
							  </div>
							</div>
                             
							
                            <div class="control-group">
							  <label class="control-label" for="typeahead">قیمت</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtPrice"  data-provide="typeahead" data-items="4"  runat="server"/>
                                 
							  </div>
							</div>
							
							  <div class="control-group">
							  <label class="control-label" for="typeahead">تعداد صفحات</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtCountOfPage"  data-provide="typeahead" data-items="4"  runat="server"/>
                                 
							  </div>
							</div>
                                <div class="control-group">
							  <label class="control-label" for="typeahead">سال انتشار</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtimg1"  data-provide="typeahead" data-items="4"  runat="server"/>
                                 
							  </div>
							</div>
                            
							        

                                                  <div class="control-group">
							  <label class="control-label" for="fileInput">attachment</label>
							  <div class="controls">
								<asp:FileUpload class="input-file uniform_on" id="txtAttachment"   runat="server"/>
                              
							  </div>
							</div>          
                                

                                                         
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">شرح مختصر</label>
							  <div class="controls">
								<textarea class="cleditor" id="txtdesc"  runat="server" rows="1"></textarea>
							  </div>
							</div>

                              	<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">شرح کامل</label>
							
								<textarea class="cleditor" id="Textarea1"  runat="server" rows="5" cols="100"></textarea>
							
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