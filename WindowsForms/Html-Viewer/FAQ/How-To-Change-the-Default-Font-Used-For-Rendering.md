---
layout: post
title: How to Change Default Font for Rendering in Html Viewer | Syncfusion®
description: Learn how to change the Default Font Used for Rendering in Syncfusion Windows Forms Html Viewer control, its elements and more details.
platform: windowsforms
control: HTMLUIControl
documentation: ug
---

# How to Change Default Font for Rendering in Html Viewer

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
