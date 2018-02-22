<%@ page language="C#" autoeventwireup="true" inherits="Message, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content runat="server" ID="ctl0" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="row" style="margin-top:50px">
        <div class="col-sm-3">
   <img  runat="server" id="txtImag" class="img-responsive"/>
            </div>
        <div class="col-sm-9">
 <p class="lead" runat="server" id="txtMessage"  style="color:red"  >

    </p>
        </div>
        </div>
</asp:Content>