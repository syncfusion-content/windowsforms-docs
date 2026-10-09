---
layout: post
title: Value Settings in Windows Forms PercentTextBox | Syncfusion®
description: Learn about Value Settings support in Syncfusion Windows Forms PercentTextBox control and more details.
platform: windowsforms
control: PercentTextBox
documentation: ug
---

# Value Settings in WinForms Percent TextBox

The various values of the WinForms Percent TextBox control and their settings are described below.

* [PercentValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_PercentValue) - Gets or sets the percent value displayed in the control.
* [DefaultValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_DefaultValue) - Gets or sets the default value of the control.
* [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue) - Gets or sets the bindable value (decimal form) of the control.
* [BindablePercentValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_BindablePercentValue) - Gets or sets the bindable percent value of the control.
* [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_DoubleValue) - Gets or sets the double value of the control.

{% tabs %}
{% highlight c# %}
this.percentTextBox1.PercentValue = 5;
this.percentTextBox1.DefaultValue = 0;
this.percentTextBox1.BindableValue = 0.05;
this.percentTextBox1.BindablePercentValue = 5;
this.percentTextBox1.DoubleValue = 0.05;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.PercentValue = 5
Me.percentTextBox1.DefaultValue = 0
Me.percentTextBox1.BindableValue = 0.05
Me.percentTextBox1.BindablePercentValue = 5
Me.percentTextBox1.DoubleValue = 0.05
{% endhighlight %}
{% endtabs %}

![WinForms PercentTextBox showing the percent value entered](PercentTextBox-Images/Overview_img466.png)

## Null value settings

There are various settings that can be applied to the WinForms Percent TextBox control when the value of the control is set to `null`. These settings are illustrated below.

* [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_AllowNull) - When `true`, allows the control to have a null value.
* [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullString) - Gets or sets the string displayed when the value is null.
* [NullFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullFormat) - Gets or sets the format used when the value is null.

{% tabs %}
{% highlight c# %}
this.percentTextBox1.NullString = "Null Value";
this.percentTextBox1.AllowNull = true;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.NullString = "Null Value"
Me.percentTextBox1.AllowNull = True
{% endhighlight %}
{% endtabs %}

![WinForms PercentTextBox showing a null value with the configured null string](PercentTextBox-Images/Overview_img467.png)

## Min and max value settings

The minimum and maximum values of the Percent TextBox can be set using the following properties:

* [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_MaxValue) - Gets or sets the maximum allowable value.
* [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_MinValue) - Gets or sets the minimum allowable value.
* [EnforceMinMaxDuringValidating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_EnforceMinMaxDuringValidating) - When `true`, enforces the min and max values during validation.

{% tabs %}
{% highlight c# %}
this.percentTextBox1.MaxValue = 6;
this.percentTextBox1.MinValue = -6;
this.percentTextBox1.EnforceMinMaxDuringValidating = true;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.MaxValue = 6
Me.percentTextBox1.MinValue = -6
Me.percentTextBox1.EnforceMinMaxDuringValidating = True
{% endhighlight %}
{% endtabs %}

The methods associated with the above properties are given below.

* [ResetMaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_ResetMaxValue)
* [ResetMinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_ResetMinValue)
