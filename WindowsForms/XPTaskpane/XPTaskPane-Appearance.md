---
layout: post
title: XPTaskPane-Appearance | Windows Forms | Syncfusion
description: xptaskpane appearance
platform: windowsforms
control: XPTaskPane
documentation: ug
---

# XPTaskPane Appearance

This section comprises the below topics:

## Foreground Settings

### XPTaskPane Foreground

Font style and fore color of the Task pages can be set using XPTaskPane.Font and XPTaskPane.ForeColor properties. 

N> These settings can be overridden by individual XPTaskPage.Font and XPTaskPage.ForeColor properties.

{% highlight c# %}


this.xpTaskPane1.Font = new System.Drawing.Font("Verdana", 8.25F);

this.xpTaskPane1.ForeColor = System.Drawing.Color.SteelBlue;

{% endhighlight %}

{% highlight vbnet %}



Me.xpTaskPane1.Font = New System.Drawing.Font("Verdana", 8.25F)

Me.xpTaskPane1.ForeColor = System.Drawing.Color.SteelBlue

{% endhighlight %}

### Header Foreground

The font style and forecolor for the Header text is controlled through HeaderLabel.Font and HeaderLabel.ForeColor properties.

{% highlight c# %}


this.xpTaskPane1.HeaderLabel.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Bold);

this.xpTaskPane1.HeaderLabel.ForeColor = System.Drawing.Color.Navy;

{% endhighlight %}

{% highlight vbnet %}



Me.xpTaskPane1.HeaderLabel.Font = New System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Bold)

Me.xpTaskPane1.HeaderLabel.ForeColor = System.Drawing.Color.Navy

{% endhighlight %}

![](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img2.jpeg)



## Visual Styles

The Visual appearance of XP Task Pane can be defined by the XPTaskPane.VisualStyle property. It supports _OfficeXP_ and new _Office2007_ styles which provides you a more polished user interface. 

{% highlight c# %}


this.xpTaskPane1.VisualStyle = VisualStyle.Office2007;

this.xpTaskPane1.VisualStyle = VisualStyle.OfficeXP;

{% endhighlight %}

{% highlight vbnet %}



Me.xpTaskPane1.VisualStyle = VisualStyle.Office2007

Me.xpTaskPane1.VisualStyle = VisualStyle.OfficeXP

{% endhighlight %}

![](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img3.jpeg)



### Office Color Schemes

XPTaskPane supports all the three office color schemes.

{% highlight c# %}



//Setting Blue color scheme

this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

//Setting Silver color scheme

this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//Setting Black color scheme

this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight vbnet %}



'Setting Blue color schemes

Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'Setting Silver color schemes

Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'Setting Black color schemes

Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

![](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img4.jpeg)



### Custom Colors

We can also apply custom colors to the XPTaskPane by setting Office2007ColorScheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% highlight c# %}



this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Lime);

{% endhighlight %}

{% highlight vbnet %}



Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Lime)

{% endhighlight %}

![](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img5.jpeg)



