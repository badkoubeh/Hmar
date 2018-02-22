<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_PRSadm, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>


    	<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="ctl01">
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server" ID="up1">
        <ContentTemplate>


            <div style="text-align: right; direction: rtl" class="box">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="txtsrc" Style="margin-top: 5px" placeholder="مطلبی که به دنبال ان هستید" />
                            <asp:Button Text="جستجو" ID="btnsrc" CssClass="btn btn-primary" runat="server" OnClick="btnsrc_Click" /></td>


                    </tr>
                </table>
            </div>
            <div class="row-fluid">


                <div class="row-fluid">
                    <div class="box span12">
                        <div class="row-fluid">
                            <!--/span-->


                            <div class="box-header" data-original-title>
                                <h2 runat="server" id="txtHeader"></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn-setting"><i class="halflings-icon search"></i></a>
                                    <asp:LinkButton runat="server" ID="removeFilte"><i class="halflings-icon delete"></i></asp:LinkButton>
                                </div>
                            </div>
                            <div class="box-content">
                                <table class="table table-striped table-bordered bootstrap-datatable datatable" style="direction: rtl">
                                    <thead>
                                        <tr>
                                            <th>نام خدمت</th>
                                            <th>هزینه</th>
                                            <th>نام لاتین  </th>
                                            
                                            
                                            <th>دپارتمان</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                            <asp:Repeater runat="server" ID="rptProuduct">
                                                <ItemTemplate>
                                                    <tr>
                                                    <td class="right"><%#Eval("ProductName")%>
                                                      </td>
                                                    <td class="right"><%#Eval("ProductPrice") %></td>
                                                    <td class="right"><%#Eval("RoleName") %></td>
                                                    
                                                    
                                                    <td>
                                                        <%#Eval("CompanyInfo.ComanyName") %>
                                                    </td>
                                                    <td class="right">
                                                        <a href='<%#"InsertService.aspx?ID="+Eval("ID")%>' target="_blank" class="btn btn-success">درج</a>
                                                        <a href='<%#"EditeService.aspx?ID="+Eval("ID")%>' target="_blank" class="btn btn-info">ویرایش</a>
                                                        <asp:Button Text="حذف" runat="server" CommandArgument='<%#Eval("ID")%>' CssClass="btn btn-warning" OnClick="btnExist_Click" ID="btnExist" />
                                                        
                                                      
                                                    </td>
                                                    </tr>
                                                    <%--<tr>
                                                        <td colspan="5">
                                                            <%#Eval("Description") %>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">
                                                            <%#Eval("TermsOfUse") %>
                                                        </td>
                                                    </tr>--%>
                                                   
                                                                                                   </ItemTemplate>
                                            </asp:Repeater>
                                        
                                    </tbody>
                                </table>

                                <div class="pagination pagination-centered">
                                    <ul style="text-align: center">
                                        <li><a class="btn btn-danger" href="InsertService.aspx">سرویس جدید
                                        </a>
                                        </li>
                                        <asp:Repeater ID="rptPaging" runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                                                        CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                                                        OnClick="lnkPage_Click1" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>

                                                </li>

                                            </ItemTemplate>

                                        </asp:Repeater>

                                    </ul>

                                </div>

                                <div>

                                    <a class="btn btn-success" href="#" runat="server" id="PAgeID"></a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <asp:HiddenField ID="txtID" runat="server" />
</ContentTemplate>
        </asp:UpdatePanel>
                </asp:Content>
        
    
