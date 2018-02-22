<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_EditClass, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>





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
					<a href="#">ویرایش کردن کلاس</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>فرم ابجاد کلاس</h2>
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
							  <label class="control-label" for="typeahead">نام کلاس </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" runat="server"  ValidationGroup="reg" />
								
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
                                    <label class="control-label" for="selectError">دوره کلاس</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="dropDownDure" DataValueField="ID" DataTextField="PersianName">

                                            </asp:DropDownList>
                                       
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
							  <label class="control-label" for="typeahead">استاد</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtTeacher"  data-provide="typeahead" data-items="4"  runat="server"/>
								
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
							  <label class="control-label" for="fileInput">کلاس سازمانی </label>
							  <div class="controls">
								<asp:CheckBox Checked="false" ID="isForOrganization" runat="server" />
                              
							  </div>
							</div> 
                                <div class="control-group">
							  <label class="control-label" for="fileInput"> نمایش </label>
							  <div class="controls">
								<asp:CheckBox Checked="true" ID="isshowm" runat="server" />
                              
							  </div>
							</div> 
                      <div class="control-group">
							  <label class="control-label" for="typeahead"> ظرفیت کلاس</label>
							  <div class="controls">

								<input type="text" class="span6 typeahead" id="txtCapacity"  data-provide="typeahead" data-items="4"  runat="server" onkeypress='return isNumberKey(event);'/>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCapacity" ErrorMessage=" فقط عدد" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
							  </div>
							</div>
                                <div class="control-group">
							  <label class="control-label" for="typeahead"> تعداد جلسات</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtSetions"  data-provide="typeahead" data-items="4"  runat="server" onkeypress='return isNumberKey(event);'/>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSetions" ErrorMessage=" فقط عدد" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
							  </div>
							</div>
                            
                              <div class="control-group">
							  <label class="control-label" for="typeahead"> شهر برگزاری کلاس</label>
							  <div class="controls">

								<input type="text" class="span6 typeahead" id="txtCiry"  data-provide="typeahead" data-items="4"  runat="server" />
								<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCapacity" ErrorMessage=" فقط عدد" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
							  </div>
							</div>
                                <div class="control-group">
							  <label class="control-label" for="typeahead"> آدرس محل برگزاری کلاس</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtAddrress"  data-provide="typeahead" data-items="4"  runat="server" />
							
							  </div>
							</div>
                      <div class="control-group">
							  <label class="control-label" for="typeahead">تاریخ شروع</label>
							  <div class="controls">
                                                <table>

                                  <tr>
                                      <td>
								<input type="text" class="span6 typeahead" id="txtStartYear"  data-provide="typeahead" data-items="1"  runat="server" placeholder="سال" onkeypress='return isNumberKey(event);'/>
                                         
                                          </td>
                                      <td>
                                          <asp:DropDownList  data-rel="chosen" runat="server" id="txtStrtmonth"  placeholder="ماه">
                                              <asp:ListItem Text="فروردین"  Value="فروردین"/>
                                              <asp:ListItem Text="اردیبهشت"  Value="اردیبهشت"/>
                                              <asp:ListItem Text="خرداد"  Value="خرداد"/>
                                              <asp:ListItem Text="تیر"  Value="تیر"/>
                                              <asp:ListItem Text="مرداد"  Value="مرداد"/>
                                              <asp:ListItem Text="شهریور"  Value="شهریور"/>
                                              <asp:ListItem Text="مهر"  Value="مهر"/>
                                              <asp:ListItem Text="آبان"  Value="آبان"/>
                                              <asp:ListItem Text="آذر"  Value="آذر"/>
                                              <asp:ListItem Text="دی"  Value="دی"/>
                                              <asp:ListItem Text="بهمن"  Value="بهمن"/>
                                              <asp:ListItem Text="اسفند"  Value="اسفند"/>
                                            </asp:DropDownList>
                                      </td>
                                      <td>
                                          <input type="text" class="span6 typeahead" id="txtStartDay"  data-provide="typeahead" data-items="1"  runat="server" placeholder="روز" onkeypress='return isNumberKey(event);'/>
                                      </td>
                                      </tr>
                                      </table>
							  </div>
							</div>
                                       <div class="control-group">
							  <label class="control-label" for="typeahead">تاریخ پایان</label>
							  <div class="controls">
								                  <table>

                                  <tr>
                                      <td>
								<input type="text" class="span6 typeahead" id="txtEndDate"  data-provide="typeahead" data-items="1"  runat="server" placeholder="سال" onkeypress='return isNumberKey(event);'/>
                                          </td>
                                      <td>
                                          <asp:DropDownList  data-rel="chosen" runat="server" id="txtEndMonth"  placeholder="ماه">
                                       <asp:ListItem Text="فروردین"  Value="فروردین"/>
                                              <asp:ListItem Text="اردیبهشت"  Value="اردیبهشت"/>
                                              <asp:ListItem Text="خرداد"  Value="خرداد"/>
                                              <asp:ListItem Text="تیر"  Value="تیر"/>
                                              <asp:ListItem Text="مرداد"  Value="مرداد"/>
                                              <asp:ListItem Text="شهریور"  Value="شهریور"/>
                                              <asp:ListItem Text="مهر"  Value="مهر"/>
                                              <asp:ListItem Text="آبان"  Value="آبان"/>
                                              <asp:ListItem Text="آذر"  Value="آذر"/>
                                              <asp:ListItem Text="دی"  Value="دی"/>
                                              <asp:ListItem Text="بهمن"  Value="بهمن"/>
                                              <asp:ListItem Text="اسفند"  Value="اسفند"/>
                                            </asp:DropDownList>
                                      </td>
                                      <td>
                                          <input type="text" class="span6 typeahead" id="txtEndDateDay"  data-provide="typeahead" data-items="1"  runat="server" placeholder="روز" onkeypress='return isNumberKey(event);'/>
                                      </td>
                                      </tr>
                                      </table>
								
							  </div>
							</div>
                            
                  
                  
							<div class="control-group">
							  <label class="control-label" for="fileInput">تصویر مرتبط</label>
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