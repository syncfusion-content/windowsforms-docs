---
layout: post
title:  RTL | Windows Forms | Syncfusion
description:  Display the control from right to left
platform: WindowsForms
control: PopupControlContainer
documentation: ug
---

# RTL

RTL is used to display the content from right to left by setting the [RightToLeft](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleft?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_RightToLeft) property to `Yes`.

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
