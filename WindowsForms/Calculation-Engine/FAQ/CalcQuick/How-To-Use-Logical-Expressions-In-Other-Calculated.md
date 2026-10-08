---
layout: post
title: How-To-Use-Logical-Expressions-In-Other-Calculated-Expressions | Windows Forms | Syncfusion
description: How to use logical expressions in other calculated expressions?
platform: windowsforms
control: Calculate
documentation: ug
---

# How To Use Logical Expressions In Other Calculated Expressions?

Logical expressions return a True or False value. If you use a logical expression as part of a calculation, then:

* A True is replaced with 1.
* A False is replaced with 0 when the expression is evaluated.

This allows you to easily write and compute formulas that involve logical conditions.

Consider the following expression:

([Cost] &lt; 100) * 1 + ([Cost] &gt;= 100) * ([Cost] &lt; 200) * 3 + ([Cost] &gt;= 200) * ([Cost] &lt; 300) * 5 + ([Cost] &gt; 300) * 7

Depending upon the value of [Cost], this expression returns 1, 3, 5 or 7. This is an example of using a linear combination of logical expressions that multiply other values. 

N> The logical conditions are mutually exclusive, but, when taken as a whole, cover all possible values of [Cost]. This has the effect of assigning a unique value depending upon the input value.

