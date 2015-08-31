---
layout: post
title: Alignment-Settings
description: alignment settings
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Alignment Settings

This section discusses the Alignment settings of the NumericUpDownExt control.

### Text Alignment

The text of the NumericUpDownExt control can be aligned using the below given property.

_Table_ _359_: _Property Table_

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
TextAlign</td><td>
Gets / sets the alignment of the text in the spin box (also known as an up-down control).It includes the below given options:LeftRight andCenter.</td></tr>
</table>


{% highlight c# %}



this.numericUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;

{% endhighlight %}

{% highlight vbnet %}



Me.numericUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center

{% endhighlight %}

![](Alignment-Settings_images/Alignment-Settings_img1.png)



### UpDownAlign

The alignment of the up and down buttons can be set using the property given below.

_Table_ _360_: _Property Table_

<table>
<tr>
<th>
NumericUpDownExt Property</th><th>
Description</th></tr>
<tr>
<td>
UpDownAlign</td><td>
Gets / sets the alignment of the up and down buttons. The default value is set to 'Right'.It includes the below given options.{{ '_Left and_' | markdownify }}{{ '_Right._' | markdownify }}</td></tr>
</table>


{% highlight c# %}



this.numericUpDownExt1.UpDownAlign = System.Windows.Forms.LeftRightAlignment.Left;

{% endhighlight %}

{% highlight vbnet %}

Me.numericUpDownExt1.UpDownAlign = System.Windows.Forms.LeftRightAlignment.Left

{% endhighlight %}

