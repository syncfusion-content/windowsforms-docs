---
layout: post
title: How-to-Control-the-Way-Grid-Handles-Exceptions | WindowsForms | Syncfusion
description: how to control the way grid handles exceptions
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Control the Way Grid Handles Exceptions

### Introduction

Syncfusion.Windows.Forms.ExceptionManager has static members that you can use to control how the grid handles exceptions. 

#### Example

To suspend the grid's error handling, try.

{% highlight c# %}



//Suspends Grid's Error Handling.

Syncfusion.Windows.Forms.ExceptionManager.SuspendCatchExceptions()


{% endhighlight %}

{% highlight vbnet %}



'Suspends Grid's Error Handling.

Syncfusion.Windows.Forms.ExceptionManager.SuspendCatchExceptions()


{% endhighlight %}

N> You can also subscribe to an event (Syncfusion.Windows.Forms.ExceptionManager.ExceptionCatched) to get any exception thrown and handle them by yourself or re-throw them.
