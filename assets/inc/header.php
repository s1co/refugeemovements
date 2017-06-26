<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
    <base href="https://refugeemovements.com">
    <title>Refugee Movements</title>

    <!-- D3.js-->
    <script src="https://d3js.org/d3.v4.js"></script>
    <script src="https://d3js.org/topojson.v2.min.js"></script>

    <!-- jQuery -->
     <script src="assets/js/jquery.min.js"></script>

     <!-- Bootstrap Core JavaScript -->
     <script src="assets/js/bootstrap.min.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700|Droid+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="assets/css/grayscale.min.css" rel="stylesheet">

    <!-- Own CSS -->
    <link href="assets/css/style.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
  <?php include_once("assets/inc/analyticstracking.php") ?>
    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                   <i class="fa fa-bars fa-2x"></i>
                </button>
                <a class="navbar-brand page-scroll" href="main#page-top">
                   <!-- <i class="fa fa-play-circle"></i>--> <span class="light">Home</span>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="main#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="main#about">Project</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="worldmap">World Map</a>
                    </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id="dropdown-menu">
                        Horn of Africa <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                      <li><a class="page-scroll" href="main#hoa">Overview</a></li>
                      <li><a href="somalia">Somalia</a></li>
                      <li><a href="sudan">Sudan &amp; South Sudan</a></li>
                      <li><a href="eritrea">Eritrea</a></li>
                      <li><a href="ethiopia">Ethiopia</a></li>
                      <li><a href="kenya-yemen-djibouti">Kenya, Yemen &amp; Djibouti</a></li>
                    </ul>
                </li>
                    <li>
                        <a class="page-scroll" href="main#data1">Data</a>
                    </li>
                     <li>
                        <a class="page-scroll" href="main#teambanner">Team</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
