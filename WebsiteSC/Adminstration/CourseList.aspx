<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_CourseList, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>


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
                <table class="table table-striped table-bordered bootstrap-datatable datatable" style="direction: rtl">
                    <thead>
                        <tr>
                            <th>نام دوره</th>
                            <th>نام انگیلیسی</th>
                            <th>وضعیت</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <asp:Repeater runat="server" ID="rptProuduct">
                                <ItemTemplate>

                                    <td class="right"><%#Eval("LatinName") %></td>
                                    <td class="right" id="txt" runat="server"><%#Eval("PersianName")%></td>
                                    
                                    <td class="right" id="Td5" runat="server"> <asp:CheckBox Checked= <%# Convert.ToBoolean( Eval("isShown"))%> runat="server" /></td>
                                    <td class="right">
                                      
                                        <a href='<%#"/Adminstration/EditeCourse.aspx?vID="+Eval("ID")%>' class="btn btn-info" target="_blank">ویرایش</a>
                                        <asp:Button Text="حذف" runat="server" CommandArgument='<%#Eval("ID")%>' CssClass="btn btn-warning" OnClick="btnDelete_Click" ID="btnDelete" />
                                        
                                    </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tr>
                    </tbody>
                </table>

                <div class="pagination pagination-centered">
                    <ul style="text-align: center">

                        <li><a class="btn btn-danger" href="InsertClass.aspx" style="color:black">; جدید
                        </a>
                        </li>
                    </ul>

                </div>

                <div>

                    <a class="btn btn-success" href="#" runat="server" id="A1"></a>
                </div>
            </div>



            <asp:HiddenField ID="HiddenField1" runat="server" />



            <script src='/Adminstration/js/jquery.dataTables.min.js'></script>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
