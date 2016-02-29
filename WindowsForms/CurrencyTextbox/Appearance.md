---
layout: post
title: Appearance | Windows Forms | Syncfusion
description: Appearance
platform: windowsforms
control: CurrencyTextbox
documentation: ug
---

# Appearance

## Themes

CurrencyTextBox control can be themed by setting ThemesEnabled to true.

<table>
<tr>
<th>
CurrencyTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether the CurrencyTextBox control uses XP themes, when BorderStyle is set to Fixed3D.</td></tr>
</table>


{% highlight c# %}

this.currencyTextBox1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.ThemesEnabled = True

{% endhighlight %}

![](Overview_images/Overview_img501.png) 



## Border Styles

The below properties describes various properties available to set border for the CurrencyTextBox control.

<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Sets the style of the border. The options includes:FixedSingle,Fixed3D andNone (Default).</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Sets 3D border style of the CurrencyTextBox when the BorderStyle is in Fixed3D. The options includes:{{ '_Raised,_' | markdownify }}{{ '_RaisedOuter,_' | markdownify }}{{ '_RaisedInner,_' | markdownify }}{{ '_Sunken (default),_' | markdownify }}{{ '_SunkenOuter,_' | markdownify }}{{ '_SunkenInner,_' | markdownify }}{{ '_Etched,_' | markdownify }}{{ '_Bump,_' | markdownify }}{{ '_Adjust and_' | markdownify }}{{ '_Flat._' | markdownify }}</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the border sides. The options includes{{ '_Left,_' | markdownify }}{{ '_Top,_' | markdownify }}{{ '_Right,_' | markdownify }}{{ '_Bottom,_' | markdownify }}{{ '_Middle and_' | markdownify }}{{ '_All (default)._' | markdownify }}</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the border when BorderStyle is FixedSingle.</td></tr>
</table>


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

![](Overview_images/Overview_img502.png) 



## Color Settings

We can set different colors for the different set of currency values i.e, Colors can be set for positive currency values, negative currency values and zero values by using the below properties. We can draw the background of Currency TextBox with colors when it is in read only mode by ReadOnlyBackColor.


<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
PositiveColor</td><td>
Specifies Forecolor when the current value is positive.</td></tr>
<tr>
<td>
NegativeColor</td><td>
Specifies Forecolor when the current value is negative.</td></tr>
<tr>
<td>
ReadOnlyBackColor</td><td>
Specifies the color to be used for back color when the control is read only. Set ReadOnly to 'true'.</td></tr>
<tr>
<td>
ZeroColor</td><td>
Specifies Forecolor when the current value is Zero.</td></tr>
</table>


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

![](Overview_images/Overview_img503.png) 

