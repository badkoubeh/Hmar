<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_EditSession, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

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
					<a href="#">ویرایش کردن جلسه</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>فرم ویرایش جلسات</h2>
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
							  <label class="control-label" for="typeahead">نام  چلسه </label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" id="txtName"  data-provide="typeahead" data-items="4"  runat="server"/>
                                  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtName" runat="server"  ValidationGroup="reg" />
								
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
                          <%--             <div class="control-group">
							  <label class="control-label" for="typeahead">ساعت شروع</label>
							  <div class="controls">

                                      
								<input type="text" class="span6 typeahead" id="txtStartTime"  data-provide="typeahead" data-items="1"  runat="server" placeholder="ساعت شروع" onkeypress='return isNumberKey(event);'/>
                                      							  </div>
							</div>
                            
                   <div class="control-group">
							  <label class="control-label" for="typeahead">ساعت پایان</label>
							  <div class="controls">

                                      
								<input type="text" class="span6 typeahead" id="txtEndDate"  data-provide="typeahead" data-items="1"  runat="server" placeholder="ساعت پایان" onkeypress='return isNumberKey(event);'/>
                                      							  </div>
							</div>--%>
                            
                  
						 
			

                  
               
							<div class="form-actions">
							  <asp:Button runat="server" ID="btnAccept" OnClick="btnAccept_Click" Text="تایید" class="btn btn-primary" ValidationGroup="reg"/>
							  <button type="reset" class="btn">انصراف</button>
                               
							</div>
						  </fieldset>
                          
						</form>   
                        
					</div>
				</div><!--/span-->
          
			</div><!--/row-->

    <asp:HiddenField runat="server" ID="txtclassID" />
    </asp:Content>