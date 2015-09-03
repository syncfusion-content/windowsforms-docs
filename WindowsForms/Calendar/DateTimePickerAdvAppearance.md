---
layout: post
title: DateTimePickerAdv Appearance
description: datetimepickeradv appearance
platform: WindowsForms
control: Calendar
documentation: ug
---
# DateTimePickerAdv Appearance

This below topics discusses the background and border settings for the DateTimePickerAdv control.

## Background Settings

DateTimePickerAdv control can have custom back color and background images using the properties discussed in this section.

### Background Color

The control's back color can be set using the below properties.

Table188: Property Table

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

Table189: Property Table

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

## Border Styles

Border for a MonthCalendarAdv control can be in 2D or 3D modes. The below properties controls the border settings for the MonthCalendarAdv control. 

Table160: Property Table

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies whether the control should have a 2D or a 3D border. The options are,{{ '_FixedSingle,_' | markdownify }}{{ '_Fixed3D and_' | markdownify }}{{ '_None (default)._' | markdownify }}</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Sets 3D border style for the MonthCalendarAdv control, when the BorderStyle=Fixed3D. The styles are,{{ '_Raised,_'  | markdownify }}{{ '_RaisedOuter,_'  | markdownify }}{{ '_RaisedInner,_' | markdownify }}{{ '_Sunken (default),_'  | markdownify }}{{ '_SunkenOuter,_'  | markdownify }}{{ '_SunkenInner,_'  | markdownify }}{{ '_Etched,_'  | markdownify }}{{ '_Bump,_'  | markdownify }}{{ '_Adjust and_' | markdownify }}{{ '_Flat._' | markdownify }}</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which can have a border. The sides options are,{{ '_Left,_'  | markdownify }}{{ '_Top,_'  | markdownify }}{{ '_Right,_'  | markdownify }}{{ '_Bottom,_'  | markdownify }}{{ '_Middle and_' | markdownify }}{{ '_All (default)._' | markdownify }}</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the 2D border color when BorderStyle="FixedSingle".</td></tr>
</table>





{% highlight c# %}
//Setting 3D border style 

this.monthCalendarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

//Setting "SunkenInner" 3D border style

this.monthCalendarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner;

{% endhighlight  %}



{% highlight vbnet %}

'Setting 3D border style 

Me.monthCalendarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D

'Setting "SunkenInner" 3D border style

Me.monthCalendarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner

{% endhighlight  %}

![](Calendar_Images/Overview_img135.jpeg) 



> Note: MonthCalendarAdv.ThemedBorder property should be set to false to make the 3D border setting effective. Refer_ Visual Settings
 
{% highlight c# %}
//Setting border to "All" sides

this.monthCalendarAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;

//Setting color for 2D border

this.monthCalendarAdv1.BorderColor = System.Drawing.Color.DodgerBlue;


{% endhighlight %}
{% highlight vbnet %}




'Setting border to "All" sides

Me.monthCalendarAdv1.BorderSides = System.Windows.Forms.Border3DSide.All

'Setting color for 2D border

this.monthCalendarAdv1.BorderColor = System.Drawing.Color.DodgerBlue
{% endhighlight  %}


![](Calendar_Images/Overview_img137.jpeg)



 See Also
 
 Background Settings, Visual Settings