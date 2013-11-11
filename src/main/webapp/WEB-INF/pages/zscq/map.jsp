<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
<title>GMap.js Demo</title>
<style type="text/css">
body{
	font-family: 'Droid Sans', serif;
	color:#444;
	font-size:1.2em;
}
.ad_container{
	margin-bottom:20px;
	height:100px;
	float:right;
}
.container{
	width:90%;
	margin:30px auto;
	padding:25px;
	min-height:400px;
	height:auto;	
	background-color: #FFF;
}

.map {
	display: block;
	width: 95%;
	height: 350px;
	margin: 0 auto;
	-moz-box-shadow: 0px 5px 20px #ccc;
	-webkit-box-shadow: 0px 5px 20px #CCC;
	box-shadow: 0px 5px 20px #CCC;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="/static/gmap/gmaps.js"></script>
<script type="text/javascript">
/**
 * @author Paul
 */

 /**
  * Basic Map
  */
$(document).ready(function(){
 var map = new GMaps({
    el: '#basic_map',
    lat: 22.529083,
    lng: 114.045596,
    zoom: 17,
    zoomControl : true,
    zoomControlOpt: {
        style : 'SMALL',
        position: 'TOP_LEFT'
    },
    panControl : false,
  });
});

/**
 * Mouse Events on Maps
 */
$(document).ready(function(){
 var map = new GMaps({
    el: '#mouse_event_map',
    lat: 51.5073346,
    lng: -0.1276831,
    zoom: 12,
    zoomControl : true,
    zoomControlOpt: {
        style : 'SMALL',
        position: 'TOP_LEFT'
    },
    panControl : false,
    click: function(e){
      alert('Click event');
    },
    dragend: function(e){
      alert('Drag Event');
    }
  });
});

/**
 * Map Pointers
 */
$(document).ready(function(){
 var map = new GMaps({
    el: '#pointers_map',
    lat: 51.5073346,
    lng: -0.1276831,
    zoom: 13,
    zoomControl : true,
    zoomControlOpt: {
        style : 'SMALL',
        position: 'TOP_LEFT'
    },
    panControl : false,
  });
	map.addMarker({
      lat: 51.503324,
      lng: -0.119543,
      title: 'London Eye',
      infoWindow: {
        content: '<p>The London Eye is a giant Ferris wheel situated on the banks of the River Thames in London, England. The entire structure is 135 metres (443 ft) tall and the wheel has a diameter of 120 metres (394 ft).</p>' }
    });
  
    map.addMarker({
      lat: 51.5007396,
      lng: -0.1245299,
      title: 'Big Ben',
      infoWindow: {
        content: '<p>Big Ben is the nickname for the great bell of the clock at the north end of the Palace of Westminster in London, and often extended to refer to the clock and the clock tower, officially named Elizabeth Tower.</p>'
      }
    });

    map.addMarker({
      lat: 51.518856,
      lng: -0.1263371,
      title: 'British Museum',
      infoWindow: {
        content: '<p>The British Museum is a museum in London dedicated to human history and culture.</p>'
      }
    });

    map.addMarker({
      lat: 51.5085822,
      lng: -0.1283169,
      title: 'National Gallery',
      infoWindow: {
        content: '<p>The National Gallery is an art museum on Trafalgar Square, London. Founded in 1824, it houses a collection of over 2,300 paintings dating from the mid-13th century to 1900.</p>'
      }
    });

    map.addMarker({
      lat: 51.5228316,
      lng: -0.1553503,
      title: 'Madame Tussauds',
      infoWindow: {
        content: '<p>Madame Tussauds is a wax museum in London with branches in a number of major cities.</p>'
      }
    });

    map.addMarker({
      lat: 51.5089465,
      lng: -0.0764269,
      title: 'Tower Of London',
      infoWindow: {
        content: '<p>Her Majesty\'s Royal Palace and Fortress, more commonly known as the Tower of London, is a historic castle on the north bank of the River Thames in central London, England, United Kingdom.</p>'
      }
    });

/**
 * Geolocation
 */
 var map;
$(document).ready(function(){
  var map = new GMaps({
    el: '#geolocation_map',
    lat: 51.5073346,
  lng: -0.1276831,
  });

  GMaps.geolocate({
    success: function(position){
      map.setCenter(position.coords.latitude, position.coords.longitude);

      map.addMarker({
        lat: position.coords.latitude,
        lng: position.coords.longitude,
        title: 'You are here.',
        infoWindow: {
          content: '<p>You are here!</p>'
        }
      });
    },
    error: function(error){
      alert('Geolocation failed: '+error.message);
    },
    not_supported: function(){
      alert("Your browser does not support geolocation");
    }
  });
});

/**
 * Directions to London
 */
var map;
$(document).ready(function(){
  var map = new GMaps({
    el: '#directions_map',
    lat: 51.5073346,
    lng: -0.1276831,
    zoom:8
  });

  GMaps.geolocate({
    success: function(position){
      map.setCenter(position.coords.latitude, position.coords.longitude);
       map.drawRoute({
        origin: [position.coords.latitude, position.coords.longitude],
        destination: [51.5073346, -0.1276831],
        travelMode: 'driving',
        strokeColor: '#000',
        strokeOpacity: 0.6,
        strokeWeight: 6
      });
    },
    error: function(error){
      alert('Geolocation failed: '+error.message);
    },
    not_supported: function(){
      alert("Your browser does not support geolocation");
    }
  });
});

/**
 * Static Maps
 */
$(document).ready(function(){
  var url = GMaps.staticMapURL({
    size: [610, 350],
    lat: -33.858290691930996,
    lng: 151.21517658233643
  });
  $('<img/>').attr('src', url).appendTo('#static_map');
});
});
</script>
</head>
<body>

<section class="ad_container clearfix">
<div id="carbonads-container"><div class="carbonad"><div id="azcarbon"></div><script type="text/javascript">var z = document.createElement("script"); z.type = "text/javascript"; z.async = true; z.src = "http://engine.carbonads.com/z/16853/azcarbon_2_1_0_HORIZ"; var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(z, s);</script></div></div>
</section>
<section class="container">

	<div class="">
		<h2>Basic Map</h2>
      	<div id="basic_map" class="map"></div>
	</div>

	<div class="">
		<h2>Mouse Events on Map</h2>
		<p>Click and drag the map to activate the mouse events.</p>
		<div id="mouse_event_map" class="map"></div>
	</div>

	<div class="">
		<h2>Map Pointer</h2>
		<p>Click the map pointers to learn a little more about the location.</p>
		<div id="pointers_map" class="map"></div>
	</div>

	<div class="">
		<h2>Use Geolocation On The Map</h2>
		<p>Accept Geolocation on your browser to center the map in your current location.</p>
		<div id="geolocation_map" class="map"></div>
	</div>

	<div class="">
		<h2>Map Directions</h2>
		<p>This will show you directions to London.</p>
		<div id="directions_map" class="map"></div>
	</div>

	<div class="">
		<h2>Static Maps</h2>
		<p>When you want to display a map without any interaction it's a good image to just provide a image of the location.</p>
		<div id="static_map"></div>
	</div>

<p style="text-align: center;">
	<!-- Place this tag in the <head> of your document -->
<link href="https://plus.google.com/110725720433094046987" rel="publisher" /><script type="text/javascript">
window.___gcfg = {lang: 'en'};
(function() 
{var po = document.createElement("script");
po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
var s = document.getElementsByTagName("script")[0];
s.parentNode.insertBefore(po, s);
})();</script>

<!-- Place this tag where you want the badge to render -->
<g:plus href="https://plus.google.com/110725720433094046987" width="300" height="131" theme="light"></g:plus></p>	
<hr />

<p><a href="http://www.paulund.co.uk/create-google-maps-with-gmaps-js">Return To Tutorial</a></p>

</section>
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-8196211-5']);
_gaq.push(['_trackPageview']);
		
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
		
</script>	
</body>
</html>