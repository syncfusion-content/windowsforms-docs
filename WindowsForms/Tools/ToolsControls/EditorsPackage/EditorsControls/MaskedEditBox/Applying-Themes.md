---
layout: post
title: Applying Themes
description: Concepts and Features
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Applying Themes

Themes can be applied to the MaskedEditBox control using the property given below.

_Table_ _348__: Property Table_

<table>
<tr>
<td>
MaskedEditBox Property</td><td>
Description</td></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether or not to use XP themes when BorderStyle property is set to 'Fixed3D'.</td></tr>
</table>


 _Note: Refer_ [Border Settings](http://docs.syncfusion.com/windowsforms/tools/editorsPackage/coloruicontrols/borderstyles) _topic to know about the BorderStyle property._

{% highlight C# %} 

this.maskedEditBox1.ThemesEnabled = true;

 {% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.ThemesEnabled = true

{% endhighlight %}

![](MaskedEditBox-images/MarkedEditBox-img19.png)
Figure 577: Themes Applied to MaskedEditBox Control
