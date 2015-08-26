---
layout: post
title: Header Settings
description: header settings
platform: windowsforms
control: ColorPickerUIAdv
documentation: ug
---
# Header Settings

The below properties are used to change the default appearance of the color group headers.

_Table206: Property Table_

<table>
<tr>
<th>
Color Group Properties</th><th>
Description</th></tr>
<tr>
<td>
HeaderHeight</td><td>
Sets the height for the color group header. Default value is 20.</td></tr>
<tr>
<td>
Name</td><td>
Sets the name of the color group, i.e, the header text.</td></tr>
</table>

_Table207: Property Table_

<table>
<tr>
<th>
ColorPickerUIAdv Property</th><th>
Description</th></tr>
<tr>
<td>
TextAlignment</td><td>
Sets the header text alignment of all the color groups. By default it is set to MiddleLeft.</td></tr>
<tr>
<td>
Font</td><td>
Sets the font for the header text.</td></tr>
</table>




{% highlight c# %}

//Sets header height for Theme group

this.colorPickerUIAdv1.ThemeGroup.HeaderHeight = 25;

//Sets header text for Theme group

this.colorPickerUIAdv1.ThemeGroup.Name = "Recent Colors";

//Sets text alignment of the color group headers

this.colorPickerUIAdv1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;

//Sets the font style for the header text

this.colorPickerUIAdv1.Font = new System.Drawing.Font("Microsoft Sans Serif",9F, System.Drawing.FontStyle.Bold);


{% endhighlight  %}
{% highlight vbnet  %}




'Sets header height for Theme group

Me.colorPickerUIAdv1.ThemeGroup.HeaderHeight = 25

'Sets header text for Theme group

Me.colorPickerUIAdv1.ThemeGroup.Name = "Recent Colors"

'Sets text alignment of the color group headers

Me.colorPickerUIAdv1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter

'Sets the font style for the header text

Me.colorPickerUIAdv1.Font = New System.Drawing.Font("Microsoft Sans Serif",9F, System.Drawing.FontStyle.Bold)

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img269.jpeg) 

