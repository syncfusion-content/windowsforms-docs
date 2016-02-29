---
layout: post
title: How-To-Change-the-Default-Font-Used-For-Rendering- | Windows Forms | Syncfusion
description: how to change the default font used for rendering the html document in the htmlui control?
platform: windowsforms
control: HTML UI
documentation: ug
---

# How To Change the Default Font Used For Rendering the HTML Document In the HTMLUI Control?

HTMLUI uses a default font to render the text from the HTML document, in cases where there are no specifications for the font to be used. You can change this default font by using the DefaultFormat.Font property, written while initializing the HTMLUI control.



{% highlight c# %}



htmluiControl1 = new Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl();

htmluiControl1.DefaultFormat.Font = new Font("Pristina",16);

{% endhighlight %}

{% highlight vbnet %}



Private htmluiControl1 = New Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl()

Private htmluiControl1.DefaultFormat.Font = New Font("Pristina",16)

{% endhighlight %}


