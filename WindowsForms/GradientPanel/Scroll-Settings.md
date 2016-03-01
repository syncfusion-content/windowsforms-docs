---
layout: post
title:  Scroll Settings | Windows Forms | Syncfusion
description:  Scroll Settings
platform: windowsforms
control: Editors Package
documentation: ug
---

# Scroll Settings

When the contents inside the gradient panel exceeds the visible area, the scroll bars appears. AutoScroll property should be set to true for this purpose. Margin width for the control during auto scroll is set through AutoScrollMargin property. The minimum logical size for the auto scroll region is specified using the AutoScrollMinSize.


{% highlight C# %}



this.gradientPanel1.AutoScroll = true;

this.gradientPanel1.AutoScrollMargin = new System.Drawing.Size(5, 5);

this.gradientPanel1.AutoScrollMinSize = new System.Drawing.Size(20, 20);

{% endhighlight %}

{% highlight vbnet %}



Me.gradientPanel1.AutoScroll = True

Me.gradientPanel1.AutoScrollMargin = New System.Drawing.Size(5, 5)

Me.gradientPanel1.AutoScrollMinSize = New System.Drawing.Size(20, 20)
{% endhighlight %}

## Size properties

The GradientPanel can automatically size itself based on the contents available in the control by enabling the AutoSize property. The mode of this resizing can be specified through AutoSizeMode property. There are two options provided for the AutoSizeMode.

* GrowOnly - the control grows as much as necessary to fit its contents but doesn't shrink smaller than the value specified in Size property of the control.
* GrowAndShrink - the control grows and shrinks to fit its contents to a size may be less than that specified in Size property.



{% highlight C# %}




this.gradientPanel1.AutoSize = true;

this.gradientPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;

{% endhighlight %}


{% highlight vbnet %}



Me.gradientPanel1.AutoSize = True

Me.gradientPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly
{% endhighlight %}


