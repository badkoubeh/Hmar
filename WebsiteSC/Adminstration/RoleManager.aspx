<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_RoleManager, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content   runat="server" ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1" >
    <div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>لیست نقشهای کاربری</h2>
						<div class="box-icon">
							
						</div>
					</div>
					<div class="box-content">
						<table class="table  " style="direction:rtl">
						  <thead>
							  <tr>
								  <th>نام نقش  </th>
							 <th>نام فارسی  </th>
                                 
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
                                <asp:Repeater runat="server" ID="rpt1">
                    <ItemTemplate>
								<td class="right"><%# Eval("RoleID")%></td>
							<td class="right"><%# Eval("RoleFaName")%></td>
								
                                
								<td class="right">
                                    <a class="btn btn-info" href="NewRoles.aspx" target="_blank" title="ایجاد">
										ایجاد نقش
									</a>
                                  <%--  <a class="btn btn-success" href="<%#"EditSouperDte.aspx?ID="+ Eval("ID") %>" target="_blank"  title="مشاهده و ویرایش">
										<i class="halflings-icon white map-marker"></i>  
									</a>
									
                                    <a class="btn btn-info" href="<%#"PrintForm.aspx?ID="+ Eval("ID") %>"  target="_blank" title="چاپ">
										<i class="halflings-icon white print"></i>  
									</a>
                                     <a class="btn btn-info" href="<%#"rptPrint.aspx?ID="+ Eval("ID") %>"  target="_blank" title="چاپ شناسنامه">
										<i class="halflings-icon white eye-open"></i>  
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
                    
                    <li>  	<a class="btn btn-danger"  style="color:black" href="NewRoles.aspx" target="_blank" title="ایجاد کاربر">
										ایجاد نقش
									</a></li>
        <asp:Repeater ID="rptPaging" runat="server">
  <ItemTemplate>
      <%--<li>
           <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                                CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                                OnClick="Page_Changed" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>

      </li>--%>

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
</asp:Content>