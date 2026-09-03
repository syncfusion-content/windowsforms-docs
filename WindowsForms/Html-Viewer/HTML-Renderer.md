---
layout: post
title: HTML Renderer in Windows Forms HTMLUI control | Syncfusion®
description: Learn about HTML Renderer support in Syncfusion Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTMLUI
documentation: ug
---

# HTML renderer in WinForms HTML Viewer control

As the WinForms HTML Viewer control supports rendering of web pages, it can be used like a light-weight web browser for compact applications that include links to references.

{% tabs %}

{% highlight C# %}



// Load the specified HTML document from System.Uri in to HTMLUI Control and renders it.

string path = "http://www.Google.com";

Uri uri = new Uri(path);

htmluiControl1.LoadHTML(uri);

{% endhighlight %}

{% highlight VB %}



' Load the specified HTML document from System.Uri in to HTMLUI Control and renders it.

Private path As String = "http://www.Google.com"

Private uri As Uri = New Uri(path)

HtmluiControl1.LoadHTML(uri)

{% endhighlight %}

{% endtabs %}

Also the ability of the WinForms HTML Viewer control to load from strings can be used in creating HTML editors for tutorial applications.

{% tabs %}

{% highlight C# %}



// Load HTML Document from String.

string htmlString = "<HTML>

<BODY> Document loaded through the LoadFromString method </BODY> 

</HTML>"; 

this.htmluiControl1.LoadFromString(htmlString);

{% endhighlight %}

{% highlight VB %}



Private htmlString As String = "<HTML>"

<BODY>Document loaded through the LoadFromString method</BODY> 

</HTML>" 

Me.HtmluiControl1.LoadFromString(htmlString)

{% endhighlight %}

{% endtabs %}

The following figure shows an HTML Editor rendered using WinForms HTML Viewer.



![HTML-Renderer_img1](HTML-Renderer_images/HTML-Renderer_img1.png)



## WinForms HTML Viewer browser sample

This sample demonstrates the implementation of a Web Browser in WinForms HTML Viewer.



![HTML-Renderer_img2](HTML-Renderer_images/HTML-Renderer_img2.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



## WinForms HTML Viewer editor sample

This sample demonstrates the implementation of HTML Editors in WinForms HTML Viewer.



![HTML-Renderer_img3](HTML-Renderer_images/HTML-Renderer_img3.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
