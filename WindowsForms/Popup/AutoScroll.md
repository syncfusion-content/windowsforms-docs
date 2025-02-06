---
layout: post
title: Scroll Experience in Windows Forms Popup control | Syncfusion®
description: Learn about Scroll Experience support in Syncfusion® Windows Forms Popup (PopupControlContainer) control and more details.
platform: windowsforms
control: PopupControlContainer
documentation: ug
---

# Scroll Experience in Windows Forms Popup (PopupControlContainer)

[AutoScroll](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscroll?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScroll) option is mainly used to improve the work experience of the control, especially when there are items present beyond its actual size, by enabling scrollbar automatically. We can enable scrollbars for the PopupContainer control by setting [`AutoScroll`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscroll?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScroll) property to `true`. When AutoScroll is enabled for the control, we can set the margin and logical size for the scroll region by [`AutoScrollMargin`]() and [`AutoScrollMinSize`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscrollminsize?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScrollMinSize) properties.

The below code snippet will explain how to enable automatic scrolling in PopupControlContainer control.

{% tabs %}
{% highlight C# %}

this.popupControlContainer1.AutoScroll = true;
this.popupControlContainer1.AutoScrollMargin = new System.Drawing.Size(2, 2);
this.popupControlContainer1.AutoScrollMinSize = new System.Drawing.Size(3, 3);

{% endhighlight %}

{% highlight vb %}

Me.popupControlContainer1.AutoScroll = True
Me.popupControlContainer1.AutoScrollMargin = New System.Drawing.Size(2, 2)
Me.popupControlContainer1.AutoScrollMinSize = New System.Drawing.Size(3, 3)

{% endhighlight %}
{% endtabs %}

![AutoScroll](AutoScroll_Images/Scroll.png)
