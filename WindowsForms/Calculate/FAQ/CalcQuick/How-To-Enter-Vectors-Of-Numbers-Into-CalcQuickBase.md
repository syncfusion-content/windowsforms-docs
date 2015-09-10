---
layout: post
title: How-To-Enter-Vectors-Of-Numbers-Into-CalcQuickBase | WindowsForms | Syncfusion
description: how to enter vectors of numbers into calcquickbase?
platform: WindowsForms
control: Calculate
documentation: ug
---

# How To Enter Vectors Of Numbers Into CalcQuickBase?

Some formulas, like Intercept, require you to enter the parameters as vectors of numbers. Other formulas, like Sum, accept number vectors as parameter arguments. To use such formulas through a CalcQuickBase object, you must enter the numbers by enclosing them in braces. The following code illustrates this.

{% highlight c# %}



// Sets the number vectors as parameters.

CalcQuickBase["known_Y"] = "{2,3,9,1,8}";

CalcQuickBase["known_X"] = "{6,5,11,7,5}";



// Computes the Intercept returned by these values.

this.textBox1.Text = CalcQuickBase.ParseAndCompute("Intercept([known_Y],[known_X])");

{% endhighlight %}

{% highlight vbnet %}



' Sets the number vectors as parameters.

CalcQuickBase("known_Y") = "{2,3,9,1,8}"

CalcQuickBase("known_X") = "{6,5,11,7,5}"



' Computes the Intercept returned by these values.

Me.textBox1.Text = CalcQuickBase.ParseAndCompute("Intercept([known_Y],[known_X])")

{% endhighlight %}

