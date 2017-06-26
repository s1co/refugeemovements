// copied and adapted from Sven's D3 script
// create the necessary variables
// include margins: https://bl.ocks.org/mbostock/3019563
var margin = {top: 20, right: 10, bottom: 20, left: 10};
var width = 250 - margin.left - margin.right // graphics container width
var height = 350 - margin.top - margin.bottom // graphics container height


var r = 9// radius of the circles
var dots = 200 // total number of dots (10'000 refugees per dot)


// this appends dataset:
var dataset = []; // creates an empty dataset

// enter the numbers 1:150 into the dataset to steer each point individually
// http://stackoverflow.com/questions/33544993/i-want-to-print-1-to-100-numbers-using-arrays-in-javascript-only
for(var value = 1; value <= 200; value++) {
    dataset.push(value);
}


// this creates a function to ascertain the coordinates of every point
var circlePerRow = (width) / (2 * r + 2)
var coord = [] // creates an empty coord variable

function getCoordinates(dataset) {
  var i = 0;
  dataset.forEach( function() {
    var newElement = {};
    newElement.col = i % circlePerRow;
    newElement.x = newElement.col * (2*r + 2) + 5;
    newElement.row = Math.floor(i / circlePerRow) + 1;
    newElement.y = newElement.row * (2*r + 2);
    coord.push(newElement);
    i++;
  })
  return coord;
}

var coords = getCoordinates(dataset);
var coordsX = coords.map(function(d) { return d["x"]; });
var coordsY = coords.map(function(d) { return d["y"]; });

// create the baseline grey dataObj
var dataArray = [];


dataArray.push([]);
dataArray[0].push({picture:"Map_Somalia.png", height:310});



dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 40){
    dataArray[1].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
  } else {
    dataArray[1].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 80){
    dataArray[2].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
  } else {
    dataArray[2].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}


dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 40){
    dataArray[3].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
  } else {
    dataArray[3].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 110){
    dataArray[4].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
  } else {
    dataArray[4].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 48){
    dataArray[5].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#7ab28e", opacity:1});
	} else if (i <= 48 + 24){
		dataArray[5].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#f7ab65", opacity:1});
	} else if (i <= 48 + 24 + 23){
		dataArray[5].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#cdc9a4", opacity:1});
	} else if (i <= 48 + 24 + 23 + 15){
		dataArray[5].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[5].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
dataArray[6].push({picture:"Map_Sudan.png", height:308});

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 45){
    dataArray[7].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1, length: 300});
	} else if (i <= 45 + 35){
		dataArray[7].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 45 + 35 + 10){
		dataArray[7].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#eb5d4d", opacity:1});
  } else {
    dataArray[7].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0, length: 300});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 10){
    dataArray[8].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
	} else if (i <= 10 + 24){
		dataArray[8].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 10 + 24 + 68){
		dataArray[8].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#eb5d4d", opacity:1});
  } else {
    dataArray[8].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 68){
    dataArray[9].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
	} else if (i <= 68 + 23){
		dataArray[9].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 68 + 23 + 38){
		dataArray[9].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#eb5d4d", opacity:1});
  } else {
    dataArray[9].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 65){
    dataArray[10].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#eb5d4d", opacity:1});
	} else if (i <= 65 + 49){
		dataArray[10].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 65 + 49 + 12){
		dataArray[10].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#eb5d4d", opacity:1});
  } else {
    dataArray[10].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 35){
    dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#555555", opacity:1});
	} else if (i <= 35 + 21){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#e07265", opacity:1});
	} else if (i <= 35 + 21 + 3.3){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#f7ab65", opacity:1});
	} else if (i <= 35 + 21 + 3.3 + 5.7){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
	} else if (i <= 35 + 21 + 3.3 + 5.7 + 49){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 35 + 21 + 3.3 + 5.7 + 49 + 7.3){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#f7ab65", opacity:1});
	} else if (i <= 35 + 21 + 3.3 + 5.7 + 49 + 7.3 + 2.2){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#cdc9a4", opacity:1});
	} else if (i <= 35 + 21 + 3.3 + 5.7 + 49 + 7.3 + 2 + 2){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#7ab28e", opacity:1});
	} else if (i <= 35 + 21 + 3.3 + 5.7 + 49 + 7.3 + 2 + 2 + 1){
		dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[11].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 86){
    dataArray[12].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#f7ab65", opacity:1});
	} else if (i <= 86 + 13){
		dataArray[12].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#555555", opacity:1});
	} else if (i <= 86 + 13 + 1){
		dataArray[12].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[12].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 43){
    dataArray[13].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#cdc9a4", opacity:1});
	} else if (i <= 43 + 32){
		dataArray[13].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
	} else if (i <= 43 + 32 + 28){
		dataArray[13].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 43 + 32 + 28 + 10.8){
		dataArray[13].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#cdc9a4", opacity:1});
	} else if (i <= 43 + 32 + 28 + 10.8 + 4.2){
		dataArray[13].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[13].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
dataArray[14].push({picture:"Map_Eritrea.png", height:227});

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 43){
    dataArray[15].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#e07265", opacity:1});
  } else {
    dataArray[15].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 12){
    dataArray[16].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#e07265", opacity:1});
  } else {
    dataArray[16].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 10.8){
    dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#e07265", opacity:1});
	} else if (i <= 10.8 + 8.3){
		dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#f7ab65", opacity:1});
	} else if (i <= 10.8 + 8.3 + 3.55){
		dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#cdc9a4", opacity:1});
	} else if (i <= 10.8 + 8.3 + 3.55 + 1){
		dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#964a41", opacity:1});
	} else if (i <= 10.8 + 8.3 + 3.55 + 1 + 1){
		dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#555555", opacity:1});
	} else if (i <= 10.8 + 8.3 + 3.55 + 1 + 1 + 5){
		dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[17].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
dataArray[18].push({picture:"Map_Ethiopia.png", height:231});

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 78){
    dataArray[19].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#d6975c", opacity:1});
	} else if (i <= 78 + 70){
		dataArray[19].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#e07265", opacity:1});
	} else if (i <= 78 + 70 + 1){
		dataArray[19].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#555555", opacity:1});
	} else if (i <= 78 + 70 + 1 + 1){
		dataArray[19].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[19].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 26){
    dataArray[20].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#f7ab65", opacity:1});
  } else {
    dataArray[20].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);

