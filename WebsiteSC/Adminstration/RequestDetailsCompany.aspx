<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_RequestDetailsCompany, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="ctl0">
		<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span> لیست درخواست ها</h2>
						<div class="box-icon">
					
						</div>
					</div>
					<div class="box-content">
						<table class="table  " style="direction:rtl">
						  <thead>
							  <tr>
                                   <th>کد کالا</th>
								  <th>نام کالا</th>
								  <th>تعداد</th>
                                 
                                  <th></th>
								  
                               
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
                                <asp:Repeater runat="server" ID="rpt1">
                    <ItemTemplate>
                              <td class="right"><%#Eval("Good.Code") %></td>
                                 <td class="right"><%#Eval("Good.Name") %></td>
								<td class="right"><%#Eval("Count") %></td>
						
								
                                   
									
								</td>
							</tr>
                        </ItemTemplate>
                </asp:Repeater>
			</tr>
						  </tbody>
					  </table>    

                     

                       
					</div>
                   
				</div>
    </asp:Content>