<!-- World Map Header -->
<header class="intro-worldmap">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="brand-heading">Interactive World map</h2>
                    <p class="intro-text">See where refugees come from and where they go.</p>
                    <a href="#worldmap" class="btn btn-circle page-scroll">
                        <i class="fa fa-angle-double-down animated"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>


 <!-- World map Section -->
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
 <section class="container content-section text-center">
    <div id="worldmap-description" class="row">
        <div id="btn-group1" class="col-lg-8 col-lg-offset-2">
            <h2>Legend</h2>
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
                        <i class="fa fa-angle-double-up animated"></i>
                    </a>
            </div>
        </div>
</section>

<!-- Worldmap -->
<script src='assets/js/worldmap.js'></script>
