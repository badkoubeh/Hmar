<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_AddToSpecialGoods, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="head" runat="server" ID="ctrl0">
     <script  type="text/javascript">
         function isNumberKey(evt) {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                 return false
             else
                 return true;
         }
    </script>
</asp:Content>
<asp:Content    runat="server" ID="rptText" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server" ID="up1">
        <Triggers>
        <asp:PostBackTrigger ControlID="btnAccept" />
    </Triggers>
        <ContentTemplate>
        <div class="row-fluid">	
		
      
             <div class="row-fluid">	
    		<div class="box span12">
                    <div class="row-fluid">	
				<!--/span-->
				
			
					<div class="box-header" data-original-title>
                          
						
						</div>
					</div>
					<div class="box-content">
					<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>نام محصولات</th>
								  <th>کد محصولات</th>
								 <th>قیمت </th>
                                  <th>میزان تخفیف</th>
                                  <th></th>
                                 
							  </tr>
						  </thead>   
						  <tbody>
                              <asp:Repeater runat="server" ID="rptProuduct" OnItemDataBound ="rptProuduct_ItemDataBound">
                                          <ItemTemplate>
							<tr><td class="right"> <%#Eval("Name") %>  </td><td class="right"> <%#Eval("Code") %></td><td class="right"><%#Eval("CompanyPrice")%></td><td class="right"><%#Eval("PriceForEndUser")%></td>
					<td><asp:Button runat="server" ID="btn" CssClass="btn" Text="اصلاح و انتفال" CommandArgument='<%#Eval("ID") %>' OnClick="btn_Click"/></td></tr>
                                              </ItemTemplate>
                                      </asp:Repeater>
		
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
                   
				</div>
        </div>
                    </div>
    </div>

    	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3 runat="server" id="TitleName"></h3>
		</div>
		<div class="modal-body">
				
				<p>
                    آیا مایل هستید این محصولات در قسمت محصولاتی ویژه نمایش داده شود
				</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">انصراف</a>
			<asp:Button runat="server"  ID="btnAccept" class="btn btn-primary" OnClick="Unnamed_Click2" Text="نمایش در محصولاتی ویژه "/>
            <asp:Button runat="server"  ID="Button1" class="btn btn-primary" OnClick="Button1_Click" Text="نمایش در محصولاتی در کناره های سایت "/>
		</div>
	</div>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
