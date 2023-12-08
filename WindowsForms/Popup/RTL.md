---
layout: post
title: RTL in Windows Forms Popup control | Syncfusion
description: Learn about RTL support in Syncfusion Windows Forms Popup (PopupControlContainer) control and more details.
platform: WindowsForms
control: PopupControlContainer
documentation: ug
---

# RTL in Windows Forms Popup (PopupControlContainer)

RTL is used to display the content from right to left by setting the [RightToLeft](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_RightToLeft) property to `Yes`.

The following code sample explains how to display the control from right-to-left.

{% tabs %}
{% highlight c# %}

this.popupControlContainer1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

Me.popupControlContainer1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{% endhighlight %}
{% endtabs %}

![right-to-left](RTL_Images/RTL.png)
