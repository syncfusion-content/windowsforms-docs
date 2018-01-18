---
layout: post
title: First Day of Week in Calendar in SfCalendar control for Windows Forms
description: First Day of Week in Calendar in SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# First Day of Week

You can set a particular weekday as the first day of a week. You can set the start day of the week in the Calendar by using `FirstDayOfWeek` property.

The following code example shows how to set `FirstDayofWeek` property.

{% tabs %}

{% highlight C# %}

//Setting the First Day Of Week

this.SfCalendar1.FirstDayOfWeek = DayOfWeek.Sunday;

{% endhighlight  %}

{% highlight VB %}

' Setting the First Day Of Week

this.SfCalendar1.FirstDayOfWeek = DayOfWeek.Sunday

{% endhighlight  %}

{% endtabs %} 

![](First-Day-of-Week_images/FirstDayOfWeek.png)