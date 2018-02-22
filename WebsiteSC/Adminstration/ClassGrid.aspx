<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_ClassGrid, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>



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
                            <th>نام کلاس</th>
                            <th>هزینه کلاس</th>
                            <th>دپارتمان</th>
                            <th>استاد </th>
                            <th>ظرفیت </th>
                            <th>تاریخ شروع</th>
                            <th>تاریخ پایان</th>
                            <th>تعداد جلسات</th>
                            <th>وضعیت</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <asp:Repeater runat="server" ID="rptProuduct">
                                <ItemTemplate>

                                    <td class="right"><%#Eval("Good.Name") %></td>
                                    <td class="right" id="txt" runat="server"><%#Eval("Good.Price")%></td>
                                    <td class="right"><%#Eval("Good.CompanyInfo.ComanyName")%> </td>
                                    <td class="right" id="Td1" runat="server"><%#Eval("Teacher")%></td>
                                    <td class="right" id="Td2" runat="server"><%#Eval("Capacity")%></td>
                                    <td class="right" id="Td3" runat="server"><%#Eval("FSdate")%></td>
                                    <td class="right" id="Td4" runat="server"><%#Eval("FEdate")%></td>
                                    <td class="right" id="Td5" runat="server"><%#Eval("x")%></td>
                                    <td class="right">
                                        <a href="/Adminstration/InsertClass.aspx" class="btn btn-success" target="_blank" />ایجاد</a>
                                        <a href='<%#"/Adminstration/EditClass.aspx?vID="+Eval("GoodID")%>' class="btn btn-info" target="_blank">ویرایش</a>
                                        <asp:Button Text="حذف" runat="server" CommandArgument='<%#Eval("GoodID")%>' CssClass="btn btn-warning" OnClick="btnDelete_Click" ID="btnDelete" />
                                         <a href='<%#"/Adminstration/InsertSession.aspx?ID="+Eval("GoodID")%>' class="btn btn-danger" target="_blank" />ایجاد جلسات کلاس</a>
                                         <a href='<%#"/Adminstration/ClassSession.aspx?ID="+Eval("GoodID")%>' class="btn btn-inverse" target="_blank" />مشاهده جلسات کلاس</a>
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
