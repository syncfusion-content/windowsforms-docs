---
layout: post
title: HTML-Renderer | WindowsForms | Syncfusion
description:  html renderer
platform: WindowsForms
control: HTML UI
documentation: ug
---

#  HTML Renderer

As the HTMLUI control supports rendering of web pages, it can be used like a light-weight web browser for compact applications that include links to references.



{% highlight c# %}



// Load the specified HTML document from System.Uri in to HTMLUI Control and renders it.

string path = "http://www.Google.com";

Uri uri = new Uri(path);

htmluiControl1.LoadHTML(uri);

{% endhighlight %}

{% highlight vbnet %}



' Load the specified HTML document from System.Uri in to HTMLUI Control and renders it.

Private path As String = "http://www.Google.com"

Private uri As Uri = New Uri(path)

HtmluiControl1.LoadHTML(uri)

{% endhighlight %}

Also the ability of the HTMLUI control to load from strings can be used in creating HTML editors for tutorial applications.



{% highlight c# %}



// Load HTML Document from String.

string htmlString = "<HTML>

<BODY> Document loaded through the LoadFromString method </BODY> 

</HTML>"; 

this.htmluiControl1.LoadFromString(htmlString);

{% endhighlight %}

{% highlight vbnet %}



Private htmlString As String = "<HTML>"

<BODY>Document loaded through the LoadFromString method</BODY> 

</HTML>" 

Me.HtmluiControl1.LoadFromString(htmlString)

{% endhighlight %}

The following figure shows an HTML Editor rendered using HTMLUI.



![](HTML-Renderer_images/HTML-Renderer_img1.png)



## HTMLUI Browser Sample

This sample demonstrates the implementation of a Web Browser in HTMLUI.



![](HTML-Renderer_images/HTML-Renderer_img2.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



## HTMLUI Editor Sample

This sample demonstrates the implementation of HTML Editors in HTMLUI.



![](HTML-Renderer_images/HTML-Renderer_img3.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

