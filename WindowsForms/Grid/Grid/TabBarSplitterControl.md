---
layout: post
title: TabBarSplitterControl
description: tabbarsplittercontrol
platform: windowsform
control: Grid
documentation: ug
---

# TabBarSplitterControl

TabBarSplitterControl enables users to create Tab Pages with dynamic splitters; when used with a grid control, it gives a workbook like appearance. It comes with Office 2007 Style by default, and supports all the three color schemes.

{% highlight c# %}



this.tabBarSplitterControl.Style = Syncfusion.Windows.Forms.TabBarSplitterStyle.Office2007;

this.tabBarSplitterControl.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight %}

{% highlight vbnet %}



Me.tabBarSplitterControl.Style = Syncfusion.Windows.Forms.TabBarSplitterStyle.Office2007

Me.tabBarSplitterControl.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver
{% endhighlight %}

![](Grid-Control_images/Grid-Control_img215.jpeg)





##Custom Colors

We can apply custom colors to the TabBarSplitterControl by setting Office2007ColorScheme property to "Managed" and by giving the color through ApplyManagedColor method as follows.



{% highlight c# %}



this.tabBarSplitterControl.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.PowderBlue);

{% endhighlight %}

{% highlight vbnet %}



Me.tabBarSplitterControl.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.PowderBlue)

{% endhighlight %}

![](Grid-Control_images/Grid-Control_img216.jpeg)





Figure 306: Custom Color of Tab Bar Splitter Control set to "PowderBlue"