for (i = 0; i < dots; i ++){
  if (i <= 26){
    dataArray[21].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#f7ab65", opacity:1});
	} else if (i <= 26 + 31){
		dataArray[21].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 26 + 31 + 6.5){
		dataArray[21].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#f7ab65", opacity:1});
  } else {
    dataArray[21].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 40){
    dataArray[22].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#e07265", opacity:1});
	} else if (i <= 40 + 33){
		dataArray[22].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#d6975c", opacity:1});
	} else if (i <= 40 + 33 + 2){
		dataArray[22].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[22].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 24){
    dataArray[23].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#d6975c", opacity:1});
	} else if (i <= 24 + 8){
		dataArray[23].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#cdc9a4", opacity:1});
	} else if (i <= 24 + 8 + 7){
		dataArray[23].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#e07265", opacity:1});
	} else if (i <= 24 + 8 + 7 + 4){
		dataArray[23].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[23].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
dataArray[24].push({picture:"Map_DKY.png", height:245});

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 1.5){
    dataArray[25].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#7ab28e", opacity:1});
	} else if (i <= 1.5 + 33){
		dataArray[25].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 1.5 + 33 + 38){
		dataArray[25].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#7ab28e", opacity:1});
  } else {
    dataArray[25].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 1.5){
    dataArray[26].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#7ab28e", opacity:1});
	} else if (i <= 1.5 + 33){
		dataArray[26].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 1.5 + 33 + 38){
		dataArray[26].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#7ab28e", opacity:1});
	} else if (i <= 1.5 + 33 + 38 + 31){
		dataArray[26].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 1.5 + 33 + 38 + 31 + 57){
		dataArray[26].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#7ab28e", opacity:1});
  } else {
    dataArray[26].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}


dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 1.5){
    dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
	} else if (i <= 1.5 + 33){
		dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 1.5 + 33 + 29){
		dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#d6975c", opacity:1});
	} else if (i <= 1.5 + 33 + 29 + 9){
		dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
	} else if (i <= 1.5 + 33 + 29 + 9 + 31){
		dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 1.5 + 33 + 29 + 9 + 31 + 52){
		dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#d6975c", opacity:1});
	} else if (i <= 1.5 + 33 + 29 + 9 + 31 + 52 + 5){
		dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[27].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 5){
    dataArray[28].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#d6975c", opacity:1});$
	} else if (i <= 5 + 1){
		dataArray[28].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
	} else if (i <= 5 + 1 + 28){
		dataArray[28].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 5 + 1 + 28 + 23){
		dataArray[28].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#d6975c", opacity:1});
	} else if (i <= 5 + 1 + 28 + 23 + 1){
		dataArray[28].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
  } else {
    dataArray[28].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}

dataArray.push([]);
for (i = 0; i < dots; i ++){
  if (i <= 8){
    dataArray[29].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"#d6975c", opacity:1});$
	} else if (i <= 8 + 1){
		dataArray[29].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#a7a6a6", opacity:1});
	} else if (i <= 8 + 1 + 25){
		dataArray[29].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "white", opacity:0});
	} else if (i <= 8 + 1 + 25 + 2){
		dataArray[29].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color: "#d6975c", opacity:1});
  } else {
    dataArray[29].push({value:dataset[i], x:coordsX[i], y:coordsY[i], color:"white", opacity:0});
  }
}
// now create an svg var //

var countries = {somalia:1, sudan:7, eritrea:15, ethiopia:19 , kyd:25};
var country = d3.select("#graph").attr("class");

