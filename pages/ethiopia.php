<!-- Ethiopia Header -->
<header class="intro-ethiopia">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="brand-heading">Ethiopia</h2>
                    <p class="intro-text">Scroll down to discover how refugee movements have changed in Ethiopia.</p>
                    <a href="#story0" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Storytelling Section -->
<!-- Ethiopia Storytelling scroll graph -->
<section>
    <div class="container content-section text-center">
        <div class="col-lg-8 col-lg-offset-2">
            <div>
                  <h3> Overview </h3>
                  <img src="assets/img/Map_Ethiopia.png" alt="" width ="70%">
                  <p>Ethiopia plays an important role as origin, transit and host country. Apart from refugees, Ethiopian migration patterns include trafficked persons and irregular and economic migration.</p>
                  <p>While the Ethiopian refugee population has decreased significantly since the early nineties, Ethiopia is one of the top refugee host countries in Africa today.</p>
              </div>
        </div>
    </div>
</section>
<section id="story" class="container content-section text-center">
  <div class="row">
    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
      <div id='container2'>
        <div id='graph' class='ethiopia'></div>
        <div id='sections'>
          <div>
              <p>
                  In 1989, the Ethiopian refugee population was the largest in the region with 1.5 million. The refugees obtained asylum in
                  <font color = "#d6975c"><b>Somalia (780,000)</b></font>,
                  <font color = "#e07265"><b>Sudan (700,000)</b></font>,
                  <font color = "#555555"><b>United States (10,000)</b></font> and
                  <font color = "#a7a6a6"><b> other countries (10,000)</b></font>.
              </p>

              <!-- Trigger the modal with a button -->
                   <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModala">Find out why</button>
          </div>
          <div>
              <p>
                  After the war, the Ethiopian refugee population decreased sharply to 260,000 in 1993.
              </p>
          </div>
          <div>
              <p>
                  Between 1994 and 2013, the Ethiopian refugee population remained low at approximately 65,000.
              </p>
          </div>
          <div>
              <p>
                  Ethiopia is an important host- and transit country in the region. At the peak in 1990, the country granted asylum to 750,000 foreign refugees; thereof around
                  <font color = "#e07265"><b>400,000 from Sudan</b></font>,
                  <font color = "#d6975c"><b>330,000 from Somalia</b></font> and
                  <font color = "#a7a6a6"><b> 20,000 from other countries</b></font>.
              </p>
          </div>
          <div>
              <p>
                  This number declined steadily until 2006 and increased to 430,000 in 2013. In 2013,
                  <font color = "#d6975c"><b>240,0000 originated in Somalia</b></font>,
                  <font color = "#cdc9a4"><b>80,000 in Eritrea </b></font>,
                  <font color = "#e07265"><b>70,000 in South Sudan</b></font> and
                  <font color = "#a7a6a6"><b> 40,000 in other countries</b></font>.
              </p>
              <p>
                  Many migrants originating from Somalia and Eritrea also transit Ethiopia in order to advance north in direction of Sudan and Libya.
              </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
 <!-- Banner overview -->
<section id="hoa" class="content-section text-center">
    <div class="download-section">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Horn of Africa</h2>
                <p>See how refugee movements have changed in other countries</p>
                <a href="somalia" id="somalia" type="button" class="btn btn-default btn-lg page-scroll">Somalia</a>
                <a href="eritrea" id="eritrea"type="button" class="btn btn-default btn-lg page-scroll">Eritrea</a>
                <a href="sudan" id="sudan"type="button" class="btn btn-default btn-lg page-scroll">Sudan &amp; South Sudan</a>
                <a href="kenya-yemen-djibouti" id="kyd"type="button" class="btn btn-default btn-lg page-scroll">Kenya, Yemen &amp; Djibouti</a>
            </div>
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="myModala" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h5 class="modal-title">The Ethiopian Refugee Crisis</h5>
      </div>
      <div class="modal-body">
        <p>Before 1991, the genocide under dictator Mengistu Haile Mariam and the ensuing war between Mengistu's military regime and rebel groups fuelled the largest refugee crisis in the region.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<script src="assets/js/graph-scroll.js"></script>
<script src="assets/js/d3v4+jetpack.js"></script>
<script src="assets/js/storytelling.js"></script>
