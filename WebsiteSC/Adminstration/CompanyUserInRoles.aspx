<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_CompanyUserInRoles, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content    runat="server"  ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1">

<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>ایجاد کاربر</h2>
						
					</div>

                    <div class="box-content">
						<table class="table  " style="direction:rtl">
						  <thead>
							  <tr>
                                   <th>نام</th>
                                  <th> نام خانوادگی</th>
								  <th>شماره تلفن</th>
								  <th>شماره همراه</th>
							<th></th>	  
                               
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
                                <asp:Repeater runat="server" ID="rpt1">
                    <ItemTemplate>
                        
                                 <td class="right"><%#Eval("FirstName") %></td>
                           <td class="right"><%#Eval("LastName") %></td>
								<td class="right"><%#Eval("HomePhone") %></td>
								<td class="right"><%#Eval("CellPhone") %></td>
						
                        
                             
								<td class="right">
                                    <a class="btn btn-success" href="<%#"EditeUsers.aspx?ID="+ Eval("UserID") %>" target="_blank"  title="مشاهده و ویرایش کاربر">
										<i class="halflings-icon white map-marker"></i>  
									</a>
									<a class="btn btn-info" href="InsertUser.aspx" target="_blank" title="ایجاد">
										<i class="halflings-icon white edit"></i>  
									</a>
                                  
									
								</td>
							</tr>
                        </ItemTemplate>
                </asp:Repeater>
			</tr>
						  </tbody>
					  </table>
                        </div>
                    
				
				</div><!--/span-->
			
			</div><!--/row-->
    </asp:Content>