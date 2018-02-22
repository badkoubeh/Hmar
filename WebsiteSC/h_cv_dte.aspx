<%@ page language="C#" autoeventwireup="true" inherits="h_cv_dte, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1" ID="ctl00">
    <div class="content animate-panel" >
        <asp:Repeater runat="server" ID="rptHcv">
            <ItemTemplate>
          
             <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                      جزییات
                    </div>
                    <div class="panel-body">

                       
                                     <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>   نام و نام خانوادگی  :</code>
                             
                              <%# Eval("Profile.FirstName")+ " "+Eval("Profile.LastName")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   شماره تماس :</code>
                             
                             <%#Eval("Profile.CellPhone")%>

                            </div>
                        </div>
                          <div class="row show-grid">
                            
                            <div class="col-md-12 "> 
                             <code>   آدرس:</code>
                             
                             <%#Eval("Profile.Adress")%>

                            </div>
                        </div>
                          <div class="row show-grid">
                            
                            <div class="col-md-12  "> 
                             <code>    عنوان شغلی اول :</code>
                             
                                   <%#Eval("Constant.StatuceName")%>

                            </div>
                        
                           </div> 
                          
                                 <div class="row show-grid">
                            
                                <div class="col-md-6">
                             <code>     سمت:</code>
                             
                                 <%#Eval("Constant1.StatuceName") %>

                                </div>
                                
                     
                               <div class="col-md-6  ">
                             <code>    محدودیت  :</code>
                             
                                 <%#Eval("Constant2.StatuceName") %></div>
                                
                                
                        </div>
                     

                          <div class="row show-grid">
                            
                            <div class="col-md-12  "> 
                             <code>    عنوان شغلی دوم :</code>
                             
                                                                   <%#Eval("Constant3.StatuceName")%>

                            </div>
                        
                           </div> 
                          
                                 <div class="row show-grid">
                            
                                <div class="col-md-6">
                             <code>     سمت:</code>
                             
                                   <%#Eval("Constant4.StatuceName")%>

                                </div>
                                
                     
                               <div class="col-md-6  ">
                             <code>    محدودیت  :</code>
                             
                                 <%#Eval("Constant5.StatuceName") %></div>
                                
                                
                        </div>
                     
                        <div class="row show-grid">
                            
                            <div class="col-md-12 "> 
                             <code>   گواهینامه و دوره های گذارنده شده :</code>
                                <br />
                                 <%#Eval("Govahiname") %></div>
                        </div>

                               <div class="row show-grid">
                            
                            <div class="col-md-12 "> 
                             <code>   رزومه  :</code>
                                <br />
                                 <%#Eval("description") %></div>
                        </div>
                          <div class="row show-grid">
                            
                            <div class="col-md-12 "> 
                                             
                                <a href="En_article.aspx"  target="_blank" class="btn btn-info "><i class="fa fa-paste"></i><span>بازگشت </span> </a>
                                             
                                </div>
                              
                                
                            </div>
                    </div>
                </div>
            </div>

        </div>
  </ItemTemplate>
        </asp:Repeater>
        </div>
    
        
</asp:Content>