//Change height of SVG for certain countries
if (countries[country] == 15){
  height = 150;
} else if (countries[country] == 1){
  height = 230;
}
// within the "graph" container and with padding https://bl.ocks.org/mbostock/3019563
var svg = d3.select('#graph').html('')
  .append('svg')
		.attr("width", width + margin.left + margin.right)
		.attr("height", height + margin.top + margin.bottom)
		.attr("style", "margin-top: 50px;")
	.append("g")
		.attr("transform", "translate(" + margin.left + "," + margin.top + ")")

// create the basic circles
var Circles = svg.selectAll('circle.top')
		.data(dataArray[1])
		.enter()
		.append('circle')
		.attr("r", r)
		.attr("cx",function(d){return d.x;})
		.attr("cy",function(d){return d.y;})
		.style('fill', 'none');

var countryMap = svg.append("svg:image")
    .attr("x", "-5")
    .attr("y", "0")
		.attr("width", width + margin.left + margin.right )


var text1 = svg.append('text.one')
    .attr("x", 5)
    .attr("y", 280)
    .attr("font-family", "'Droid Serif', serif")
    .attr("font-size", "14px");

var text2 = svg.append('text.one')
    .attr("x", 5)
    .attr("y", 280)
    .attr("font-family", "'Droid Serif', serif")
    .attr("font-size", "14px");

var text3 = svg.append('text.one')
    .attr("x", 5)
    .attr("y", 280)
    .attr("font-family", "'Droid Serif', serif")
    .attr("font-size", "14px");

// /// create the positioning variables
var texta = ["","1989: 400,000 Somali refugees", "1992: 800,000 Somali refugees", "2005: 400,000 Somali refugees", "2013: 1.1 million Somali refugees", "asylum for Somali refugees","", "1989: 450,000 Sudanese refugees", "1991: 100,000 Sudanese refugees", "2006: 680,000 Sudanese refugees", "Sudan 2013: 650,000 refugees", "650,000 Sudanese refugees", "1990: 1 million refugees", "1993: 750,000 refugees", "", "1994: 430,000 Eritrean refugees", "2003: 120,000 Eritrean refugees", "2013: 300,000 refugees", "", "1989: 1.5 million refugees", "1993: 260,000 refugees", "1993: 260,000 refugees", "1990: 750,000 refugees", "2013: 430,000 refugees", "", "1990: 15,000 refugees", "1990: 15,000 refugees", "1992: 290,000 Somali refugees", "1992: 60,000 refugees", "1991: 80,000 Somali refugees"]

var lengthtext = [500,120,180,120,240,240,500,120,60,160,160,160,220,180,200,120,80,100,200,320,100,100,180,120,300,60,60,180,60,60]

var textb = ["","","","","","","","1991: 100,000 Sudanese refugees","2006: 680,000 Sudanese refugees","2009: 380,000 Sudanese refugees","South Sudan 2013: 120,000 refugees", "120,000 South Sudanese refugees","","2013: 160,000 refugees","","","","","","","","1994-2013: 65,000 refugees","","","","1992: 380,000 refugees","1992: 380,000 refugees","2011: 470,000 Somali refugees","2011: 240,000 refugees","20,000 Somali refugees since then",]
var lengthtextb =
[200,120,170,120,230,220,200,200,220,280,260,260,400,260,
	400,400,400,400,400,400,400,160,400,400,400,180,180,320,160,120]

var textc = ["","","","","","","","","","","","","","","","","","","","","","","","","","","2011: 570,000 refugees","","","","","","","","",""]
var lengthtextc = [200,120,170,120,230,220,200,200,210,270,210,210,400,250,
	400,400,400,400,400,400,400,400,400,400,400,170,320,400,400,400]

// create the D3 visualization
d3.graphScroll()
    .container(d3.select('#container2'))
    .graph(d3.selectAll('#graph'))
		.eventId('uniqueId1')
    .sections(d3.selectAll('#sections > div'))
    .on('active', function(i){
      i = i + countries[country];
      text1.transition()
      .text(texta[i])
			.attr("y", lengthtext[i])
			text2.transition()
			.text(textb[i])
			.attr("y", lengthtextb[i])
			text3.transition()
			.text(textc[i])
			.attr("y", lengthtextc[i])

			if (i == 0 | i == 6 | i == 14 | i == 18 | i == 24) {
				countryMap.transition()
					.attr("opacity", 1)
					.attr("xlink:href", dataArray[i]["0"].picture)
					.attr("height", dataArray[i]["0"].height)

				Circles.data(dataArray[i+1]).transition()
					.duration(function(d){return Math.floor(Math.random() * 1500) + 1 ;})
					.style('opacity', 0)

			} else {

				countryMap.transition()
					.attr("opacity", 0)

				modifyCircles(i)
			}
    });

		function modifyCircles(i){
			Circles.data(dataArray[i]).transition()
				.duration(function(d){return Math.floor(Math.random() * 1500) + 1 ;})
				.style('fill', function(d){ return d.color})
				.style('opacity', function(d){ return d.opacity})
		}
