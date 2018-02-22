<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_Content, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content ContentPlaceHolderID="head" runat="server" ID="ctrl0">
</asp:Content>
<asp:Content runat="server" ID="rptText" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel runat="server" ID="up1">
        <ContentTemplate>


            <div style="text-align: right; direction: rtl" class="box">
                <table>
                    <tr>
                        <td>
                            <asp:TextBox runat="server" ID="txtsrc" Style="margin-top: 5px;width:90%" placeholder="مطلبی که به دنبال ان هستید" />
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
                                <table class="table  " style="direction: rtl">
                                    <thead>
                                        <tr>
                                     
                                            <th>نام مطلب</th>
                                           
                                            <th>گروه بندی اصلی مطب</th>
                                            <th>زیر گروه مطلب</th>
                                            <th>قیمت</th>
                                             <th>تعداد صفحات</th>
                                              <th>سال انتشار</th>

                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <asp:Repeater runat="server" ID="rptProuduct">
                                                <ItemTemplate>
                                                    <td class="right"><a target="_blank" href='<%#"/Blog.aspx?ID="+ Eval("ID")%>'>
                                     
                                                    <td class="right"><%#Eval("Name") %></td>
                                                   
                                                    <td class="right" id="txt" runat="server"><%#Eval("Grouping1.Name")%></td>
                                                    <td class="right">
                                                        <%#Eval("Grouping.Name") %>
                                                    </td>
                                                    <td class="right">
                                                        <%#Eval("Price") %>
                                                    </td>
                                                    <td> <%#Eval("img1") %></td>
                                                     <td> <%#Eval("img2") %></td>
                                                    <td class="right">
                                             
                                                
                                                        <a href='<%#"ContantEdit.aspx?ID="+Eval("ID")%>' target="_blank" class="btn btn-success">درج</a>
                                                        <a href='<%#"ContentEditPage.aspx?ID="+Eval("ID")%>' target="_blank" class="btn btn-info">ویرایش</a>
                                                        <asp:Button Text="حذف" runat="server" CommandArgument='<%#Eval("ID")%>' CssClass="btn btn-danger" OnClick="btnDelete_Click" ID="btnDelete" />
                                                        
                                             
                                                    </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tr>
                                    </tbody>
                                </table>

                                <div class="pagination pagination-centered">
                                    <ul style="text-align: center">
                                        <li><a class="btn btn-danger" href="ContantEdit.aspx" style="color:black">مطلب جدید
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
