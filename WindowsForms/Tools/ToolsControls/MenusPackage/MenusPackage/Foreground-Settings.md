---
layout: post
title: Foreground Settings
description: foreground settings
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Foreground Settings

Foreground of the bar item text can be controlled using the below properties.

_Table485: Property Table_

<table>
<tr>
<th>
BarItem Property</th><th>
Description</th></tr>
<tr>
<td>
CustomActiveTextColor</td><td>
Sets the text color in active mode.</td></tr>
<tr>
<td>
CustomDisabledTextColor</td><td>
Sets the text color in disabled mode.</td></tr>
<tr>
<td>
CustomNormalTextColor</td><td>
Sets the text color in normal mode.</td></tr>
<tr>
<td>
CustomTextFont</td><td>
Sets the text font.</td></tr>
</table>




{% highlight c# %}

this.barItem4.CustomActiveTextColor = System.Drawing.Color.OrangeRed;

this.barItem5.CustomDisabledTextColor = System.Drawing.Color.DeepSkyBlue;

this.barItem6.CustomNormalTextColor = System.Drawing.Color.Magenta;

this.barItem4.CustomTextFont = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold);

this.barItem5.CustomTextFont = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic);


{% endhighlight  %}
{% highlight vbnet %}




Me.barItem4.CustomActiveTextColor = System.Drawing.Color.OrangeRed

Me.barItem5.CustomDisabledTextColor = System.Drawing.Color.DeepSkyBlue

Me.barItem6.CustomNormalTextColor = System.Drawing.Color.Magenta

Me.barItem4.CustomTextFont = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold)

Me.barItem5.CustomTextFont = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Italic)
{% endhighlight  %}


![](Overview_images/Overview_img77.jpeg) 



See Also

Types of Bar Items