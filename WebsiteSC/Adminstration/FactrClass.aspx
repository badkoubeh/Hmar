<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_FactrClass, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>


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
<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
        <ContentTemplate>
            <div class="box-header" data-original-title>
                <h2 runat="server" id="H2"></h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon search"></i></a>
                    <asp:LinkButton runat="server" ID="LinkButton1"><i class="halflings-icon delete"></i></asp:LinkButton>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable " style="direction: rtl">
                    <thead>
                        <tr>
                            <th>کد فاکتور</th>
                            <th>مبلغ فاکتور</th>
                           <th>شماره پیگیری</th>
                            <th>تاریخ و ساعت پرداخت</th>
                              <th>تاریخ فازسی</th>
                            <th>نام </th>
                            
                            <th>شماره همراه</th>
                           
                            
                            <th>بابت</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <asp:Repeater runat="server" ID="rptProuduct">
                                <ItemTemplate>
                                    <td><%#Eval("FactorCode") %></td>
                                       <td><%#Eval("FactorPrice") %></td>
                                      <td><%#Eval("BankflowNumber") %></td>
                                    <td class="right" id="txt" runat="server"><%#Eval("Description")%></td>
                                    <td class="right" id="Td1" runat="server"><%#Eval("FactorDate")%></td>
                                      <td class="right" id="Td2" runat="server"><%#Eval("PostCode")%></td>
                                   <td class="right"><%#Eval("Profile.FirstName")+" " +Eval("Profile.LastName")%> </td>
                                    <td class="right" id="Td3" runat="server"><%#Eval("profile.CellPhone")%></td>
                                    <th><%#Eval("Good.Name")%></th>
                                    <td class="right">
                                         <asp:Button Text="اصلاح  فاکتور" runat="server" CommandArgument='<%#Eval("ID")%>' CssClass="btn btn-info" OnClick="btnSendToClass_Click" ID="btnEditPrice" />
                                        <asp:Button Text="حدف فاکتور" runat="server" CommandArgument='<%#Eval("ID")%>' CssClass="btn btn-warning" OnClick="btnDelete_Click" ID="btnDelete" />

                                    </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tr>
                    </tbody>
                </table>

                <div class="pagination pagination-centered">
                    <ul style="text-align: center">

                        
                    </ul>

                </div>

                <div>

                    <a class="btn btn-success" href="#" runat="server" id="A1"></a>
                </div>
            </div>



            <asp:HiddenField ID="profileID" runat="server" />



            <script src='/Adminstration/js/jquery.dataTables.min.js'></script>
        
	<div class="modal hide fade" id="myModal"  aria-hidden="true" data-backdrop="false"  >
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3 runat="server" id="TitleName"></h3>
		</div>
		<div class="modal-body">
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
					<table class="table">
						 
                            
                            
                            
							<tr>
                                <td class="right">با تایید پرداخت تسویه کامل شده است</td>
                                <td class="right" >
                                    <asp:CheckBox Checked="false" runat="server" ID="chkChkout" />

                                </td>
                    
					</tr>
                              <tr>
                                <td class="right">مبلغ پرداختی</td>
                                <td class="right" >
                                    <input runat="server" id="txtCreadit" onkeypress='return isNumberKey(event);'/>
                                </td>
                    
					</tr>

                    
		
						  </tbody>
					  </table>            
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">انصراف</a>
			<asp:Button runat="server"  ID="btnAccept" class="btn btn-primary" OnClick="btnAccept_Click" Text="ثبت"/>
		</div>
	</div>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>