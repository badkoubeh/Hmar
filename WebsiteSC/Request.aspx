<%@ page language="C#" autoeventwireup="true" inherits="Request, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content runat="server" ID="ctlHeader" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="content animate-panel">
       <div class="hpanel">
                       <div class="panel-body">
   
                       

                      <div class="col-md-offset-2 col-md-8">        
                    <div class="comments-form">
                        <h2 class="title">درخواست شما</h2>
                        <div role="form" id="comment-form">
                            <div class="form-group has-feedback">
                                <label for="name4">نوع خدمات </label>
                                  <asp:DropDownList runat="server" DataValueField="ID" DataTextField="ProductName" ID="txtServise" class="form-control">
                                
                            </asp:DropDownList>
                                <i class="fa fa-pencil form-control-feedback"></i>
                                <asp:RequiredFieldValidator ErrorMessage="!" ControlToValidate="txtServise" runat="server"  ValidationGroup="cmnt1"/>
                                
                            </div>
                            <div class="form-group has-feedback">
                                <label for="subject4">موضوع </label>
                               <input type="text" class="form-control" id="txtSubject" runat="server" placeholder="موضوع" name="name4" ValidationGroup="cmnt1">
                                <i class="fa fa-user form-control-feedback"></i>
                               <asp:RequiredFieldValidator ErrorMessage="!" ControlToValidate="txtSubject" runat="server"  ValidationGroup="cmnt1"/>
                            </div>
                        </div>
                        <div class="form-group has-feedback">
                            <label for="message4">توضیحات شما</label>
                            <textarea class="form-control cleditor" rows="8" id="txtMessage" runat="server" placeholder=" لطفا تمام توضیحاتی که برای انجام درخواست شما لازم است اینجا یاداشت نمایید" name="message4"></textarea>
                            <i class="fa fa-envelope-o form-control-feedback"></i>
                            <asp:RequiredFieldValidator ErrorMessage="!" ControlToValidate="txtMessage" runat="server"  ValidationGroup="cmnt1"/>
                        </div>
                        <asp:Button Text="ثبت" runat="server" class="btn btn-info " ID="btnSendRequest" OnClick="btnSendRequest_Click" ValidationGroup="cmnt1" />

                    </div>
                </div>
                </div>
            
            </div>
     </div>
   
</asp:Content>
