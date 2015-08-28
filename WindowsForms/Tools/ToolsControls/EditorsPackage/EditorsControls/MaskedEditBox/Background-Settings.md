---
layout: post
title: Background Settings
description: overview
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Background Settings

The background settings of the MaskedEditBox control are discussed below.

### Background Color

The background color of the control can be set using the properties given below.

_Table_ _340__: Property Table_

<table>
<tr>
<td>
MaskedEditBox Property</td><td>
Description</td></tr>
<tr>
<td>
BackColor</td><td>
Specifies the background color of the component.</td></tr>
</table>


{% highlight C# %}  

this.maskedEditBox1.BackColor = System.Drawing.Color.PaleGoldenrod;

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.BackColor = System.Drawing.Color.PaleGoldenrod

{% endhighlight %}

![](MaskedEditBox-images/MarkedEditBox-img15.png)
Figure 573: Background Color set for MaskedEditBox


The method associated with the above property is given below.

_Table_ _341__: Property Table_

<table>
<tr>
<td>
Method</td><td>
Description</td></tr>
<tr>
<td>
ResetBackColor</td><td>
Resets the BackColor property to its default value.</td></tr>
</table>


A sample which demonstrates the Background Settings of MaskedEditBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
