<%@ page language="C#" autoeventwireup="true" inherits="Adminstration_ExistPersonsToGroup, LastDll" masterpagefile="~/Adminstration/admin.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="ctl0">

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>نام همکار</th>
                            <th>نام نقش</th>
                            <th>نام گروه</th>
                            <th>نام شهر</th>
                            <th>منطقه</th>
                             <th>تاریخ عضویت</th>
                        </tr>
                    </thead>
                    <tbody>
                     
                        <asp:Repeater runat="server" ID="rptRoleProfileID">
                            <ItemTemplate>
                        <tr>
                            <td><%#Eval("Profile.FirstName")+" " +Eval("Profile.LastName") %></td>
                             <td><%#Eval("RoleProfile.RoleID") %></td>
                            <td ><%#Eval("RoleProfile.RoleFaName") %></td>
                                <td><%#Eval("RoleProfile.City.CityName") %></td>
                            <td ><%#Eval("RoleProfile.RegionOfActivity") %></td>
                            <td ><%#Eval("StartDate") %></td>
                            <td class="center">
                                <span class="label label-warning"></span>
                            </td>
                            <td class="center">
                                <a class="btn btn-success" href="#">
                                    <i class="halflings-icon white zoom-in"></i>
                                </a>
                                <a class="btn btn-info" href="#">
                                    <i class="halflings-icon white edit"></i>
                                </a>
                                <a class="btn btn-danger" href="#">
                                    <i class="halflings-icon white trash"></i>

                                </a>
                            </td>
                        </tr>
</ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
        <!--/span-->

    </div>
    <div class="row-fluid sortable">
        <div class="box span6">

            <div class="box-content">
                <asp:CheckBoxList runat="server" CssClass="table" ID="chkUser" RepeatColumns="3">
                </asp:CheckBoxList>

            </div>
        </div>
        <!--/span-->

        <div class="box span6">

            <div class="box-content">
                <asp:CheckBoxList runat="server" CssClass="table" ID="chkGroup" RepeatColumns="3">
                </asp:CheckBoxList>
            </div>
        </div>
        <!--/span-->

    </div>
    <div class="row-fluid sortable">
        <div class="form-actions">
            <asp:Button runat="server" ID="btnAdd" OnClick="btnAdd_Click" Text="ذخیره" class="btn btn-primary"></asp:Button>
            <button type="reset" class="btn">انصراف</button>
        </div>
    </div>
    <!--/row-->
</asp:Content>
