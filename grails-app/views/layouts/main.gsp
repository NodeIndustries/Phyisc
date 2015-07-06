<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Node Industries"/></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />

    <asset:stylesheet src="style.css"/>

    <asset:javascript src="jquery-2.1.3.js"/>

    <script>
        $(window).scroll(function () {
            if ($(document).scrollTop() > 0) {
                $("navbar").removeClass("unfixed")
            } else {
                $("navbar").addClass("unfixed")
            }
        });
    </script>

    <script>
        $(window).load(function() {
            var sel = "search";
            var setsearch = function(){
                $(sel).css('width', $(sel).width() + 1);
                $(sel).css('left', $(sel).position().left + 'px');
            };
            var unsetsearch = function () {
                $("search").removeClass("active");
                $(".searchbar").removeClass("active");
                $(sel).css('left', "unset");
                setTimeout(function () { setsearch(); }, 1000);
                setTimeout(function(){
                    if ($(document).scrollTop() <= 0) {
                        $("navbar").addClass("unfixed");
                }}, 500);
            };
            setsearch();
            $(sel).click(function () {
                $(sel).addClass("active");
                $("navbar").removeClass("unfixed");
                $(".searchbar").addClass("active");
                $(".search").focus();
            });
            $(".x").click(unsetsearch);
            $(".search").focusout(unsetsearch);
            $(window).resize(unsetsearch);
        });
    </script>

    <script>
        var navitems = ["about", "products", "software", "code", "av", "science", "ideas"]
        $(window).load(function() {
            navitems.forEach(function(item){
                $("navbar item." + item + ", dropdown." + item).hover(function () {
                    $("nav dropdown." + item).toggleClass("active");
                    $("navbar item." + item).toggleClass("active");
                });
            });
        });
    </script>

    <script>
        $(document).ready(function(){
            var supports3DTransforms =  document.body.style['webkitPerspective'] !== undefined ||
                    document.body.style['MozPerspective'] !== undefined;
            function linkify( selector ) {
                if( supports3DTransforms ) {

                    var nodes = document.querySelectorAll( selector );

                    for( var i = 0, len = nodes.length; i < len; i++ ) {
                        var node = nodes[i];

                        if( !node.className || !node.className.match( /roll/g ) ) {
                            node.className += ' roll';
                            node.innerHTML = '<span data-title="'+ node.text +'">' + node.innerHTML + '</span>';
                        }
                    }
                }
            }
            linkify( 'a.link' );
        });
    </script>

    <g:layoutHead/>
</head>

<body>
<nav>
    <navbar class="unfixed">
        <div class="searchbar"><input type="text" class="search" placeholder="Press Enter to Search"><asset:image class="x" src="X.svg" height="40px"/></div>
        <div class="logo-background"></div>
        %{--Todo: add logo text--}%
        <asset:image class="logo" src="logo.svg" alt="Node Industries Logo" title="Oh hey! What's going on? We are planning on adding random tooltip text to the logo but not yet."/>
        <items>
            <item class="about">About</item>
            <item class="products">Products</item>
            <item class="software">Software</item>
            <item class="code">Code</item>
            <item class="av">AV</item>
            <item class="science">Science</item>
            <item class="ideas">Ideas</item>
        </items>
        <search><asset:image src="search.svg" height="40px"/></search>
    </navbar>
    <dropdown class="about">
        <section>
            <h1>Missions</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>History</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>Team</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
    <dropdown class="products">
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
    <dropdown class="software">
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
    <dropdown class="code">
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
    <dropdown class="av">
        <section>
            <h1>Squizit</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>Public Art</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>Design</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
    <dropdown class="science">
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
    <dropdown class="ideas">
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
        <section>
            <h1>lalna</h1>
            <p>This is an amazing thing that does amazing stuff and it goes on and on and on and on and on and on and on and on and on and on and on and on and on and on and on and on...</p>
        </section>
    </dropdown>
</nav>
<g:layoutBody/>
</body>
</html>