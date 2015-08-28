---
layout: post
title: Foreground Settings
description: Concepts and Features
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
#  Foreground Settings

The foreground settings of the MaskedEditBox control are discussed below.

Foreground Color

The foreground color of the control can be set using the properties given below.

_Table_ _342__: Property Table_

<table>
<tr>
<td>
MaskedEditBox Property</td><td>
Description</td></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the foreground color of this component, which is used to display text.</td></tr>
</table>


{% highlight C# %}  

this.maskedEditBox1.ForeColor = System.Drawing.Color.DarkMagenta;

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.ForeColor = System.Drawing.Color.DarkMagenta

{% endhighlight %}


![](MaskedEditBox-images/MarkedEditBox-img16.png)


A Sample which demonstrates the Foreground Settings of MaskedEditBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
