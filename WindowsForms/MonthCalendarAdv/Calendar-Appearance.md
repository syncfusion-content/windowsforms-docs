---
layout: post
title: Calendar Appearance
description: Calendar Appearance
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Calendar Appearance

This section comprises the appearance settings under the following topics:

## Border Styles

The wide variety of border options are available for DateTimePickerAdv control when they are in 2D or in 3D mode. The properties in the below table illustrates the border settings.

Table190: Property Table

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies whether the DateTimePickerAdv should have a border and if it is 2D or 3D border. The options are,* {{ '_None_' | markdownify }}* {{ '_FixedSingle_'  | markdownify }}* {{ '_Fixed3D(Default)_' | markdownify }}</td></tr>
<tr>
<td>
<br>Border3DStyle</td><td>
Specifies the 3D border style of the DateTimePickerAdv.The options are,* {{ '_Raised_' | markdownify }}* {{ '_RaisedOuter_'  | markdownify }}* {{ '_RaisedInner_'  | markdownify }}* {{ '_Sunken(Default)_' | markdownify }}* {{ '_SunkenOuter_'  | markdownify }}* {{ '_SunkenInner_'  | markdownify }}* {{ '_Etched_'  | markdownify }}* {{ '_Bump_'  | markdownify }}* {{ '_Adjust_'  | markdownify }}* {{ '_Flat_' | markdownify }}</td></tr>
<tr>
<td>
<br>BorderSingle</td><td>
Specifies the 2D border style of the DateTimePickerAdv. The options are,* {{ '_None_' | markdownify }}* {{ '_Dotted_' | markdownify }}* {{ '_Dashed_' | markdownify }}* {{ '_Solid (default)_' | markdownify }}* {{ '_Inset_'  | markdownify }}* {{ '_Outset_' | markdownify }}</td></tr>
<tr>
<td>
<br>BorderSides</td><td>
Specifies the sides of the control which should have a border. The sides are,* {{ '_Left_' | markdownify }}* {{ '_Top_' | markdownify }}* {{ '_Right_'  | markdownify }}* {{ '_Bottom_' | markdownify }}* {{ '_Middle_'  | markdownify }}* {{ '_All (Default)_' | markdownify }}</td></tr>
<tr>
<td>
<br>BorderColor</td><td>
Specifies the color of the 2D border when BorderStyle is set FixedSingle.</td></tr>
</table>



{% highlight c#  %}


//Sets 2D border

this.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

//Sets 2D border style

this.dateTimePickerAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed;

//Sets border for all the side of the control

this.dateTimePickerAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;

//Sets color for the 2D border

this.dateTimePickerAdv1.BorderColor = System.Drawing.Color.SteelBlue;



//Sets 3D border

this.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;

//Sets SunkenInner 3D border style

this.dateTimePickerAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner;




{% endhighlight  %}
{% highlight vbnet  %}


'Sets 2D border 

Me.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

'Sets 2D border style 

Me.dateTimePickerAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed 

'Sets border for all the side of the control 

Me.dateTimePickerAdv1.BorderSides = System.Windows.Forms.Border3DSide.All 

'Sets color for the 2D border 

Me.dateTimePickerAdv1.BorderColor = System.Drawing.Color.SteelBlue 



'Sets 3D border 

Me.dateTimePickerAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D 

'Sets SunkenInner 3D border style 

Me.dateTimePickerAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner 
{% endhighlight   %}


![](CalendarDateTime_images/Overview_img209.png) 



> See Also
> 
> Background Settings


## Background Settings

Background image for the MonthCalendarAdv is specified in BackgroundImage property.



{% highlight c# %}

this.monthCalendarAdv1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("monthCalendarAdv1.BackgroundImage")));

this.monthCalendarAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;


{% endhighlight  %}
{% highlight vbnet %}




Me.monthCalendarAdv1.BackgroundImage = DirectCast((resources.GetObject("monthCalendarAdv1.BackgroundImage")), System.Drawing.Image) 

Me.monthCalendarAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch 

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img138.jpeg) 



> See Also
> Border Styles, Visual Settings


## Visual Settings

Themes for MonthCalendarAdv

Some sections of the MonthCalendarAdv control are themed by default. The below table list the properties which controls the themed behavior border, grid and scroll buttons.

Table161: Property Table

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



### Styles 

MonthCalendarAdv supports the styles in the below table, which can be set through Style property.

Table162: Property Table

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



### Custom Colors

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



> See Also
 
> Border Styles, Background Settings
