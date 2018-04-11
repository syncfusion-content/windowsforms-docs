---
layout: post
title: Visual Styles | WindowsForms | Syncfusion
description: Visual Styles
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Visual Styles

Visual Styles for the FontComboBox control can be enabled through below properties.

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Sets the visual style for the control. The options are Office2016Colorful, Office2016White, Office2016Black, Office2016DarkGray, Metro, Office2010, Office2007, Default.</td></tr>
<tr>
<td>
Office2007ColorScheme</td><td>
Specifies the office color schemes for Office2007 style. The color schemes are,Blue,Silver and Black.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.fontComboBox2.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.fontComboBox2.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img582.jpeg) 

## Custom Colors

We can also apply custom colors to the FontComboBox control by setting Office2007ColorTheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}
{% highlight c# %}

this.fontComboBox2.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.Orchid);

{% endhighlight %}

{% highlight vb %}

Me.fontComboBox2.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(Me, Color.Orchid)

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img587.jpeg) 
