---
layout: post
title: Scrolling | WindowsForms | Syncfusion
description:  scrolling
platform: WindowsForms
control: HTML UI
documentation: ug
---

#  Scrolling

The Scroll property of the HTMLUI control helps in loading large HTML documents. This scroll property can be set as per the application. Also the HTMLUI control allows programmatic scrolling to a particular location or element with its extensive scroll properties support.

{% tabs %}

{% highlight C# %}



// Scroll controls in such  way that the specified element is visible

IHTMLElement elem = this.htmluiControl1.Document.GetElementByUserId("pre");

this.htmluiControl1.ScrollToElement(elem);

{% endhighlight %}

{% highlight VB %}



' Scroll controls in such  way that the specified element is visible

Private elem As IHTMLElement = Me.htmluiControl1.Document.GetElementByUserId("pre")

Me.htmluiControl1.ScrollToElement(elem)

{% endhighlight %}

{% endtabs %}

## HTMLUIAutoScroll sample

This sample illustrates the Scrolling feature supported in HTMLUI.



![](Scrolling_images/Scrolling_img1.jpeg)





By default, this sample can be found under the following location:

...\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\HTMLUI.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

