<%@ page language="C#" autoeventwireup="true" inherits="FISH_RequestPayment, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl0">
    		<div class="box span12">
						<h2><i class="halflings-icon user"></i><span class="break"></span> لیست درخواست ها</h2>
						<div class="box-icon">
					
						</div>
					</div>
					<div class="box-content">
						<table class="table  table-bordered table-hover " style="direction:rtl">
						  <thead>
							  <tr>
                                   <th>کد درخواست</th>
								  <th>تاریخ درخواست</th>
								  <th>نام </th>
                                  <th>نام خانوادگی</th>
                                  <th>شماره تماس</th>
                                  <th>موضوع درخواست</th>
                                   <th>نوع درخواست</th>
                                  <th>وضعیت درخواست</th>
                                  <th></th>
								  
                               
							  </tr>
						  </thead>   
						  <tbody>

                                <asp:Repeater runat="server" ID="rpt1">
                    <ItemTemplate>
                        							<tr>
                                 <td class="right"><%#Eval("ID") %></td>
								<td class="right"><%#Eval("RequesPdate") %></td>
								<td class="right"><%#Eval("Profile.FirstName") %></td>
                            	<td class="right"><%#Eval("Profile.LastName") %></td>
                                <td class="right"><%#Eval("Profile.CellPhone") %></td>
								 <td class="right"><%#Eval("EditorID") %></td>
                                 <td class="right"><%#Eval("ProductService.ProductName") %></td>
								 <td class="right"><%#Eval("RequestTable.StuseTitle") %></td>
								<td class="right">
                                    <asp:LinkButton CommandArgument='<%# Eval("ID") %>'  runat="server"  ID="btn" OnClick="btn_Click1"    class="btn btn-info"   ToolTip="   ">مشاهده پروفایل
											<i class="halflings-icon white user"></i>  
									</asp:LinkButton>
                                     <asp:LinkButton CommandArgument='<%# Eval("ID") %>'  runat="server"  ID="LinkButton1" OnClick="btn_Click"  class="btn btn-info"   ToolTip="   مشاهده جزییات درخواست">
                                         صدور فاکتور و ارایه محصول
											<i class="halflings-icon white eye-open"></i>  
									</asp:LinkButton>
                                   
                                   
									
								</td>
							</tr>
                        <tr>
                             <td class="right" style="text-align:right;background-color:lightblue" colspan="10" >
                                 <%#Eval("description") %>
                             </td>
                        </tr>
                        </ItemTemplate>
                </asp:Repeater>
	
						  </tbody>
					  </table>    

                     

                       
					</div>
                   
				</div>
    <!--/span-->      
    
  
</asp:Content>