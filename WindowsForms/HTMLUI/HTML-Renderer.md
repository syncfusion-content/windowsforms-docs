---
layout: post
title: HTML-Renderer
description:  html renderer
platform: WindowsForms
control: HTML UI
documentation: ug
---

#  HTML Renderer

As the HTMLUI control supports rendering of web pages, it can be used like a light-weight web browser for compact applications that include links to references.



[C#]



// Load the specified HTML document from System.Uri in to HTMLUI Control and renders it.

string path = "http://www.Google.com";

Uri uri = new Uri(path);

htmluiControl1.LoadHTML(uri);





[VB.NET]



' Load the specified HTML document from System.Uri in to HTMLUI Control and renders it.

Private path As String = "http://www.Google.com"

Private uri As Uri = New Uri(path)

HtmluiControl1.LoadHTML(uri)



Also the ability of the HTMLUI control to load from strings can be used in creating HTML editors for tutorial applications.



[C#]



// Load HTML Document from String.

string htmlString = "&lt;HTML&gt;

&lt;BODY&gt; Document loaded through the LoadFromString method &lt;/BODY&gt; 

&lt;/HTML&gt;"; 

this.htmluiControl1.LoadFromString(htmlString);



[VB.NET]



Private htmlString As String = "&lt;HTML&gt;"

<BODY>Document loaded through the LoadFromString method</BODY> 

&lt;/HTML&gt;" 

Me.HtmluiControl1.LoadFromString(htmlString)



The following figure shows an HTML Editor rendered using HTMLUI.



{ ![](HTML-Renderer_images/HTML-Renderer_img1.png) | markdownify }
{:.image }


## HTMLUI Browser Sample

This sample demonstrates the implementation of a Web Browser in HTMLUI.



{ ![](HTML-Renderer_images/HTML-Renderer_img2.jpeg) | markdownify }
{:.image }




By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



## HTMLUI Editor Sample

This sample demonstrates the implementation of HTML Editors in HTMLUI.



{ ![](HTML-Renderer_images/HTML-Renderer_img3.jpeg) | markdownify }
{:.image }




By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

