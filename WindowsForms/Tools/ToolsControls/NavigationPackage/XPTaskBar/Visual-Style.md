---
layout: post
title: Visual Style
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# Visual Style

We can give Office2007 look and feel for the XPTaskBarBox control using Style property. It supports all the three Office2007 
Color Schemes. Specify the color schemes in Office2007ColorScheme property.

{% highlight C# %} 

this.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2007;

//Sets the Blue Color Scheme

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

//Sets the Silver Color Scheme

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//Sets the Black Color Scheme

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

 {% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.Style = Syncfusion.Windows.Forms.Tools.XPTaskBarStyle.Office2007

'Sets the Blue Color Scheme

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'Sets the Silver Color Scheme

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

'Sets the Black Color Scheme

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}


 ![](Overview_images/Overview_img111.jpeg) 
Figure 1012: Office2007 Look and Feel for XPTaskBarBox


### Custom Colors

We can also apply custom colors to the XPTaskBar control by setting Office2007ColorScheme to "_Managed_", and specifying the 
custom color through the ApplyManagedColors method as follows.

{% highlight C# %}  

this.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.DarkGreen);

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.DarkGreen)

{% endhighlight %}


 ![](Overview_images/Overview_img112.jpeg) 
Figure 1013: Custom Color = "DarkGreen"
