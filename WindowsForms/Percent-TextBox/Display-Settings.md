---
layout: post
title: Display Settings in Windows Forms Percent TextBox control | Syncfusion®
description: Learn about Display Settings support in Syncfusion® Windows Forms Percent TextBox control and more details.
platform: windowsforms
control: Editors Package
documentation: ug
---

# Display Settings in Windows Forms Percent TextBox

This section discusses the display settings of the PercentTextBox control.

The PercentTextBox provides a list of properties to set the display characteristics of the percentage.

* [PercentDecimalDigits](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentDecimalDigits)
* [PercentDecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentDecimalSeparator)
* [PercentGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentGroupSeparator)
* [PercentGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentGroupSizes)
* [PercentNegativePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentNegativePattern)
* [NegativeSign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeSign)
* [PercentPositivePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentPositivePattern)
* [PercentSymbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentSymbol)

The grouping size of the percent digits can be set using the Int32 Collection Editor which will be displayed on selecting the [PercentGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentGroupSizes) property in the property grid.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.PercentDecimalDigits = 3;
this.percentTextBox1.PercentDecimalSeparator = ".";
this.percentTextBox1.PercentGroupSeparator = ",";
this.percentTextBox1.PercentGroupSizes = new int[] {5};
this.percentTextBox1.PercentNegativePattern = 2;
this.percentTextBox1.NegativeSign = "-";
this.percentTextBox1.PercentPositivePattern = 2;
this.percentTextBox1.PercentSymbol = "%";
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.PercentDecimalDigits = 3
Me.percentTextBox1.PercentDecimalSeparator = "."
Me.percentTextBox1.PercentGroupSeparator = ","
Me.percentTextBox1.PercentGroupSizes = New Integer() {5}
Me.percentTextBox1.PercentNegativePattern = 2
Me.percentTextBox1.NegativeSign = "-";
Me.percentTextBox1.PercentPositivePattern = 2
Me.percentTextBox1.PercentSymbol = "%"
{% endhighlight %}
{% endtabs %}

The following screen shot illustrates the above settings.

![Percent text box format](PercentTextBox-Images/Overview_img465.png) 

A sample which demonstrates the Display Settings of PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo
