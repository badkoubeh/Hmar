<%@ page language="C#" autoeventwireup="true" inherits="Index, LastDll" masterpagefile="~/HomerMasterPages.master" enableviewstatemac="false" enableEventValidation="false" %>
<asp:Content runat="server" ID="ctl00" ContentPlaceHolderID="head">
    		<!-- REVOLUTION SLIDER -->
		<link href="vendor/slider.elastic/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="vendor/blueimp-gallery/css/blueimp-gallery.min.css" />
  
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="outsideplaceholder" ID="ctl004">
    	<section>
				<div>

					<!-- ELASTIC SLIDER -->
					<div id="ei-slider" class="ei-slider" data-tumbwidth="100">

						<ul class="ei-slider-large nomargin">

							<!-- Slide 1 -->
							<li>
								<img src="Images/mod_wide_slide/01.jpg" alt="image01" />
								
							</li>

							<!-- Slide 2 -->
							<li>
								<img src="Images/mod_wide_slide/02.jpg" alt="image02" />
								
							</li>

							<!-- Slide 3 -->
							<li>
								<img src="Images/mod_wide_slide/03.jpg" alt="image03"/>
								
							</li>

							<!-- Slide 4 -->
							<li>
								<img src="Images/mod_wide_slide/04.jpg" alt="image04"/>
								
							</li>

							<!-- Slide 5 -->
							<li>
								<img src="Images/mod_wide_slide/01.jpg" alt="image05"/>
								
							</li>

							<!-- Slide 6 -->
							<li>
								<img src="Images/mod_wide_slide/06.jpg" alt="image06"/>
								
							</li>

							<!-- Slide 7 -->
							<li>
								<img src="Images/mod_wide_slide/07.jpg" alt="image07"/>
								
							</li>

						</ul>

						<!-- Thumbnails -->
						<ul class="ei-slider-thumbs">
						
							<li><a href="#">Slide 1</a><img src="Images/mod_wide_slide/01.jpg" alt="thumb01" /></li>
							<li><a href="#">Slide 2</a><img src="Images/mod_wide_slide/02.jpg" alt="thumb02" /></li>
							<li><a href="#">Slide 3</a><img src="Images/mod_wide_slide/03.jpg" alt="thumb03" /></li>
							<li><a href="#">Slide 4</a><img src="Images/mod_wide_slide/04.jpg" alt="thumb04" /></li>
							<li><a href="#">Slide 5</a><img src="Images/mod_wide_slide/05.jpg" alt="thumb05" /></li>
							<li><a href="#">Slide 6</a><img src="Images/mod_wide_slide/06.jpg" alt="thumb06" /></li>
							<li><a href="#">Slide 7</a><img src="Images/mod_wide_slide/07.jpg" alt="thumb07" /></li>
						</ul>
						<!-- /Thumbnails -->

					</div>
					<!-- /ELASTIC SLIDER -->
				
				</div>
			</section>
</asp:Content>
 <asp:Content    ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="CTL01">
     <!-- REVOLUTION SLIDER -->
		
			<!-- /REVOLUTION SLIDER -->
     
     <div class=" animate-panel">
         	<div class="row">
                   <div class="col-lg-12">
        <div class="hpanel hred">

            <div class="panel-body">
                <p>
             این وب سایت یک پایگاه به منظور تسهیل در جستجو و یافتن نیازها در حداقل زمان بصورت انلاین است و با حضور هر دو طرف خریدار و فروشنده در این وب سایت ، کاربران علاوه بر بهره مندی از مزایای تبلیغات محصولات ، خدمات و توانمندیهای خود ، قادر به ارتباط و معامله مستقیم با یکدیگر می باشند.
                   
                    
            </p>
               
            </div>
        </div>
    </div>
         	</div>
			<!-- / -->
         <div class="row ">
              <div class="hpanel">
                    <div class="panel-body">
            <div class="col-sm-4">
               <div class="lightBoxGallery">

                          
                            <a href="h_suply.aspx" target="_blank" title="تامین تجهیزات دریایی" ><img src="Images/landing/c1.png"/></a>
                           
                          
                            

                        </div>





               
            </div>
              <div class="col-sm-4">
              
                        <div class="lightBoxGallery">

                          
                            <a href="h_Ship.aspx" target="_blank" title="خرید و فروش کشتی" ><img src="Images/landing/c4.png"/></a>
                          
                            

                        </div>





                  
            </div>
              <div class="col-sm-4">
              

                        <div class="lightBoxGallery">

                          
                            <a href="h_cv.aspx" target="_blank" ><img src="Images/landing/c2.png"/></a>
                          
                            

                        </div>





                  
                        
                    </div>
                        </div>
          </div>
     <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-body">

                        <div class="lightBoxGallery">

                            <p>
                               مشاوره فنی آنلاین
                            </p>

                            <a href="http://fa.hmariner.com/epc-management/" target="_blank"  ><img src="Images/alliance-mngt.jpg"/></a>
                            <a href="http://fa.hmariner.com/حقوق-و-اقتصاد/" target="_blank" ><img src="Images/law.jpg"/></a>
                            <a href="http://fa.hmariner.com/مهندسی-زیر-سطحی/" target="_blank" ><img src="Images/subseascape.jpg"/></a>
                            <a href="http://fa.hmariner.com/مدیریت-بنادر/" target="_blank" ><img src="Images/pmhm1.jpg"/></a>
                            <a href="http://fa.hmariner.com/مدیریت-شناورها/"  target="_blank"><img src="Images/smhm.jpg"/></a>
                           


                        </div>





                    </div>
                    <div class="panel-footer">
                        
                    </div>
                </div>
            </div>
        </div>
         </div>

 </asp:Content>
<asp:Content runat ="server" ID="ctl003" ContentPlaceHolderID="footer">
    <script type="text/javascript" src="vendor/slider.elastic/js/jquery.eislideshow.js"></script>
		<script type="text/javascript" src="js/demo.elastic_slider.js"></script>
    <script src="vendor/blueimp-gallery/js/jquery.blueimp-gallery.min.js"></script>

    <style>

    .lightBoxGallery {
        text-align: center;
    }

    .lightBoxGallery a {
        margin: 5px;
        display: inline-block;
    }

</style>
    

</asp:Content>