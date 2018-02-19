---
layout: post
title: Abbreviating the Days names of SfCalendar control for Windows Forms
description: Abbreviating the Days names of SfCalendar control for Windows Forms
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Globalization

`SfCalendar` control provides globalization support that helps to designing and developing a world-ready application that supports localized interfaces and regional data for users in multiple cultures. Before beginning the design phase, you should determine which cultures your application will support. 

## Change culture

The culture information can be applied to the calendar using the `Culture` property. 

To change the culture for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the culture

this.sfCalendar.Culture = new CultureInfo("he-IL");

{% endhighlight  %}

{% highlight VB %}

' Setting the culture

Me.sfCalendar.Culture = New CultureInfo("he-IL")

{% endhighlight  %}

{% endtabs %} 

![](globalization-images/Culture.png)

## Localization

`SfCalendar` control allows to localize the static text used in calendar footer such as today button and none button contents based on application requirement. The following steps are used to override the default resource files from the application resource files and change the static text,

* **Step 1**: Add the Resource folder to the application.                                                         

* **Step 2**: Add the fallback resx file with the assembly name of the control.

![](globalization-images/resource.png)

* **Step 3**: Add the required text in the `NoneButtonText` and `TodayButtonText`. 

![](globalization-images/resxfile.png)

{% tabs %}

{% highlight C# %}

//Setting the Localization for Today and None Button

Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("de-DE");

Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("de-DE");

{% endhighlight  %}

{% highlight VB %}

' Setting the Localization for Today and None Button

Thread.CurrentThread.CurrentCulture = New System.Globalization.CultureInfo("de-DE")

Thread.CurrentThread.CurrentUICulture = New System.Globalization.CultureInfo("de-DE")

{% endhighlight  %}

{% endtabs %} 

![](globalization-images/localization.png)