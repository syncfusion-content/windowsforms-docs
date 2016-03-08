---
layout: post
title: How-To-Suspend-Calculations-While-a-Series-Of-Values-are-Updated | Windows Forms | Syncfusion
description: how to suspend calculations while a series of values are updated?
platform: windowsforms
control: Calculate
documentation: ug
---

# How To Suspend Calculations While a Series Of Values Are Updated?

You can use the property CalcEngine.CalculatingSuspended to control the calculations that will be performed as values change in your ICalcData object.

{% highlight c# %}



// Creates some data object that implements ICalcData.

this.data = new ArrayCalcData(a);



// Creates a CalcEngine object using this ICalcData object.

CalcEngine engine = new CalcEngine(this.data);

//...

// Turn off calculations.

engine.CalculatingSuspended = true;



// Makes multiple updates to this.data somehow...

// Turn on calculations.

 engine.CalculatingSuspended = false;

{% endhighlight %}

{% highlight vbnet %}



' Creates some data object that implements ICalcData.

Me.data = New ArrayCalcData(a)



' Creates a CalcEngine object using this ICalcData object.

Dim engine As New CalcEngine(Me.data)



'...

' Turn off calculations.

engine.CalculatingSuspended = True



' Makes multiple updates to this.data somehow...

' Turn on calculations.

engine.CalculatingSuspended = False

{% endhighlight %}

