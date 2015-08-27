---
layout: post
title: ComboDropDown-Appearance
description: combodropdown appearance
platform: windowsforms
control: Editors Package
documentation: ug
---

# ComboDropDown Appearance

This section discusses the appearance settings for ComboDropDown control.

### Border Styles

The below properties lets you set 3D border style for the control. 

_Table_ _212_: _Property Table_

<table>
<tr>
<td>
Properties</td><td>
Description</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Sets the 3D border style for the control. The options are,* {{ '_RaisedOuter_' | markdownify }}* {{ '_RaisedInner_' | markdownify }}* {{ '_SunkenOuter_' | markdownify }}* {{ '_SunkenInner_' | markdownify }}* {{ '_Raised_' | markdownify }}* {{ '_Sunken_' | markdownify }}* {{ '_Etched_' | markdownify }}* {{ '_Flat_' | markdownify }}* {{ '_Adjust_'  | markdownify }}* {{ '_Bump_' | markdownify }}<br>FlatStyle property should be set to Standard to effect this settings.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which should have border.</td></tr>
<tr>
<td>
FlatStyle</td><td>
Specifies the flat style to be applied to the ComboDropDown control. The styles are,Flat - The control and the button appear flat.System - Appearance based on the OS used andStandard - The control and button appears three-dimensional.</td></tr>
<tr>
<td>
FlatBorderColor</td><td>
Specifies the border color for the control, when FlatStyle is set to "Flat". </td></tr>
</table>


{% highlight c# %}



this.comboDropDown1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedInner;

this.comboDropDown1.BorderSides = System.Windows.Forms.Border3DSide.All;

{% endhighlight %}

{% highlight vbnet %}



Me.comboDropDown1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedInner

Me.comboDropDown1.BorderSides = System.Windows.Forms.Border3DSide.All

{% endhighlight %}

![](Overview_images/Overview_img286.jpeg) 



> Note: ComboDropDown.Style property should be set to Default to effect the above settings. See_ Themes and Styles _topic._
