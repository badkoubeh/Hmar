<%@ page language="C#" autoeventwireup="true" inherits="h_Shipbuilding_Dte, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>



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
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>   نام شرکت :</code>
                             
                              <%# Eval("Name")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>  سال تاسیس:</code>
                             
                             <%#Eval("EstablishedYear")%>

                            </div>
                        </div>
                           <div class="row show-grid">
                            
                            <div class="col-md-12  "> 
                             <code>   آدرس :</code>
                             
                              <%# Eval("Address")%>

                            </div>
                        
                            
                        
                        </div>

                                <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  سیستم  به اندازی :</code>
                             
                              <%# Eval("WaterSystem")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   ظرفیت به آب آندازی:</code>
                             
                             <%#Eval("WaterCapacity")%>

                            </div>
                        </div>
                                       <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  ظرفیت خالی:</code>
                             
                             <%#Eval("Capacity") %>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   تعداد شناور در حال ساخت:</code>
                             
                            <%#Eval("CountOfShip") %>

                            </div>
                        </div>
                           <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>   موقعیت کشتی سازی :</code>
                             
                              <%# Eval("Constant1.StatuceName")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   نوع کشتی تخصصی :</code>
                             
                             <%#Eval("Constant.StatuceName")%>

                            </div>
                        </div>
                                    <div class="row show-grid">
                            
                            <div class="col-md-12  "> 
                             <code>   قابلیت ارائه تسهیلات بانکی :</code>
                             
                                <asp:CheckBox Checked='<%#Eval("BankingFacilities")%>' runat="server" />

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
