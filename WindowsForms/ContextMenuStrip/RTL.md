---
layout: post
title: RTL in Windows Forms ContextMenuStrip | Syncfusion®
description: Learn here all about right to left (RTL) feature of Syncfusion® Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: windowsforms
control: ContextMenuStripEx
documentation: ug
---

# RTL in WinForms Context Menu Strip

RTL (right-to-left) is used to display the content from right to left by setting the [`RightToLeft`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdown.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDown_RightToLeft) property to the `System.Windows.Forms.RightToLeft.Yes` enum value.


The following code sample explains how to display the control from right-to-left.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{% endhighlight %}
{% endtabs %}

For application-wide RTL support, also set `this.RightToLeft = System.Windows.Forms.RightToLeft.Yes;` on the parent form.

![Context Menu Strip rendered in right-to-left layout](RTL_Images/RTL.png)