<%@ page language="C#" autoeventwireup="true" inherits="h_Ship_dte, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

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
                             <code>   نام کشتی :</code>
                             
                              <%# Eval("Name")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   کد ایمو :</code>
                             
                             <%#Eval("ImoCode")%>

                            </div>
                        </div>
                           <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>   پیشنهاد دهنده :</code>
                             
                              <%# Eval("Constant1.StatuceName")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   نوع کشتی :</code>
                             
                             <%#Eval("Constant3.StatuceName")%>

                            </div>
                        </div>

                                <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  کشور سازنده :</code>
                             
                              <%# Eval("Constant.StatuceName")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   پرچم:</code>
                             
                             <%#Eval("Constant2.StatuceName")%>

                            </div>
                        </div>

                                    <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  سال ساخت  :</code>
                             
                              <%# Eval("YearOfConstruction")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   DWT:</code>
                             
                             <%#Eval("DWT")%>

                            </div>
                        </div>

                                             <div class="row show-grid">
                            
                            <div class="col-md-6  "> 
                             <code>  ابعاد کشتی :</code>
                             
                              <%# Eval("length")+"*"+Eval("Width")+"*"+Eval("Height") %>

                            </div>
                        
                            <div class="col-md-6  "> 
                             <code>  وضعیت کشتی :</code>
                             
                              <%#Eval("Constant4.StatuceName")%>

                            </div>
                        
                            
                        </div>
                       


                            <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code> برند موتور  :</code>
                             
                              <%# Eval("BrandEngine")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   قدرت موتور:</code>
                             
                             <%#Eval("PowerEngine")%>

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
