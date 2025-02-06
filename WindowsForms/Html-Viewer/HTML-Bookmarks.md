---
layout: post
title: HTML Bookmarks in Windows Forms Html Viewer control | Syncfusion®
description: Learn about HTML Bookmarks support in Syncfusion® Windows Forms Html Viewer (HTMLUI) control and more details.
platform: windowsforms
control: HTML UI
documentation: ug
---

#  HTML bookmarks in Windows Forms Html Viewer control

Bookmarks feature is enabled in the HTMLUI control. This allows the user to switch to particular references in the page when the link is clicked. The HTMLUI control has another functionality of referring bookmarks which is, referring them not only in the same page, but also in other pages.

{% tabs %}

{% highlight HTML %}

<html>

<body>

<a href="Newfile.htm#bookmark"> New file Book mark </a>

<a href="#bookmark"> Bookmark in same file </a>

......

......

<div id="bookmark"> Syncfusion's HTMLUI Control </div>

</body>

</html>

{% endhighlight %}

{% endtabs %}

![HTML-Bookmarks_img1](HTML-Bookmarks_images/HTML-Bookmarks_img1.png)



## HTMLUI bookmarks sample

This sample illustrates the implementation of Bookmarks in HTMLUI.



![HTML-Bookmarks_img2](HTML-Bookmarks_images/HTML-Bookmarks_img2.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_



