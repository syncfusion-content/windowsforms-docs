---
layout: post
title: Appearance Settings | WindowsForms | Syncfusion
description: Appearance Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Appearance Settings

## Background settings

The Background settings of the PercentTextBox control are discussed below.

### Background color

The background color of the control can be set using the properties given below.

* [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BackGroundColor.html)
* [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ReadOnlyBackColor.html)

{% tabs %}
{% highlight C# %}
this.percentTextBox1.BackColor = System.Drawing.Color.LightCyan;
this.percentTextBox1.ReadOnly = true;
this.percentTextBox1.ReadOnlyBackColor = System.Drawing.Color.Pink;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.BackColor = System.Drawing.Color.LightCyan
Me.percentTextBox1.ReadOnly = True
Me.percentTextBox1.ReadOnlyBackColor = System.Drawing.Color.Pink
{% endhighlight %}
{% endtabs %}

![PercentTextBox back color](PercentTextBox-Images/Overview_img480.png)

![PercentTextBox read only back color](PercentTextBox-Images/Overview_img481.png)

N> The [ReadOnly](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_ReadOnly) property must be set to 'True' for the above setting to take effect.

The methods associated with the above properties are given below.

* [ResetBackColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ResetControlBackColor.html)
* ResetReadOnlyBackColor

## Foreground settings

The Foreground settings of the PercentTextBox control are discussed below.

### Foreground color

The foreground color of the control can be set using the properties given below.


* [PositiveColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~PositiveColor.html)
* [NegativeColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NegativeColor.html)
* [ZeroColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ZeroColor.html)

{% tabs %}
{% highlight C# %}
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

![PercentTextBox fore color](PercentTextBox-Images/Overview_img483.png) 

The methods associated with the above properties are given below.

* [ResetForeColor](https://help.syncfusion.com/cr/cref_files/windowsforms/* Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ResetForeColor.html)
* ResetPositiveColor
* ResetNegativeColor
* ResetZeroColor
* [SetControlColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~SetControlColor.html)
* ShouldSerializePositiveColor
* ShouldSerializeNegativeColor
* ShouldSerializeZeroColor

## Visual style

Please refer the [TextBoxExt Visual style](/windowsforms/TextBoxExt/Appearance-Settings) to set themes for PercentTextBox.

A sample which demonstrates the Foreground Settings of PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo
