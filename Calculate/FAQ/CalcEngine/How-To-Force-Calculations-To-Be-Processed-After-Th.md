---
layout: post
title: How-To-Force-Calculations-To-Be-Processed-After-Th | WindowsForms | Syncfusion
description: how to force calculations to be processed after they have been suspended?
platform: WindowsForms
control: Calculate
documentation: ug
---

# How To Force Calculations To Be Processed After They Have Been Suspended?

The following code illustrates how to force calculations to be processed after Engine.CalculatingSuspended has been flipped back to true.

{% highlight c# %}



// Creates some data object that implements ICalcData.

this.data = new ArrayCalcData(a);



// Creates a CalcEngine object using this ICalcData object.

CalcEngine engine = new CalcEngine(this.data);



//Turn off calculations.

engine.CalculatingSuspended = true;      



// Makes multiple updates to this.data.

// Turn on calculations.

engine.CalculatingSuspended = false;



// Calls RecalculateRange so any formulas in the data can be computed.            

engine.RecalculateRange(RangeInfo.Cells(1, 1, nRows + 1, nCols + 1), data);            

{% endhighlight %}

{% highlight vbnet%}



' Creates some data object that implements ICalcData.

Me.data = New ArrayCalcData(a)



' Creates a CalcEngine object using this ICalcData object.

Dim engine As New CalcEngine(Me.data)



'...



' Turn off calculations.

engine.CalculatingSuspended = True



' Makes multiple updates to this.data.

' Turn on calculations.

engine.CalculatingSuspended = False



' Calls RecalculateRange so any formulas in the data can be computed.

engine.RecalculateRange(RangeInfo.Cells(1, 1, nRows + 1, nCols + 1), Data)

{% endhighlight %}

