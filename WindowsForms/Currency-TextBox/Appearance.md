---
layout: post
title: Appearance in WinForms CurrencyTextbox Control | Syncfusion
description: Learn here all about appearance of Syncfusion WinForms Currency Textbox (CurrencyTextbox) control and more.
platform: WindowsForms
control: CurrencyTextbox
documentation: ug
---

# Appearance in Windows Forms Currency Textbox (CurrencyTextbox)

## Themes

CurrencyTextBox control can be themed by setting [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabled) to true.

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
* [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle)
* [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides)
* [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor)


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

We can set different colors for the different set of currency values i.e, Colors can be set for positive currency values, negative currency values and zero values by using the below properties. We can draw the background of Currency TextBox with colors when it is in read only mode by [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ReadOnlyBackColor).

* [PositiveColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_PositiveColor)
* [NegativeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeColor)
* [ReadOnlyBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ReadOnlyBackColor)
* [ZeroColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ZeroColor)


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
