<!DOCTYPE html>

<!--
  Copyright (c) 2015, Node Industries. All rights reserved. Use of this source code
  is governed by a BSD-style license that can be found in the LICENSE file.
-->

<html>
<head>
    <meta name="layout" content="main"/>

    <asset:javascript src="jssor.slider.mini.js"/>

    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,
                    $AutoCenter: 2,
                    $ChanceToShow: 2
                },
                $AutoPlay: true,
                $AutoPlayInterval: 5000,
                $SlideDuration:1000,
                $SlideEasing:$JssorEasing$.$EaseInOutQuad
            };
            var jssor_homepageslider = new $JssorSlider$('homepageslider_container', options);
            function ScaleSlider() {
                var parentWidth = $('#homepageslider_container').parent().width();
                if (parentWidth) {
                    jssor_homepageslider.$ScaleWidth(parentWidth);
                }
                else
                    $JssorUtils$.$Delay(ScaleSlider, 30);
                }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
        });
    </script>
</head>

<body>

<div id="homepageslider_container" style="position: relative; top: 0; left: 0; width: 600px; height: 200px; overflow: hidden;">
    <div u="loading" style="align-items: center; display: flex; justify-content: center;">
        <asset:image src="loading.gif"/>
        <h1>Loading...</h1>
    </div>
    <!-- Slides Container -->
    <div u="slides" style="cursor: move; position: absolute; overflow: hidden; left: 0; top: 0; width: 600px; height: 200px;">
        <div><asset:image u="image" src="sliderdemo/image1.jpg"/></div>
        <div><asset:image u="image" src="sliderdemo/image2.jpg"/></div>
    </div>
    <!-- Arrow Left -->
    <span u="arrowleft" class="jssora21l" style="top: 123px; left: 8px;">
    </span>
    <!-- Arrow Right -->
    <span u="arrowright" class="jssora21r" style="top: 123px; right: 8px;">
    </span>
    <!--#endregion Arrow Navigator Skin End -->
    <!-- Trigger -->
</div>
<div class="demo"></div>
</body>
</html>
