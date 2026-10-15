---
layout: post
title: Touch Mode in Windows Forms ContextMenuStrip | Syncfusion®
description: Learn here all about touch mode feature of Syncfusion® Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: windowsforms
control: ContextMenuStripEx
documentation: ug
---

# Touch Mode in WinForms Context Menu Strip

Touch mode makes the control easier to interact with on touch devices by enlarging the hit area and adjusting visual feedback for finger taps. This option can be enabled using the [`EnableTouchMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ContextMenuStripEx.html#Syncfusion_Windows_Forms_Tools_ContextMenuStripEx_EnableTouchMode) property of the WinForms Context Menu Strip control. Touch mode is supported on Windows 7 and later on devices that report touch input.


The below code snippet shows how touch mode is enabled in WinForms Context Menu Strip control.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx1.EnableTouchMode = true;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx1.EnableTouchMode = True

{% endhighlight %}
{% endtabs %}
