---
layout: post
title: How-To-Enter-Vectors-Of-Numbers-Into-CalcQuickBase | Windows Forms | Syncfusion
description: how to enter vectors of numbers into calcquickbase?
platform: windowsforms
control: Calculate
documentation: ug
---

# How to Enter Vectors of Numbers into CalcQuickBase?

Some formulas, like Intercept, require you to enter the parameters as vectors of numbers. Other formulas, like Sum, accept number vectors as parameter arguments. To use such formulas through a CalcQuickBase object, you must enter the numbers by enclosing them in braces. The following code illustrates this.

**C#**

{% highlight c# %}



// Sets the number vectors as parameters.

CalcQuickBase["known_Y"] = "{2,3,9,1,8}";

CalcQuickBase["known_X"] = "{6,5,11,7,5}";



// Computes the Intercept returned by these values.

this.textBox1.Text = CalcQuickBase.ParseAndCompute("Intercept([known_Y],[known_X])");

{% endhighlight %}

**VB.NET**

{% highlight vbnet %}



' Sets the number vectors as parameters.

CalcQuickBase("known_Y") = "{2,3,9,1,8}"

CalcQuickBase("known_X") = "{6,5,11,7,5}"



' Computes the Intercept returned by these values.

Me.textBox1.Text = CalcQuickBase.ParseAndCompute("Intercept([known_Y],[known_X])")

{% endhighlight %}

