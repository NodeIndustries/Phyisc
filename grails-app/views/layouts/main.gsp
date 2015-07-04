<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Node Industries"/></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <asset:stylesheet src="style.css"/>

    <asset:javascript src="jquery-2.1.3.js"/>

    <g:layoutHead/>
</head>

<body>
<navbar class="fixed">
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
</navbar>
<g:layoutBody/>
</body>
</html>