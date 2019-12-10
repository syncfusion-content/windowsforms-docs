---
layout: post
title: Appearance Settings | WindowsForms | Syncfusion
description: appearance settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Appearance Settings

## Background settings

The background settings of the IntegerTextBox control are discussed below.

### Background color

The background color of the control can be set using the properties given below.

* [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BackGroundColor.html)
* [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ReadOnlyBackColor.html)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.BackColor = System.Drawing.Color.PeachPuff;
this.integerTextBox1.ReadOnly = true;
this.integerTextBox1.ReadOnlyBackColor = System.Drawing.Color.LavenderBlush;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.BackColor = System.Drawing.Color.PeachPuff
Me.integerTextBox1.ReadOnly = True
Me.integerTextBox1.ReadOnlyBackColor = System.Drawing.Color.LavenderBlush
{% endhighlight %}
{% endtabs %}

![IntegerTextBox back color](Overview_images/Overview_img453.png)

![IntegerTextBox read only back color](Overview_images/Overview_img454.png) 

N> The [ReadOnly](http://msdn.microsoft.com/query/dev14.query?appId=Dev14IDEF1&l=EN-US&k=k(System.Windows.Forms.TextBoxBase.ReadOnly)&rd=true) property must be set to 'True' for the above setting to take effect.

The methods associated with the above properties are given below.

* [ResetBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ResetControlBackColor.html)
* ResetReadOnlyBackColor

## Foreground settings

The foreground settings of the IntegerTextBox control are discussed below.

### Foreground color

The foreground color of the control can be set using the properties given below.

* [PositiveColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~PositiveColor.html)
* [NegativeColor](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NegativeColor.html)
* [ZeroColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ZeroColor.html)


{% tabs %}

{% highlight C# %}

this.integerTextBox1.PositiveColor = System.Drawing.Color.DarkOrange;
this.integerTextBox1.NegativeColor = System.Drawing.Color.SteelBlue;
this.integerTextBox1.ZeroColor = System.Drawing.Color.OliveDrab;

{% endhighlight %}

{% highlight VB %}

Me.integerTextBox1.PositiveColor = System.Drawing.Color.DarkOrange

Me.integerTextBox1.NegativeColor = System.Drawing.Color.SteelBlue

Me.integerTextBox1.ZeroColor = System.Drawing.Color.OliveDrab

{% endhighlight %}
{% endtabs %}

![Foreground color](Overview_images/Overview_img456.png) 

The methods associated with the above properties are given below.

* ResetForeColor
* ResetPositiveColor
* ResetNegativeColor
* ResetZeroColor
* SetControlColor
* ShouldSerializePositiveColor
* ShouldSerializeNegativeColor
* ShouldSerializeZeroColor

## Visual style

Please refer the [TextBoxExt Visual style](/windowsforms/TextBoxExt/Appearance-Settings) to set themes for IntegerTextBox.

A sample which demonstrates the Foreground Settings of IntegerTextBox control is available in the below sample installation path.

…\System Drive:\Users\Username\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS
