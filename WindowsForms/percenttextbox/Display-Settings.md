---
layout: post
title: Display Settings | WindowsForms | Syncfusion
description: Display Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Display Settings

This section discusses the display settings of the PercentTextBox control.

The PercentTextBox provides a list of properties to set the display characteristics of the percentage.

* [PercentDecimalDigits](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentDecimalDigits.html)
* [PercentDecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentDecimalSeparator.html)
* [PercentGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentGroupSeparator.html)
* [PercentGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentGroupSizes.html)
* [PercentNegativePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentNegativePattern.html)
* [NegativeSign](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NegativeSign.html)
* [PercentPositivePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentPositivePattern.html)
* [PercentSymbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentSymbol.html)

The grouping size of the percent digits can be set using the Int32 Collection Editor which will be displayed on selecting the [PercentGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentGroupSizes.html) property in the property grid.

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
