<%@ page language="C#" masterpagefile="~/Adminstration/admin.master" autoeventwireup="true" inherits="Adminstration_CompanyMangingPage, LastDll" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl0">
    		<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>مدیریت  نقش ها و کاربران دپارتمان </h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon search"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<asp:LinkButton runat="server" ID="removeFilte" OnClick="removeFilte_Click"  ><i class="halflings-icon delete"></i></asp:LinkButton>
						</div>
					</div>
					<div class="box-content">
						<table class="table  " style="direction:rtl">
						  <thead>
							  <tr>
                                  <th>کد دپارتمان </th>
								  <th>نام دپارتمان</th>
								  <th>نام صفحه </th>
								  <th>شماره تماس </th>
								  <th>همراه نماینده</th>
                                  <th>شماره فاکس</th>
                                  <th>نام نماینده با مالک</th>
                            
                                   
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
                                <asp:Repeater runat="server" ID="rpt1" OnItemDataBound="rpt1_ItemDataBound">
                    <ItemTemplate>
                                 <td class="right"><%#Eval("CompanyCode") %></td>
								<td class="right"><%#Eval("CompanyLogoo") %></td>
								<td class="right"><%#Eval("CompanyTitle") %></td>
								<td class="right"><%#Eval("CompanyPhone") %></td>
								<td class="right"><%#Eval("CompanyCells") %></td>
								<td class="right"><%#Eval("CompanyFax") %></td>
                               <td class="right"><%#Eval("CompanyOwner") %></td>
                        
                            
                      
                       <%-- <td class="right"><asp:CheckBox  Enabled="false" runat="server" ID="CheckBox2" Checked='<%#Eval("IsAllAdv")%>'/></td>--%>
								<td class="right">
                                   
									<a class="btn btn-info" href="<%#"InsertUser.aspx?ID="+Eval("ID")%>" target="_blank" title="ایجاد کاربر">
										ایجاد کاربر
									</a>
                                    <%--<a class="btn btn-info" href="CompanyRols.aspx"  target="_blank" title="نقش های کاربری">
										<i class="halflings-icon white icon-user "></i>  
									</a>--%>
                                     <a class="btn btn-info" href="<%#"CompanyUserInRoles.aspx?ID="+Eval("ID")%>"  target="_blank" title="کاربران دپارتمان ">
										مدیریت کاربران دپارتمان
									</a>
                                  <%--  <a class="btn btn-info"  runat="server" id="txtstateManager" href='<%#"CompanyGoodsStatus.aspx?ID="+Eval("ID")%>' target="_blank" title="مدیریت وضعیت ">
										<i class=" halflings-icon white shopping-cart"></i>  
									</a>--%>
									
								</td>
							</tr>
                        </ItemTemplate>
                </asp:Repeater>
			</tr>
						  </tbody>
					  </table>    

                       <div class="pagination pagination-centered">
                <ul   style="text-align:center">
                    <li>  	<a class="btn btn-danger"  style="color:black" href="InsertCompany.aspx" target="_blank" title="ایجاد کاربر">
										ایجاد دپارتمان
									</a>

                    </li>
        <asp:Repeater ID="rptPaging" runat="server">
  <ItemTemplate>
      <li>
           <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                                CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                                OnClick="Page_Changed" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>

      </li>

  </ItemTemplate>

 </asp:Repeater>

</ul>
                           
                           </div>

                        <div>
                            
                            <a class="btn btn-success" href="#" runat="server" id="PAgeID" ></a>
                        </div>
					</div>
                   
				</div>
    <!--/span-->      
  <div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>ه
		<div class="modal-body">
		<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>جستجو</h2>
					
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
                                    <div class="control-group">
                                    <label class="control-label" for="selectError">منطفه</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="region">
                                        <asp:ListItem selected="True" Value="1"  >1</asp:ListItem>
               <asp:ListItem Value="2" >2</asp:ListItem>
               <asp:ListItem Value="3"> 3</asp:ListItem>
               <asp:ListItem Value="4" >4</asp:ListItem>
               <asp:ListItem  Value="5">5</asp:ListItem>
               <asp:ListItem  Value="6" >6</asp:ListItem>
               <asp:ListItem Value="7"  >7</asp:ListItem>
               <asp:ListItem Value="8" >8</asp:ListItem>
               <asp:ListItem  Value="9" >9</asp:ListItem>
               <asp:ListItem  Value="10" >10</asp:ListItem>
               <asp:ListItem   Value="11" >11</asp:ListItem>
               <asp:ListItem  Value="12" > 12</asp:ListItem>
               <asp:ListItem  Value="13" >13</asp:ListItem>
               <asp:ListItem  Value="14" >14</asp:ListItem>
               <asp:ListItem   Value="15" >15</asp:ListItem>
               <asp:ListItem  Value="16" >16</asp:ListItem>
               <asp:ListItem  Value="17" >17</asp:ListItem>
               <asp:ListItem  Value="18" >18</asp:ListItem>
               <asp:ListItem  Value="19" >19</asp:ListItem>
               <asp:ListItem  Value="20" >20</asp:ListItem>
               <asp:ListItem  Value="21" >21</asp:ListItem>
               <asp:ListItem   Value="22" >22</asp:ListItem>
                              </asp:DropDownList>
                                    </div>
                                </div>
                                                                    <div class="control-group">
                                    <label class="control-label" for="selectError">گرید</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="txtGrade">
                                            
                                        <asp:ListItem selected="True"  Value="-1" >همه </asp:ListItem>
               <asp:ListItem value="A"  >A</asp:ListItem>
               <asp:ListItem value="B" > B</asp:ListItem>
               <asp:ListItem   value="C" >C</asp:ListItem>
                              </asp:DropDownList>
                                    </div>
                                </div>

                                        <div class="control-group">
                                    <label class="control-label" for="selectError">  وضعیت سوپر مارکت</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="txtIDForDelete">
                                      
               
               
               
                              </asp:DropDownList>
                                    </div>
                                </div>
                                                                        <div class="control-group">
                                    <label class="control-label" for="selectError">  وضعیت مالکیت</label>
                                    <div class="controls">
                                        <asp:DropDownList  data-rel="chosen" runat="server" id="txtMAlekit">
                                        <asp:ListItem selected="selected" value="-1"  >همه </asp:ListItem>
               <asp:ListItem value="مالک" >مالک</asp:ListItem>
               <asp:ListItem value="اجاری" > اجاری</asp:ListItem>
               
                              </asp:DropDownList>
                                    </div>
                                </div>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">نام واحد</label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  type="text"  id="txtTitle"/>
								</div>
							  </div>
                                 <div class="control-group">
								<label class="control-label" for="focusedInput">تلفن</label>
								<div class="controls">
								  <input class="input-xlarge focused" runat="server"  type="text"  id="txtPhone"/>
								</div>
							  </div>
						
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">انصراف</a>
			<asp:Button runat="server" ID="btnSerch"  OnClick="btnSerch_Click"  class="btn btn-primary" Text="جستجو"></asp:Button>
		</div>
	</div>
    
  
</asp:Content>