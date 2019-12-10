---
layout: post
title: Appearanc in GridControl
description: how to avoid a, b, c and / or 1, 2, 3 in the headers
platform: windowsforms
control: Grid
documentation: ug
---

# How to avoid A, B, C and / or 1, 2, 3 in the headers

In a GridControl, whether the headers contain the default A, B, C, ... or 1, 2, 3, ... values is controlled by the properties in the Model.Options property. 

{% tabs %}
{% highlight c# %}
//Hides A, B, C in the column headers.
this.gridControl1.Model.Options.NumberedColHeaders = false;

//Hides 1, 2, 3 in the row headers.
this.gridControl1.Model.Options.NumberedRowHeaders = false;
{% endhighlight  %}
{% highlight vb %}
'Hides A, B, C in the column headers.
Me.GridControl1.Model.Options.NumberedColHeaders = False

'Hides 1, 2, 3 in the row headers.
Me.gridControl1.Model.Options.NumberedRowHeaders = False
{% endhighlight  %}
{% endtabs %}
