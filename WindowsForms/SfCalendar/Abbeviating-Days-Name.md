---
layout: post
title: Abbreviating the Days names of SfCalendar control for Windows Forms
description: Abbreviating the Days names of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Abbreviating days name

By default, the day names are displayed in an abbreviated form. They can also be displayed in an expanded form by setting ShowAbbreviatedDays property to false. This indicates whether the name of day is abbreviated or expanded. It returns the Boolean value.
To set this property, use the following code:

{% tabs %}

{% highlight C# %}

// Disable the ShowAbbreviatedDays

this.SfCalendar1.ShowAbbreviatedDays = false;

{% endhighlight  %}

{% highlight VB %}

' Disable the ShowAbbreviatedDays

this.SfCalendar1.ShowAbbreviatedDays = False

{% endhighlight  %}

{% endtabs %} 

![](Abbreviating-Days_images/SfCalendarAbbreviatedDaysfalse.png)