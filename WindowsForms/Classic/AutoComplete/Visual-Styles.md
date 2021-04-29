---
layout: post
title: Visual Styles in Windows Forms xptoolbar control | Syncfusion
description: Learn about Visual Styles support in Syncfusion Windows Forms ComboBoxAutoComplete(Classic) control and more details.
platform: WindowsForms
control: ComboBoxAutoComplete
documentation: ug
---

# Visual Styles in Windows Forms ComboBoxAutoComplete(Classic)

Visual Styles for the ComboBoxAutoComplete control can be set using VisualStyle property. The styles are,

* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray
* Metro
* Office2010
* Office2007 
* Default

{% tabs %}
{% highlight C# %}

this.comboBoxAutoComplete1.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.comboBoxAutoComplete1.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![Overview_img51](ComboBoxAutoComplete-Images/Overview_img51.jpeg)




N> The control supports all the three office color schemes.

## Custom Colors

We can also apply custom colors to the ComboBoxAutoComplete control by setting Office2007ColorTheme to "_Managed_" and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}
{% highlight C# %}

this.comboBoxAutoComplete1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.LightGreen);

{% endhighlight %}

{% highlight vb %}

Me.comboBoxAutoComplete1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed
Office2007Colors.ApplyManagedColors(this, Color.LightGreen)

{% endhighlight %}
{% endtabs %}

![Overview_img53](ComboBoxAutoComplete-Images/Overview_img53.jpeg)
