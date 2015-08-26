---
layout: post
title: Visual Settings
description: visual settings
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Visual Settings

Themes for MonthCalendarAdv

Some sections of the MonthCalendarAdv control are themed by default. The below table list the properties which controls the themed behavior border, grid and scroll buttons.

_Table161: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ThemedBorder</td><td>
Specifies whether the border of the control is themed. By default it is true.</td></tr>
<tr>
<td>
ThemedEnabledGrid</td><td>
Specifies whether the grid holding the days is themed or not. By default it is false.</td></tr>
<tr>
<td>
ThemedEnabledScrollButtons</td><td>
Specifies whether the scroll buttons are themed. It is set to true by default.</td></tr>
</table>




{% highlight c# %}

this.monthCalendarAdv1.ThemedBorder = true;

this.monthCalendarAdv1.ThemedEnabledGrid = true;

this.monthCalendarAdv1.ThemedEnabledScrollButtons = true;


{% endhighlight  %}
{% highlight vbnet %}




Me.monthCalendarAdv1.ThemedBorder = True

Me.monthCalendarAdv1.ThemedEnabledGrid = True

Me.monthCalendarAdv1.ThemedEnabledScrollButtons = True

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img139.jpeg) 



Styles 

MonthCalendarAdv supports the styles in the below table, which can be set through Style property.

_Table162: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Gets or Sets the visual style of the MonthCalendarAdv. The options are {{ '_Default_' | markdownify }}{{ '_OfficeXP_' | markdownify }}{{ '_Office2003_' | markdownify }}{{ '_VS2005_' | markdownify }}{{ '_Office2007_' | markdownify }}The default value is 'Default'.</td></tr>
</table>





{% highlight c# %}
// Sample code for setting Office2003 style for MonthCalendarAdv

this.monthCalendarAdv1.Style = Syncfusion.Windows.Forms.VisualStyle.Office2003;
{% endhighlight  %}
{% highlight vbnet %}






' Sample code for setting Office2003 style for MonthCalendarAdv

Me.monthCalendarAdv1.Style  = Syncfusion.Windows.Forms.VisualStyle.Office2003

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img140.jpeg) 






{% highlight c# %}


//Sets the Color scheme as Silver when the style is Office2007

this.monthCalendarAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

{% endhighlight  %}
{% highlight vbnet %}





'Sets the Color scheme as Silver when the style is Office2007

Me.monthCalendarAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Silver

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img141.jpeg)



## Custom Colors

We can also apply custom colors to the MonthCalendarAdv control by setting Office2007Theme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.




{% highlight c# %}
this.monthCalendarAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orange);


{% endhighlight  %}
{% highlight vbnet %}




Me.monthCalendarAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.Orange)

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img142.jpeg) 



> Note: Visual styles of the Today and None button can be overridden by MonthCalendarAdv.TodayButton and MonthCalendarAdv.NoneButton respectively. See_ Scroll Buttons

> Scroll Buttons.

See Also

Border Styles, Background Settings
