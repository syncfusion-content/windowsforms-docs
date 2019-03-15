---
layout: post
title: Appearance | WindowsForms | Syncfusion
description: Appearance
platform: WindowsForms
control: CurrencyTextbox
documentation: ug
---

# Appearance

## Themes

CurrencyTextBox control can be themed by setting [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~ThemesEnabled.html) to true.

{% tabs %}

{% highlight c# %}

this.currencyTextBox1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

![CurrencyTextBox theme enabled](Overview_images/Overview_img501.png) 



## Border Styles

The below properties describes various properties available to set border for the CurrencyTextBox control.

* [BorderStyle](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_BorderStyle)
* [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~Border3DStyle.html)
* [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~BorderSides.html)
* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~BorderColor.html)


{% tabs %}

{% highlight c# %}

this.currencyTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.currencyTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Flat;

this.currencyTextBox1.BorderColor = System.Drawing.Color.Magenta;

this.currencyTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

Me.currencyTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Flat

Me.currencyTextBox1.BorderColor = System.Drawing.Color.Magenta

Me.currencyTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All

{% endhighlight %}

{% endtabs %}

![Border styles](Overview_images/Overview_img502.png) 



## Color Settings

We can set different colors for the different set of currency values i.e, Colors can be set for positive currency values, negative currency values and zero values by using the below properties. We can draw the background of Currency TextBox with colors when it is in read only mode by [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ReadOnlyBackColor.html).

* [PositiveColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~PositiveColor.html)
* [NegativeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NegativeColor.html)
* [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ReadOnlyBackColor.html)
* [ZeroColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~ZeroColor.html)


{% tabs %}

{% highlight c# %}

this.currencyTextBox1.PositiveColor = System.Drawing.Color.Blue;

this.currencyTextBox1.NegativeColor = System.Drawing.Color.Red;

this.currencyTextBox1.ReadOnlyBackColor = System.Drawing.Color.Linen;

this.currencyTextBox1.ZeroColor = System.Drawing.Color.DarkOrange;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.PositiveColor = System.Drawing.Color.Blue

Me.currencyTextBox1.NegativeColor = System.Drawing.Color.Red

Me.currencyTextBox1.ReadOnlyBackColor = System.Drawing.Color.Linen

Me.currencyTextBox1.ZeroColor = System.Drawing.Color.DarkOrange

{% endhighlight %}

{% endtabs %}

![CurrencyTextBox color settings](Overview_images/Overview_img503.png) 

## Visual Style

Please refer the [TextBoxExt Visual style](/windowsforms/TextBoxExt/Appearance-Settings) to set themes for CurrencyTextBox.