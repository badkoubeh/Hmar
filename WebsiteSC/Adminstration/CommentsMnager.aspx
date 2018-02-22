<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_CommentsMnager, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
                    <div class="row-fluid">	
				<div class="box span12" style="min-height:800px">
					<div class="box-header">
						<h2 runat="server" id="txtcompnyTitle"></h2>

					</div>
						<div class="box-content">
                            <asp:DropDownList runat="server" OnSelectedIndexChanged="Unnamed_SelectedIndexChanged" ID="drpactivated" AutoPostBack="true" >
                                <asp:ListItem Text="فعال" Value="True" />
                                <asp:ListItem Text ="غیر فعال" Value="False" Selected="True"/>
                            </asp:DropDownList>
						<table class="table table-striped table-bordered bootstrap-datatable datatable" style="direction:rtl">
						  <thead>
							  <tr>
                                  <th>عنوان مطلب</th>
                                  <th>نام</th>
								  <th>نام خانوادگی</th>
								  <th>ایمیل</th>
								  <th>تاربخ</th>
                               <th>وضعیت</th>
                              <th></th>    
							  </tr>
                              
						  </thead>   
						  <tbody>
							<tr>
                                <asp:Repeater runat="server" ID="rptProuduct">
                    <ItemTemplate>
                        <td class="right"><%#Eval("Content.Name")%></td>
                        <td class="right"> <%#Eval("Name")%></td>
                                 <td class="right"><%#Eval("LastName") %></td>
								<td class="right"><%#Eval("Email") %></td>
								<td class="right"><%#Eval("Pdate") %></td>
								<td class="right"><asp:CheckBox Enabled="false" runat="server" ID="chk" Checked='<%#Eval("Avtive")%>'/></td>
                        
                               
								<td class="right">
                                   
                                    <asp:Button Text="اجازه نمابش" class="btn btn-success"  runat="server"   ID="btnActive"  OnClick="btnActive_Click"  CommandArgument='<%#Eval("ID")%>'/>
									  <asp:Button Text=" عدم نمایش" class="btn btn-success"  ID="btnDisActive" runat="server"  OnClick="btnDisActive_Click"  CommandArgument='<%#Eval("ID")%>'/>
								</td>
							</tr>
                        <tr >
                            <td colspan="7" class="right" >
                                <%#Eval("CommentPost")%>
                            </td>
                        </tr>

                        </ItemTemplate>
                </asp:Repeater>
			</tr>
						  </tbody>
					  </table>    

                       <div class="pagination pagination-centered">
                <ul   style="text-align:center">
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
				</div><!--/span-->
				
			</div><!--/row-->
			
				
                   
				      
  
 	    
</asp:Content>
   

