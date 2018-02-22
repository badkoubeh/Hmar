<%@ page language="C#" autoeventwireup="true" inherits="h_suply_dte, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>

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
                             <code>   دسته بندی تجهیزات :</code>
                             
                              <%# Eval("Constant2.StatuceName")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>  </code>
                             
                             <%#Eval("Constant3.StatuceName")%>

                            </div>
                        </div>
                                  <div class="row show-grid">
                            
                           
                        
                            
                            <div class="col-md-12  "> 
                             <code>   نوع خدمت :</code>
                             
                             <%#Eval("Constant3.StatuceName")%>

                            </div>
                        </div>
                           <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>   نام محصول :</code>
                             
                              <%# Eval("Name")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   نام برند :</code>
                             
                             <%#Eval("BrandName")%>

                            </div>
                        </div>

                                <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  مدل :</code>
                             
                              <%# Eval("Model")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   وضعیت:</code>
                             <%# Eval("Constant1.StatuceName")%>
                        </div>
                        </div>

                                    <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  موجودی انبار:</code>
                             
                              <%# Eval("Count")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>   قیمت به ریال:</code>
                             
                             <%#Eval("Price")%>

                            </div>
                        </div>

                                          <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  محل انبار:</code>
                             
                              <%# Eval("DliveryPlace")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>  نحوه پرداخت:</code>
                             
                             <%#Eval("Constant.StatuceName")%>

                            </div>
                        </div>
                                           
                     
                                          <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  وزن:</code>
                             
                              <%#Eval("Wight")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>  ظرفیت:</code>
                             
                             <%#Eval("Capacity")%>

                            </div>
                        </div>
                               <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  توان ورودی بر حسب وات:</code>
                             
                              <%#Eval("InPower")%>

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>  توان خروجی بر حسب وات:</code>
                             
                             <%#Eval("OutPower")%>

                            </div>
                        </div>
                           <div class="row show-grid">
                            
                          <div class="col-md-12  "> 
                             <code>  ابعاد محصول بر حسب سانتی متر :</code>
                             
                              <%# Eval("X")+"*"+Eval("Y")+"*"+Eval("Z") %>

                            </div>
                        </div>
                              <div class="row show-grid">
                            
                            <div class="col-md-6  col-md-push-6"> 
                             <code>  دارای تاییده دریایی است؟</code>
                             
                                    <asp:CheckBox Checked='<%#Eval("HasSCer")%>' runat="server" />

                            </div>
                        
                            
                            <div class="col-md-6   col-md-pull-6"> 
                             <code>  دارای تاییدیه در نفت و گاز هست ؟:</code>
                             
                             <asp:CheckBox Checked='<%#Eval("HasOilCer")%>' runat="server" />
                            </div>
                        </div>

                           <div class="row show-grid">
                            
                            <div class="col-md-12 "> 
                             <code>   توضیحات تکمیل و نحوه تحویل  :</code>
                                <br />
                                 <%#Eval("Description") %></div>
                        </div>
                        
                    </div>
                </div>
            </div>

        </div>
  </ItemTemplate>
        </asp:Repeater>
        </div>
    
        
</asp:Content>
