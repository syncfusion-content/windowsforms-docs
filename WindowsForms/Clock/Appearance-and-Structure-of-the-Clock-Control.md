---
layout: post
title: Appearance-and-Structure-of-the-Clock-Control | WindowsForms | Syncfusion
description: appearance and structure of the clock control
platform: WindowsForms
control: Clock-Control-for-Windows-Forms
documentation: ug
---

#  Appearance and Structure of the Clock Control

## Color setting

Clock control allows you to customize its gradient back color, hands color, minute line color and border color.

### Customizing color to the clock:

Clock control has individual property to set color for gradient back color, hands color, minutes color and border color.

The following code illustrates how to apply color to Clock control:

{% highlight c# %}

this.clock1.BorderColor = Color.Violet;

this.clock1.EndGradientBackColor = Color.RoyalBlue;

this.clock1.HourHandColor = Color.SkyBlue;

this.clock1.MinuteColor = Color.LightPink;

this.clock1.MinuteHandColor = Color.LightSeaGreen;

this.clock1.SecondHandColor = Color.LightSteelBlue;

this.clock1.StartGradientBackColor = Color.Black;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.BorderColor = Color.Violet

Me.clock1.EndGradientBackColor = Color.RoyalBlue

Me.clock1.HourHandColor = Color.SkyBlue

Me.clock1.MinuteColor = Color.LightPink

Me.clock1.MinuteHandColor = Color.LightSeaGreen

Me.clock1.SecondHandColor = Color.LightSteelBlue

Me.clock1.StartGradientBackColor

{% endhighlight %}

![](Overview_images/Overview_img95.png) 


## Appearance setting

Clock control allows you to customize the thickness of the hands and minute line. It also allows you to enable or disable the AM/PM, borders, minute and second hand. The Clock control gives a transparent appearance.

### Customization of hands thickness

Clock control allows you to adjust the thickness of hands and minute line.

The following code illustrates how to adjust the thickness of the hands and minute line:

{% highlight c# %}

this.clock1.HourHandThickness = 7;

this.clock1.MinuteHandThickness = 5;

this.clock1.SecondHandThickness = 2;

this.clock1.MinuteThickness = 4;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.HourHandThickness = 7

Me.clock1.MinuteHandThickness = 5

Me.clock1.SecondHandThickness = 2

Me.clock1.MinuteThickness = 4

{% endhighlight %}

![](Overview_images/Overview_img96.png) 



### Enable and Disable properties

Clock control allows you to enable or disable AM/PM, second hand, minute line and border.

The following code illustrates how to enable AM/PM and or disable second hand, minute line and border:

{% highlight c# %}

this.clock1.ShowAMorPM = true;

this.clock1.ShowBorder = false;

this.clock1.ShowMinute = false;

this.clock1.ShowSecondHand = false;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.ShowAMorPM = True

Me.clock1.ShowBorder = False

Me.clock1.ShowMinute = False

Me.clock1.ShowSecondHand = False

{% endhighlight %}

![](Overview_images/Overview_img97.png) 

## Transparent support

Clock control supports transparent back ground.

The following code illustrates how to apply transparent back ground:

{% highlight c# %}

this.clock1.IsTransparent = true;

{% endhighlight %}

{% highlight vbnet %}

Me.clock1.IsTransparent = True

{% endhighlight %}

![](Overview_images/Overview_img98.png)



### How to show a fixed time in the Clock control

The Clock control usually displays the current time on the machine where it is hosted. To freeze the clock to display a fixed time, the Boolean property StopTimer can be used. Then, using the Clock control’s Now property, the desired time can be displayed or the default time will be displayed.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
StopTimer</td><td>
Gets or sets the value to freeze or unfreeze time in the clock.</td></tr>
</table>


{% highlight c# %}

//Gets or sets the value to freeze or unfreeze time in the clock.

this.clock1.StopTimer = true;

{% endhighlight %}

{% highlight vbnet %}

//Gets or sets the value to freeze or unfreeze time in the clock.

Me.clock1.StopTimer = True

{% endhighlight %}

