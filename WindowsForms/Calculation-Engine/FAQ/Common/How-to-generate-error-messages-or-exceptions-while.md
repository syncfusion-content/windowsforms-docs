---
layout: post
title: How to generate error messages or exceptions while performing string-related calculations? | Windows Forms | Syncfusion
description: how to generate error messages or exceptions while performing string-related calculations?
platform: windowsforms
control: Calculate
documentation: ug
---

# How to generate error messages or exceptions while performing string-related calculations?

Normally the CalcEngine will not display an invalid error message or exception while performing mathematical operations with string or text. To generate an invalid error message or exception, the TreatStringsAsZero property must be set to _false_.

For example, if a string is multiplied with a number (for example, "text" * 10), the calculated result will be zero. But, if the TreatStringsAsZero property is set to _false,_ the "#VALUE!" exception will be generated.

{% highlight c# %}



this.engine.TreatStringsAsZero = false;

{% endhighlight %}

{% highlight vbnet %}



Me.engine.TreatStringsAsZero = False


{% endhighlight %}


