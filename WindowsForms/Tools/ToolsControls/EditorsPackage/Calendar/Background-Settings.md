---
layout: post
title: Background Settings
description: background settings
platform: windowsforms
control: Calendar
documentation: ug
---
# Background Settings

DateTimePickerAdv control can have custom back color and background images using the properties discussed in this section.

## Background Color

The control's back color can be set using the below properties.

_Table188: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Sets the back color for the DateTimePickerAdv control.</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Sets Solid, Gradient or Pattern style of background for the control. This property setting will override the BackColor property setting.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.BackColor = System.Drawing.Color.Cornsilk;

this.dateTimePickerAdv1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.Linen, System.Drawing.Color.BurlyWood);


{% endhighlight  %}



{% highlight vbnet  %}
Me.dateTimePickerAdv1.BackColor = System.Drawing.Color.Cornsilk 

Me.dateTimePickerAdv1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.Linen, System.Drawing.Color.BurlyWood) 

{% endhighlight   %}

![](Calendar_Images/Overview_img207.jpeg) 



## Background Image

Background image for the DateTimePickerAdv is set using the below property.

_Table189: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Sets the background image layout for the control.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("dateTimePickerAdv2.BackgroundImage")));


{% endhighlight   %}

{% highlight vbnet  %}


Me.dateTimePickerAdv2.BackgroundImage = DirectCast((resources.GetObject("dateTimePickerAdv2.BackgroundImage")), System.Drawing.Image) 
{% endhighlight   %}


![](Calendar_Images/Overview_img208.jpeg) 



See Also

Border Styles
