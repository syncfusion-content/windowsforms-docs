---
layout: post
title: Style in Windows Forms Navigation Pane control | Syncfusion
description: Learn about Style support in Syncfusion Windows Forms Navigation Pane (GroupView) control and more details.
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Style in Windows Forms Navigation Pane (GroupView)

 The GroupView control has rich set of themes for professional representation. You can easily modify the look and feel of the GroupView using the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_Style) property.

It has the below themes.

•	Default

•	Metro

•	Office2016Colorful

•	Office2016White

•	Office2016DarkGray

•	Office2016Black

The following code example allows you to set the style for the GroupView.

## Default

This option helps to set the Default theme.

{% tabs %}

{% highlight C# %}  

this.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Default;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Default

{% endhighlight %}

{% endtabs %}

![List of items in GroupView](Overview_images/Overview_img133.png)

## Metro

This option helps to set the Metro theme.

{% tabs %}

{% highlight C# %}  

this.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Metro;

{% endhighlight %}

{% highlight VB %}

Me.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Metro

{% endhighlight %}

{% endtabs %}

![Metro style GroupView](Overview_images/Overview_img134.png)

## Office2016Colorful

This option helps to set the Office2016Colorful theme.

{% tabs %}

{% highlight C# %}  

this.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;

this.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.Colorful;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016

Me.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.Colorful

{% endhighlight %}

{% endtabs %}

![Office2016 Colorful theme GroupView](Overview_images/Overview_img136.png)

## Office2016White

This option helps to set the Office2016White theme.

{% tabs %}

{% highlight C# %}  

this.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;

this.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.White;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016

Me.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.White

{% endhighlight %}

{% endtabs %}

![Office2016 White theme GroupView](Overview_images/Overview_img135.png)

## Office2016DarkGray

This option helps to set the Office2016DarkGray theme.

{% tabs %}

{% highlight C# %}  

this.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;

this.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.DarkGray;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016

Me.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.DarkGray

{% endhighlight %}

{% endtabs %}

![Office2016 DarkGray theme GroupView](Overview_images/Overview_img137.png)

## Office2016Black

This option helps to set the Office2016Black theme.

{% tabs %}

{% highlight C# %}  

this.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016;

this.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.Black;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.Style = Syncfusion.Windows.Forms.Appearance.Office2016

Me.groupView1.Office2016ColorScheme = GroupViewOffice2016ColorScheme.Black

{% endhighlight %}

{% endtabs %}

![Office2016 Black theme GroupView](Overview_images/Overview_img138.png)
