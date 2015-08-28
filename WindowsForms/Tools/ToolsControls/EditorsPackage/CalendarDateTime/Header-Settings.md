---
layout: post
title: Header Settings
description: header settings
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Header Settings

This section will walk you through the different properties used to customize the header portion of the MonthCalendarAdv control.

## Gradient Background

Gradient background can be set for the header using the below properties.

_Table164: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
HeadGradient</td><td>
Specifies whether the header can show a gradient background. </td></tr>
<tr>
<td>
HeaderStartColor</td><td>
Sets the start color of the header gradient when HeaderGradient property is true.</td></tr>
<tr>
<td>
HeaderEndColor</td><td>
Sets the end color of the header gradient when HeaderGradient property is true.</td></tr>
<tr>
<td>
HeaderVerticalGradient</td><td>
When HeadGradient property is set to true, vertical gradient style will be applied to the header, by default. To change it to horizontal gradient style, set this property to false.</td></tr>
</table>




{% highlight c# %}
this.monthCalendarAdv1.HeadGradient = true;

this.monthCalendarAdv1.HeaderVerticalGradient = true;

this.monthCalendarAdv1.HeaderEndColor = System.Drawing.Color.SteelBlue;                    

this.monthCalendarAdv1.HeaderStartColor = System.Drawing.Color.AliceBlue;

{% endhighlight  %}

{% highlight vbnet %}



Me.monthCalendarAdv1.HeadGradient = True

Me.monthCalendarAdv1.HeaderVerticalGradient = True

Me.monthCalendarAdv1.HeaderEndColor = System.Drawing.Color.SteelBlue                   

Me.monthCalendarAdv1.HeaderStartColor = System.Drawing.Color.AliceBlue

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img146.jpeg) 



## Foreground Settings

The font style and fore color of the header text can be specified through HeaderFont and HeadForeColor properties.

_Table165: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
HeaderFont</td><td>
Specifies the font of the header.</td></tr>
<tr>
<td>
HeaderForeColor</td><td>
Specifies the fore color of the header.</td></tr>
</table>


{% highlight c# %}



this.monthCalendarAdv1.HeaderFont = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold);

this.monthCalendarAdv1.HeadForeColor = System.Drawing.Color.Navy;

{% endhighlight  %}

{% highlight vbnet %}



Me.monthCalendarAdv1.HeaderFont = New System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Bold)

Me.monthCalendarAdv1.HeadForeColor = System.Drawing.Color.Navy


{% endhighlight  %}

![](CalendarDateTime_images/Overview_img147.jpeg) 



## Height and Image for Header

The height of the header can be increased or decreased using HeaderHeight property. Header can also host an image in its background using HeaderImage property.

_Table166: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
HeaderHeight</td><td>
Specifies the height of the header. Default value is 32 for Default Style and for other styles it is 20.</td></tr>
<tr>
<td>
HeaderImage</td><td>
Specifies the image of the header.</td></tr>
</table>


{% highlight c# %}



this.monthCalendarAdv1.HeaderImage = ((System.Drawing.Image)(resources.GetObject("monthCalendarAdv1.HeaderImage")));

this.monthCalendarAdv1.HeaderHeight = 30;


{% endhighlight  %}
{% highlight vbnet %}



Me.monthCalendarAdv1.HeaderImage = DirectCast((resources.GetObject("monthCalendarAdv1.HeaderImage")), System.Drawing.Image) 

Me.monthCalendarAdv1.HeaderHeight = 30

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img148.jpeg) 


