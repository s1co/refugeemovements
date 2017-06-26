
<!-- Intro Header -->
<header class="intro">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h1 class="brand-heading">Mapping Global Refugee Movements </h1>
                    <p class="intro-text">A Capstone project from the University of Zurich for the Swiss Agency for Development and Cooperation</p>
                    <a href="#about" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- About Section -->
<section id="about" class="container content-section text-center">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <h2>About this Capstone Project</h2>
            <p>How have global refugee movements developed since the end of the Cold War? Where did refugees come from and where did they go? Refugeemovements.com provides high quality spacial and temporal interactive visualization of imputed raw data collected by the UN Refugee Agency <a href="http://www.unhcr.org/" target="_blank">UNHCR</a>.</p>

            <p>By scrolling down, you can explore the data on worldwide refugee movements and follow our story-telling on refugee movements to and from the Great Horn of Africa region. This website was created within the Capstone Course "Mapping Global Refugee Flows" at the <a href="http://www.ipz.uzh.ch/en.html" target="_blank">Department of Political Science</a> at the University of Zurich in cooperation with the <a href="http://www.ipz.uzh.ch/en.html" target="_blank"> Swiss Agency for Development and Cooperation SDC</a></p>
        </div>
    </div>
</section>

 <!-- World map Section -->
 <!-- World Map Banner -->
<section id="worldbanner" class="content-section text-center">
    <div class="world-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Interactive World map</h2>
                <p>See where refugees come from and where they go.</p>
                <a href="#worldmap" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
            </div>
        </div>
    </div>
</section>
 <section class="container content-section text-center">
    <div id="worldmap-description" class="row">
        <div id="btn-group1" class="col-lg-8 col-lg-offset-2">
            <h2>Before you begin...</h2>
            <p></p>
                <p>The width of an arrow indicates how large a refugee movement is. Arrows represent a minimum net change in refugee population of 50 individuals.</p>
                <p><img src="assets/img/icon-arrow.png" alt="" width = "10%"></p>
                <p>The pie chart on the right shows the proportion of refugee movements taking place <font color = "#555555">within </font> a region and to <font color = "#f8ab65">other</font> world regions.</p>
                <p><img src="assets/img/pie-chart.png" alt="" width = "10%"></p>
                <p>The bar chart on the left shows the most important asylum or origin countries for the selected year and world region.</p>
                <p><img src="assets/img/bar-chart.png" alt="" width = "10%"></p>
                <p>To simplify the visualization of refugee movements, we use world regions to aggregate the data on net change in refugee population.</p>
                <p><img src="assets/img/globe.png" alt="" width = "10%"></p>
                <p>Use the time slider to observe the change in refugee populations over the years.</p>
                <p><img src="assets/img/slider.png" alt="" width = "30%"></p>
                <a href="#worldmap" class="btn btn-circle-black page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
            </div>
        </div>
</section>
<section class="container content-section text-center">
    <div id="worldmap" class="row">
        <div id="btn-group1" class="col-lg-8 col-lg-offset-2">
            <h2>Your turn</h2>
                <p>Click on a region to visualize the change in net refugee population.</p>
                <div class="btn-group">
                <button id="to" type="button" class="btn btn-default btn-lg">IN</button>
                <button id="from"type="button" class="btn btn-default btn-lg btn-clicked">OUT</button>
            </div>
        </div>
    </div>
</section>

<!-- Horn of Africa Section -->
<!-- Overview Banner -->
<section id="hoa" class="content-section text-center">
    <div class="download-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Horn of Africa</h2>
                <p>Scroll down to discover how refugee movements changed in the region.</p>
               <a href="#hoa-overview" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
            </div>
        </div>
    </div>
</section>

<!-- HOA Storytelling Overview content -->
<section id="hoa-overview">
    <div class="container content-section text-center">
        <div class="col-lg-8 col-lg-offset-2">

        </div>
        <div class="col-lg-8 col-lg-offset-2" id="story-overview">
            <h3>Overview</h3>
            <img src="assets/img/Map_GHoA.jpg" alt="" width ="70%">
            <p></p>
            <p>During the past 25 years, the population of the Great Horn of Africa region has been drastically affected by conflict and natural disasters. For these reasons, the region has repeatedly seen large-scale refugee movements both within and from the Great Horn of Africa. It has also been the focal point of international humanitarian concern and aid efforts.</p>
            <p> Somalia, Eritrea, Ethiopia, Sudan and South Sudan have been the main origin countries of refugees from the Great Horn of Africa.</p>
            <p> Djibouti, Kenya and Yemen are mainly host countries to refugees from the region.</p>

             <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal1">What is the <br>great horn of Africa?</button>
            <p><br></p>
        </div>
        <div class="col-lg-8 col-lg-offset-2">
            <br>
            <p>Since 2010, more refugees originate in the Great Horn of Africa than in the other African countries.</p>
            <img src="assets/img/5_origin_in_percent.jpeg" alt="" width = "100%">
        </div>
        <div class="col-lg-8 col-lg-offset-2">
            <br>
            <p>Between 1989 and 2013, Somalian and Sudanese refugees made up the largest fraction of regional refugee movements. The Ethiopian refugee population has sharply declined until 1995 and then remained stable. The Eritrean refugee population remained more or less on the same level.</p>
            <img src="assets/img/1_HoA_by_country.jpeg" alt="" width = "90%">
        </div>
        <div class="col-lg-8 col-lg-offset-2">
            <br>
            <p>Sudan and Ethiopia have been origin- as well as host and transit countries. Kenya and Yemen have hosted increasing numbers of Great Horn of Africa refugees. Djibouti has mainly been a transit country.</p>
            <img src="assets/img/2_HoA_by_country.jpeg" alt="" width = "90%">
        </div>
    </div>
