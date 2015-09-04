---
layout: post
title: How-To-Calculate-a-Formula
description: how to calculate a formula?
platform: windowsforms
control: Calculate
documentation: ug
---

# How To Calculate a Formula?

To calculate a formula, use the ParseAndCompute method from the CalcQuickBase class.

{% highlight c# %}



// Declares a CalcQuickBase object.

private CalcQuickBase calculate;



//...



// Creates an instance.

this.calculate = new CalcQuickBase();



//... Set up any variables you need in your calculation.



// Calls the ParseAndCompute method to compute formulas.

string result = this.calculate.ParseAndCompute("4 * 5 + SQRT(3)");

string result1 = this.calculate.ParseAndCompute("[Rate] * [Amount]");

{% endhighlight %}

{% highlight vbnet %}



' Declares a CalcQuickBase object.

private calculate As CalcQuickBase



'...



' Creates an instance.

Me.calculate = New CalcQuickBase()



'... Sets up any variables you need in your calculation.



' Calls the ParseAndCompute method to compute formulas.

Dim result As String = Me.calculate.ParseAndCompute("4 * 5 + SQRT(3)")

Dim result1 As String = Me.calculate.ParseAndCompute("[Rate] * [Amount]")


{% endhighlight %}
