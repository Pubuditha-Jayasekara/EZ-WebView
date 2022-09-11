# EZ-WebView
This is a WKWebView based web view framework which supports for swift UI. 

Installation

pod 'EZ-WebView'

Available versions are -> 

pod 'EZ-WebView','~> 0.1.4'
pod 'EZ-WebView','~> 0.1.5'
pod 'EZ-WebView','~> 0.1.6'
pod 'EZ-WebView','~> 0.1.7'

Screenshots - >

1. With feedback alert.

<div class="row">
  <div class="column">
<img src="https://user-images.githubusercontent.com/35820857/189517890-4793095d-f57e-435c-9656-edcbd8a0e0f4.PNG" width="200" height="400" />
  </div>
  <div class="column">
<img src="https://user-images.githubusercontent.com/35820857/189517896-24c262bb-242c-4e37-b4da-6954f51f88f8.PNG" width="200" height="400" />
  </div>
  <div class="column">
<img src="https://user-images.githubusercontent.com/35820857/189517900-30bc3f91-98e7-4ad0-a3d5-b1649cfc3b1f.PNG" width="200" height="400" />
  </div>
</div>

<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>

<h2>Images Side by Side</h2>
<p>How to create side-by-side images with the CSS float property:</p>

<div class="row">
  <div class="column">
    <img src="img_snow.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="img_forest.jpg" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="img_mountains.jpg" alt="Mountains" style="width:100%">
  </div>
</div>

</body>
</html>
