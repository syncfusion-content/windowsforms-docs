---
layout: post
title: Appearance | WindowsForms | Syncfusion
description: appearance
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Appearance

Visual styles for the MultiColumnComboBox control can be specified using MultiColumnComboBox.Style property. The various styles are,

* Office2003
* OfficeXP
* VS2005
* Office2007 (with all the three color schemes).
* Metro
* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray

{% tabs %}
{% highlight c# %}

this.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007;
this.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2007
Me.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img328.jpeg) 


![](Overview_images/Overview_img329.jpeg) 

//Sample code for setting "Office2016 Colorful" style for MultiColumnComboBox

{% tabs %}
{% highlight c# %}

this.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

## Custom colors

We can also apply custom colors to the MultiColumnComboBox control by setting Office2007ColorTheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}
{% highlight c# %}

this.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.Orchid);

{% endhighlight %}

{% highlight vb %}

Me.multiColumnComboBox1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(Me, Color.Orchid)

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img330.jpeg)