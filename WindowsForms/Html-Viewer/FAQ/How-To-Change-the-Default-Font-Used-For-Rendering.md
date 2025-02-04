---
layout: post
title: Change-the-Default-Font-Used-For-Rendering | WindowsForms | Syncfusion®
description: how to change the default font used for rendering the html document in the htmlui control?
platform: WindowsForms
control: HTMLUIControl
documentation: ug
---

# How to change the default font used for rendering the HTML document in the HTMLUI control?

HTMLUI uses a default font to render the text from the HTML document, in cases where there are no specifications for the font to be used. You can change this default font by using the [DefaultFormat.Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl.html#Syncfusion_Windows_Forms_HTMLUI_HTMLUIControl_DefaultFormat) property, written while initializing the HTMLUI control.

{% tabs %}

{% highlight C# %}



htmluiControl1 = new Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl();

htmluiControl1.DefaultFormat.Font = new Font("Pristina",16);

{% endhighlight %}

{% highlight VB %}



Private htmluiControl1 = New Syncfusion.Windows.Forms.HTMLUI.HTMLUIControl()

Private htmluiControl1.DefaultFormat.Font = New Font("Pristina",16)

{% endhighlight %}

{% endtabs %}
