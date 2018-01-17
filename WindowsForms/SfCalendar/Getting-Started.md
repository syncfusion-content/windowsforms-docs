---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: SfCalendar 
documentation: ug
---

# Getting Started

This section briefly describes how to design a `SfCalendar` Control in a Windows Forms Application.

* Adding SfCalendar Control 
* Configuring SfCalendar Values

## Adding SfCalendar Control

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drag and Drop `SfCalendar` control in the Form from Toolbox.


![](Getting-Started_images/GettingStarted.png) 


## Configuring SfDateTimeEdit Values

The most commonly used settings of the `SfCalendar` control are configured either through Designer using the Smart tag or through the Properties window or through code.

To add `SfCalendar` Control to a Windows Forms Application through code behind.

1. Include the namespaces Syncfusion.WinForms.Input

{% tabs %}

{% highlight C# %}

using Syncfusion.WinForms.Input;

{% endhighlight  %}

{% highlight VB %}

Imports Syncfusion.WinForms.Input

{% endhighlight  %}

{% endtabs %} 


2. Create an instance of the `SfCalendar` control and add it to the Form.


{% tabs %}

{% highlight C# %}

SfCalendar sfCalendar = new SfCalendar();

this.Controls.Add(sfCalendar);


{% endhighlight %}

{% highlight VB %}

Dim sfCalendar As New SfCalendar()

Me.Controls.Add(sfCalendar)

{% endhighlight %}

{% endtabs %}

## Setting Week Number

By showing week numbers near the left margin. To show week numbers, set `ShowWeekNumber` property to true as follows.

{% tabs %}

{% highlight C# %}

// Setting the Minimum and Maximum date

this.SfCalendar1.ShowWeekNumber = true;

{% endhighlight  %}

{% highlight VB %}

' Setting the Minimum and Maximum date

this.SfCalendar1.ShowWeekNumber = True

{% endhighlight  %}

{% endtabs %} 

![](Working-with-Calendar/ShowWeekNumber.png)

Culture

The culture information can be applied using the `Culture` property. 

To change the culture for this control, use the following code example.

{% tabs %}

{% highlight C# %}

//Setting the culture

this.SfCalendar1.Culture = new System.Globalization.CultureInfo(2);

{% endhighlight  %}

{% highlight VB %}

' Setting the culture

this.SfCalendar1.Culture = new System.Globalization.CultureInfo(2)

{% endhighlight  %}

{% endtabs %} 

![](Culture_images/Culture.png)