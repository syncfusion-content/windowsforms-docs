---
layout: post
title: Text Settings
description: text settings
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Text Settings

This section discusses the properties which controls the appearance and behavior of the dates (contents) inside the grid cells.

Highlighting the dates

We can highlight the selected date using HighlightColor property.



{% highlight c# %}

this.monthCalendarAdv1.HighlightColor = System.Drawing.Color.Blue;

{% endhighlight  %}
{% highlight vbnet %}





Me.monthCalendarAdv1.HighlightColor = System.Drawing.Color.Blue

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img155.jpeg)





_Figure239: HighlightColor = "Blue"_

Alignment and Wrapping of text

The alignment and text wrapping of the dates inside the grid cells is controlled using the below properties.

_Table170: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
HorizontalAlignment</td><td>
Specifies the horizontal alignment of the dates inside a grid cell. The options are,{{ '_Left,_'  | markdownify }}{{ '_Center and_'  | markdownify }}{{ '_Right._' | markdownify }}</td></tr>
<tr>
<td>
VerticalAlignment</td><td>
Specifies the vertical alignment of the dates inside a grid cell. The options are,{{ '_Top,_'  | markdownify }}{{ '_Middle and_'  | markdownify }}{{ '_Bottom._' | markdownify }}</td></tr>
<tr>
<td>
WrapText</td><td>
Indicates whether the grid can wrap the text inside grid cells. By default, it is false.</td></tr>
</table>




{% highlight c# %}

this.monthCalendarAdv1.HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;

this.monthCalendarAdv1.VerticalAlignment = Syncfusion.Windows.Forms.Grid.GridVerticalAlignment.Top;

this.monthCalendarAdv1.WrapText = true;
{% endhighlight  %}
{% highlight vbnet %}






Me.monthCalendarAdv1.HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right

Me.monthCalendarAdv1.VerticalAlignment = Syncfusion.Windows.Forms.Grid.GridVerticalAlignment.Top

Me.monthCalendarAdv1.WrapText = True

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img156.jpeg)



See Also

Today's Date
