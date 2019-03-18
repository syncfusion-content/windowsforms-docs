---
layout: post
title: Padding | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: XPTaskBar
documentation: ug
--- 
# Padding

## Padding settings for XPTaskBar

The interior spacing of the XPTaskBar control can be specified by setting the DockPadding property to integer values.

The horizontal and vertical padding can be specified using the [HorizontalPadding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBar~HorizontalPadding.html) and [VerticalPadding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBar~VerticalPadding.html) properties. The default value of the both is 'Zero'.

{% tabs %}
{% highlight C# %}
this.xpTaskBar1.DockPadding.All = 10;
this.xpTaskBar1.HorizontalPadding = 3;
this.xpTaskBar1.VerticalPadding = 3;
{% endhighlight %}
{% highlight VB %}
Me.xpTaskBar1.DockPadding.All = 10
Me.xpTaskBar1.HorizontalPadding = 3
Me.xpTaskBar1.VerticalPadding = 3
{% endhighlight %}
{% endtabs %}

![Padding settings for XPTaskBar](Overview_images/Overview_img113.jpeg) 

### Padding settings for XPTaskBar box header

Padding provides spacing between the text of the header and it's borders. Horizontal and vertical padding can be set using the [PADX](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBarBox~PADX.html) and [PADY](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskBarBox~PADY.html) properties.

{% tabs %}
{% highlight C# %}  
this.xpTaskBarBox1.PADX = 7;
this.xpTaskBarBox1.PADY = 7;
{% endhighlight %}
{% highlight VB %}
Me.xpTaskBarBox1.PADX = 7
Me.xpTaskBarBox1.PADY = 7
{% endhighlight %}
{% endtabs %}

The following figure displays the XPTaskBar Box with padding settings.

![Padding settings for XPTaskBar box header](Overview_images/Overview_img114.jpeg)
