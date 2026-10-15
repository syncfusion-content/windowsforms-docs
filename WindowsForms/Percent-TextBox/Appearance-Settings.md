---
layout: post
title: Appearance Settings in Windows Forms PercentTextBox | Syncfusion®
description: Learn about Appearance Settings support in Syncfusion Windows Forms PercentTextBox control and more details.
platform: windowsforms
control: PercentTextBox
documentation: ug
---

# Appearance Settings in WinForms Percent TextBox

## Background settings

The background settings of the WinForms Percent TextBox control are described below.

### Background color

The background color of the control can be set using the following properties.

* [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BackGroundColor)
* [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ReadOnlyBackColor)

{% tabs %}
{% highlight c# %}
this.percentTextBox1.BackColor = System.Drawing.Color.LightCyan;
this.percentTextBox1.ReadOnly = true;
this.percentTextBox1.ReadOnlyBackColor = System.Drawing.Color.Pink;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.BackColor = System.Drawing.Color.LightCyan
Me.percentTextBox1.ReadOnly = True
Me.percentTextBox1.ReadOnlyBackColor = System.Drawing.Color.Pink
{% endhighlight %}
{% endtabs %}

![WinForms PercentTextBox showing the back color applied](PercentTextBox-Images/Overview_img480.png)

![WinForms PercentTextBox showing the read-only back color applied](PercentTextBox-Images/Overview_img481.png)

>**NOTE**: The [ReadOnly](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_ReadOnly) property must be set to `True` for the above setting to take effect.

The methods associated with the above properties are given below.

* [ResetBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ResetControlBackColor)
* ResetReadOnlyBackColor

## Foreground settings

The foreground settings of the WinForms Percent TextBox control are described below.

### Foreground color

The foreground color of the control can be set using the following properties.

* [PositiveColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_PositiveColor)
* [NegativeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeColor)
* [ZeroColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ZeroColor)

{% tabs %}
{% highlight c# %}
this.percentTextBox1.PositiveColor = System.Drawing.Color.ForestGreen;
this.percentTextBox1.NegativeColor = System.Drawing.Color.Orange;
this.percentTextBox1.ZeroColor = System.Drawing.Color.Orchid;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.PositiveColor = System.Drawing.Color.ForestGreen
Me.percentTextBox1.NegativeColor = System.Drawing.Color.Orange
Me.percentTextBox1.ZeroColor = System.Drawing.Color.Orchid
{% endhighlight %}
{% endtabs %}

![WinForms PercentTextBox showing the foreground color applied](PercentTextBox-Images/Overview_img483.png)

The methods associated with the above properties are given below.

* [ResetForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ResetForeColor)
* ResetPositiveColor
* ResetNegativeColor
* ResetZeroColor
* [SetControlColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SetControlColor)
* ShouldSerializePositiveColor
* ShouldSerializeNegativeColor
* ShouldSerializeZeroColor

## Visual style

Refer to the [TextBoxExt Visual style](/windowsforms/TextBoxExt/Appearance-Settings) to set themes for WinForms Percent TextBox.

A sample that demonstrates the Foreground Settings of WinForms Percent TextBox control is available at the following sample installation path:

`%LOCALAPPDATA%\Syncfusion\EssentialStudio\<Version Number>\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo`
