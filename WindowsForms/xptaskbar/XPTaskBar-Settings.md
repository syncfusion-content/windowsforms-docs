---
layout: post
title: XPTaskBar Settings  | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# XPTaskBar settings

The behavior of the XPTaskBar can be controlled using the properties given below.

## Behavior settings

This section discusses the behavior settings of the XPTaskBar.

* [AllowDrop](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.allowdrop?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_AllowDrop)
* [AutoPersistStates](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBar~AutoPersistStates.html)
* [VerticalLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBar~VerticalLayout.html)
* [ColWidthOnHorizontalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBar~ColWidthOnHorizontalAlignment.html)

{% tabs %}

{% highlight C# %}  

this.xpTaskBar1.AllowDrop = true;

this.xpTaskBar1.AutoPersistStates = true;

this.xpTaskBar1.ColWidthOnHorizontalAlignment = 100;

this.xpTaskBar1.VerticalLayout = true;

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBar1.AllowDrop = True

Me.xpTaskBar1.AutoPersistStates = True

Me.xpTaskBar1.ColWidthOnHorizontalAlignment = 100

Me.xpTaskBar1.VerticalLayout = True

{% endhighlight %}

{% endtabs %}

![XPTaskBar](Overview_images/Overview_img103.jpeg) 

![XPTaskBar](Overview_images/Overview_img104.jpeg)


## Scroll settings

Vertical scrollbar will be automatically added to the XPTaskBar when the TaskBar Boxes are placed outside the TaskBar's client area, provided the XPTaskBar is in the Vertical Layout mode.

In the Horizontal Layout mode, the horizontal scrollbar appears on setting the [ColWidthOnHorizontalLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBar~ColWidthOnHorizontalAlignment.html) property to large values.

* [AutoScroll](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscroll?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScroll)
* [AutoScrollMargin](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscrollmargin?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScrollMargin)
* [AutoScrollMinSize](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscrollminsize?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ScrollableControl_AutoScrollMinSize)

{% tabs %}

{% highlight C# %}  

this.xpTaskBar1.AutoScroll = true;

this.xpTaskBar1.AutoScrollMargin = new System.Drawing.Size(5, 5);

this.xpTaskBar1.AutoScrollMinSize = new System.Drawing.Size(3, 3);

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBar1.AutoScroll = True

Me.xpTaskBar1.AutoScrollMargin = New System.Drawing.Size(5, 5)

Me.xpTaskBar1.AutoScrollMinSize = New System.Drawing.Size(3, 3)

{% endhighlight %}

{% endtabs %}

 ![Scroll settings](Overview_images/Overview_img105.jpeg) 