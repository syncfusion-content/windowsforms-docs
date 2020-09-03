---
layout: post
title: Appearance | WindowsForms | Syncfusion
description: This section deals with explain about the appearance in MultiColumnComboBox control on Windows Forms platform
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Appearance in Windows Forms MultiColumnComboBox

Visual styles for the [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) control can be specified using [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html#Syncfusion_Windows_Forms_Tools_MultiColumnComboBox_Style) property. The various styles are,

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

![Appearance](Overview_images/Overview_img328.jpeg) 


![Appearance](Overview_images/Overview_img329.jpeg) 

 Code snippet for setting "Office2016Colorful" style for [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html)

{% tabs %}
{% highlight c# %}

this.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnComboBox1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

## Custom colors

We can also apply custom colors to the [MultiColumnComboBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MultiColumnComboBox.html) control by setting `Office2007ColorTheme` to `Managed` and specifying the custom color through the `ApplyManagedColors` method as follows.

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

![Custom colors](Overview_images/Overview_img330.jpeg)

## See Also

[How to change WinForms MultiColumnComboBox row colors?](https://www.syncfusion.com/forums/152520/how-to-change-winforms-multicolumncombobox-row-colors)
