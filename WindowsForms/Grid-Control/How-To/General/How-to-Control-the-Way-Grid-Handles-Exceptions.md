---
layout: post
title: Grid Exception Handling in Windows Forms Grid Control | Syncfusion®
description: Exception Handling in Syncfusion® Windows Forms Grid Control using ExceptionManager settings and custom exception handling events and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Control Grid Exception Handling in Windows Forms Grid Control

Syncfusion.Windows.Forms.ExceptionManager has static members that you can use to control how the grid handles exceptions. 

To suspend the grid's error handling, try.

{% tabs %}
{% highlight c# %}

//Suspends Grid's Error Handling.
Syncfusion.Windows.Forms.ExceptionManager.SuspendCatchExceptions()

{% endhighlight %}

{% highlight vb %}

'Suspends Grid's Error Handling.
Syncfusion.Windows.Forms.ExceptionManager.SuspendCatchExceptions()

{% endhighlight %}
{% endtabs %}

N> You can also subscribe to an event (Syncfusion.Windows.Forms.ExceptionManager.ExceptionCatched) to get any exception thrown and handle them by yourself or re-throw them.