</section>

 <section id="hoa" class="content-section text-center">
    <div class="download-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Pick a country</h2>
                <p>Select a country to discover how refugee movements have changed over time.</p>
                <a href="somalia" id="somalia" type="button" class="btn btn-default btn-lg page-scroll">Somalia</a>
                <a href="sudan" id="sudan"type="button" class="btn btn-default btn-lg page-scroll">Sudan &amp; South Sudan</a>
                <a href="eritrea" id="eritrea"type="button" class="btn btn-default btn-lg page-scroll">Eritrea</a>
                <a href="ethiopia" id="ethiopia"type="button" class="btn btn-default btn-lg page-scroll">Ethiopia</a>
                <a href="kenya-yemen-djibouti" id="kyd"type="button" class="btn btn-default btn-lg page-scroll">Kenya, Yemen &amp; Djibouti</a>
            </div>
        </div>
    </div>
</section>


<!-- Data Section -->
<!-- Data Banner -->
<section id="data1" class="content-section text-center">
    <div class="data-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Data</h2>
                <p>Find more about our data sources.</p>
                <a href="#data2" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
            </div>
        </div>
    </div>
</section>
 <!-- Data Description -->
<section id="data2" class="container content-section text-center">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <h2>Which data did we use?</h2>
            <p>For the visualization, we use imputed refugee stock data for the years 1989-2013 provided by the <a href="http://www.unhcr.org/global-trends-2015.html" target="_blank">UNHCR</a>. We focus on data stemming from the period after the Cold war, as data collection methods by UNHCR varied considerably before and after the end of the Cold war. Also, trustworthy data after 2013 is not readily available yet.</p>

            <p>In order to fill gaps in the existing UNHCR data, we refer to a contribution by the political scientist <a href="http://moritz-marbach.com/download/papers/20160525_unhcrdata.pdf" target="_blank">Moritz Marbach</a>, and use imputed data provided by him . Our dyadic data concerns the yearly refugee population stocks for a certain region or country. In order to provide maximum transparency, we make our data available <a href="http://moritz-marbach.com/data/index.html" target="_blank">here</a>.</p>

            <p>We use the term “refugee” according to the <a href="http://popstats.unhcr.org/en/overview#_ga=1.70006608.1791011244.1476303638" target="_blank">UNHCR definition</a>, where a refugee is defined as an individual recognized under the respective international Convention and therefore granted any form of protection (including temporary protection), or an individual in a refugee-like situation. This means, that other categories of persons of concern, such as asylum-seekers, are not included in the data displayed on this website.</p>

            <p>Refugee movements, as indicated in the world maps by arrows, are changes in refugee population of the respective year. Due to high discrepancies in the number of refugees, the size of the arrows is only comparable between selection (year/region). Refugee population changes below 50 individuals are not shown. In the Storytelling, each dot depicts 10’000 refugees.</p>
        </div>
    </div>
</section>

<!-- Team Section -->
<!-- Team Banner -->
<section id="teambanner" class="content-section text-center">
    <div class="team-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Our team</h2>
                <a href="#contact" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
            </div>
        </div>
    </div>
</section>

