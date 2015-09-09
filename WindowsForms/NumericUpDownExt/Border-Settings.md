---
layout: post
title: Border-Settings
description: border settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Border Settings

This section discusses the Border Settings of the NumericUpDownExt control.

Color and Styles can be applied to the border of the NumericUpDownExt control as discussed below.



<table>
<tr>
<th>
NumericUpDownExt Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows:{{ '_RaisedOuter,_' | markdownify }}{{ '_SunkenOuter,_' | markdownify }}{{ '_RaisedInner,_' | markdownify }}{{ '_SunkenInner,_' | markdownify }}{{ '_Raised,_' | markdownify }}{{ '_Etched,_' | markdownify }}{{ '_Bump,_' | markdownify }}{{ '_Sunken,_' | markdownify }}{{ '_Adjust and_' | markdownify }}{{ '_Flat._' | markdownify }}The default value is set to 'Sunken'.</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the 2D border.</td></tr>
<tr>
<td>
BorderSides</td><td>
Indicates the border sides of the panel. The options included are as follows:{{ '_Left,_' | markdownify }}{{ '_Top,_' | markdownify }}{{ '_Right,_' | markdownify }}{{ '_Bottom,_' | markdownify }}{{ '_Middle and_' | markdownify }}{{ '_All._'| markdownify }}</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the edit control should have a border. The options included are given below:{{ '_FixedSingle,_' | markdownify }}{{ '_Fixed3D and_'| markdownify }}{{ '_None._'| markdownify }}</td></tr>
</table>


{% highlight c# %}



this.numericUpDownExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Etched;

this.numericUpDownExt1.BorderColor = System.Drawing.Color.Crimson;

this.numericUpDownExt1.BorderSides = System.Windows.Forms.Border3DSide.All;

this.numericUpDownExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}

{% highlight vbnet %}



Me.numericUpDownExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Etched

Me.numericUpDownExt1.BorderColor = System.Drawing.Color.Crimson

Me.numericUpDownExt1.BorderSides = System.Windows.Forms.Border3DSide.All

Me.numericUpDownExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight %}

![](Border-Settings_images/Border-Settings_img1.png)



We can display a themed border around the NumericUpDownExt control. This can be done using the property given below.



<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
ThemedBorder</td><td>
Specifies whether or not you want themed border around the control when themes are enabled.The ThemesEnabled property must be set to 'True'.</td></tr>
</table>

N> Refer [Themes and Visual Styles](/windowsforms/numericupdownext/border-settings) topic to know about the ThemesEnabled property.

{% highlight c# %}



this.numericUpDownExt1.ThemedBorder = true;

this.numericUpDownExt1.ThemesEnabled = true;

{% endhighlight %}

{% highlight vbnet %}



Me.numericUpDownExt1.ThemedBorder = True

Me.numericUpDownExt1.ThemesEnabled = True

{% endhighlight %}


![](Border-Settings_images/Border-Settings_img3.png)



A sample which demonstrates the Border Settings of NumericUpDownExt control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

