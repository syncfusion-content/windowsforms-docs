---
layout: post
title: Visual Styles | Windows Forms | Syncfusion
description: Visual Styles
platform: windowsforms
control: ComboBoxAutoComplete
documentation: ug
---

# Visual Styles

Visual Styles for the ComboBoxAutoComplete control can be set using VisualStyle property. The styles are,

* Default and 
* Office2007. 



{% highlight C# %}



this.comboBoxAutoComplete1.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2007;

this.comboBoxAutoComplete1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;
{% endhighlight %}



{% highlight vbnet %}



Me.comboBoxAutoComplete1.VisualStyle = Syncfusion.Windows.Forms.Tools.ThemedComboBoxStyles.Office2007

Me.comboBoxAutoComplete1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

{% endhighlight %}


![](ComboBoxAutoComplete-Images/Overview_img51.jpeg)




N> The control supports all the three office color schemes.

## Custom Colors

We can also apply custom colors to the ComboBoxAutoComplete control by setting Office2007ColorTheme to "_Managed_" and specifying the custom color through the ApplyManagedColors method as follows.


{% highlight C# %}


this.comboBoxAutoComplete1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.LightGreen);

{% endhighlight %}




{% highlight C# %}


Me.comboBoxAutoComplete1.Office2007ColorTheme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(this, Color.LightGreen)

{% endhighlight %}


![](ComboBoxAutoComplete-Images/Overview_img53.jpeg)
