<%@ page language="C#" autoeventwireup="true" inherits="blog2, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>



<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1">
      <div class="content animate-panel content-boxed">
            <asp:Repeater runat="server" ID="rptList" OnItemDataBound="rptList_ItemDataBound">
                <ItemTemplate>
        <div class="row">
            <div class="col-lg-12">
                <div class="hpanel blog-article-box">
                    <div class="panel-heading">
                        <h4><%#Eval("Name") %> </h4>
                      
                    </div>
                    <div class="panel-body">
                              
                    	<p><%#Eval("MoreHtml") %></p>
             
                    </div>
                    <div class="panel-footer">
               
                       
                    </div>
                </div>
            </div>
        </div>
           </ItemTemplate>
                                    </asp:Repeater>
    </div>
   

				

    </asp:Content>