<!-- Team Description -->
<section id="contact" class="container content-section text-center">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
            <h2>Who we are</h2>
            <p>This website was realized during the Capstone Course Mapping Global Refugee Movements by a group of five MA students under the supervision of Prof. Dr. Fabrizio Gilardi. Feel free to email us to provide some feedback on our project, give us suggestions for future research and data visualizations, or to just say hello!</p>
            <p><a href="mailto:feedback@refugeemovements.com">feedback@refugeemovements.com</a>
            </p>
            <ul class="list-inline banner-social-buttons">
                <li>
                    <a href="https://github.com/s1co/refugeemovements" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                </li>
            </ul>
        </div>
        <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
            <div class="col-lg-4 col-lg-4 col-lg-4 col-md-4 col-md-4 col-md-4 profile">
              <div class="img-box">
                <img src="assets/img/regula.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="https://www.linkedin.com/in/regula-beltran-ojeda-0466b9113/" target="_blank"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h1>Regula Beltran</h1>
              <h2>Storytelling &amp; Visualization</h2>
              <p>Regula Beltran holds BA UZH in Political Science and Contemporary History. In her MA studies in Political Science, she specializes on democratization and social movements in Latin America.</p>
            </div>
            <div class="col-lg-4 col-lg-4 col-lg-4 col-md-4 col-md-4 col-md-4 profile">
              <div class="img-box">
                <img src="assets/img/sven.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="https://twitter.com/sven_corn" target="_blank"><li><i class="fa fa-twitter"></i></li></a>
                </ul>
              </div>
              <h1>Sven Cornehls</h1>
              <h2>Data Analysis &amp; Interactive Graphics</h2>
              <p>Sven Cornehls holds BA UZH in Political Science, Philosophy and Linguistics. In his MA studies in Data Journalism, he specializes in interactive data visualization.</p>
            </div>
            <div class="col-lg-4 col-lg-4 col-lg-4 col-md-4 col-md-4 col-md-4 profile">
              <div class="img-box">
                <img src="assets/img/fabrizio.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="http://fabriziogilardi.org" target="_blank"><li><i class="fa fa-home"></i></li></a>
                  <a href="https://twitter.com/fgilardi?lang=en" target="_blank"><li><i class="fa fa-twitter"></i></li></a>
                </ul>
              </div>
              <h1>Fabrizio Gilardi</h1>
              <h2>Project Lead &amp; <br>Supervision</h2>
              <p>Fabrizio Gilardi is Professor of Public Policy in the Department of Political Science at the University of Zurich</p>
            </div>
          </div>
          <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
            <div class="col-lg-4 col-lg-4 col-lg-4 col-md-4 col-md-4 col-md-4 profile">
              <div class="img-box">
                <img src="assets/img/robin.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="https://www.linkedin.com/in/robin-gut-a0b03022" target="_blank"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h1>Robin Gut</h1>
              <h2>Storytelling &amp; Visualization</h2>
              <p>Robin Gut holds a BA UZH in Political Science and Contemporary History. In his MA studies in Data Journalism and International Relations, he focuses on ethnic conflicts and migration flows worldwide.</p>
            </div>
            <div class="col-lg-4 col-lg-4 col-lg-4 col-md-4 col-md-4 col-md-4 profile">
              <div class="img-box">
                <img src="assets/img/pascal.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="https://www.xing.com/profile/Pascal_Scheiwiller2?sc_o=mxb_p" target="_blank"><li><i class="fa fa-xing"></i></li></a>
                  <a href="https://www.linkedin.com/in/pascal-scheiwiller-7bb80a84" target="_blank"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h1>Pascal Scheiwiller</h1>
              <h2>Webdesign &amp; Interactive Graphics</h2>
              <p>Pascal Scheiwiller holds a BA UZH in Political Science, Islamic Studies and Eastern European History. In his MA studies in Political Economy and Philosophy, he focuses on financial crises and fiscal policies.</p>
            </div>
            <div class="col-lg-4 col-lg-4 col-lg-4 col-md-4 col-md-4 col-md-4 profile">
              <div class="img-box">
                <img src="assets/img/lisa.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="https://www.linkedin.com/in/lisa-stepanski-643aa9145/" target="_blank"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h1>Lisa Stepanski</h1>
              <h2>Data Management & Visualization</h2>
              <p>Lisa Stepanski holds a BA in European Studies from Maastricht University. In her MA studies in Data Journalism, she focuses on Swiss elections and referendums.</p>
            </div>
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="myModal1" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h5 class="modal-title">The Great Horn of Africa</h5>
      </div>
      <div class="modal-body">
        <p>The Great Horn of Africa (GHoA) as defined by the Intergovernmental Authority on Development (IGAD), includes not only the countries denoted as Horn of Africa (Djibouti, Eritrea, Ethiopia and Somalia), but also Sudan, South Sudan, Kenya and Uganda.</p>

        <p>In light of the priorities set by the Swiss Federal Parliament (Message on International Cooperation 2013–2016) as well as important migratory flows, the Swiss Agency for Development and Cooperation (SDC) conceptually considers Yemen instead of Uganda to be part of the Great Horn of Africa region (Swiss Agency for Development and Cooperation SDC 2016). For the storytelling, we will rely on the same definition.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
 </div>

 <!-- Worldmap -->
 <script src='assets/js/worldmap.js'></script>
