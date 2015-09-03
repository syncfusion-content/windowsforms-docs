---
layout: post
title: Appearance
description: appearance
platform: windowsforms
control: Editors Package
documentation: ug
---

# Appearance

Visual styles for the MultiColumnComboBox control can be specified using MultiColumnComboBox.Style property. The various styles are,

* Office2003
* OfficeXP
* VS2005
* Office2007 (with all the three color schemes).

{% highlight c# %}



this.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;

this.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight vbnet %}



Me.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007

Me.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

![](Overview_images/Overview_img328.jpeg) 


![](Overview_images/Overview_img329.jpeg) 



## Custom Colors

We can also apply custom colors to the MultiColumnComboBox control by setting Office2007ColorTheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% highlight c# %}



this.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orchid);

{% endhighlight %}

{% highlight vbnet %}



Me.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Orchid)

{% endhighlight %}

![](Overview_images/Overview_img330.jpeg)