---
layout: post
title: How-to-Avoid-A-B-C-and--or-1-2-3-in-the-Headers | WindowsForms | Syncfusion
description: how to avoid a, b, c and / or 1, 2, 3 in the headers
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Avoid A, B, C and / or 1, 2, 3 in the Headers



## Introduction

In a GridControl, whether the headers contain the default A, B, C, ... or 1, 2, 3, ... values is controlled by the properties in the Model.Options property. 

## Example



{% highlight c# %}



//Hides A, B, C in the column headers.

this.gridControl1.Model.Options.NumberedColHeaders = false;



//Hides 1, 2, 3 in the row headers.

this.gridControl1.Model.Options.NumberedRowHeaders = false;


{% endhighlight  %}
{% highlight vbnet %}



'Hides A, B, C in the column headers.

Me.GridControl1.Model.Options.NumberedColHeaders = False



'Hides 1, 2, 3 in the row headers.

Me.gridControl1.Model.Options.NumberedRowHeaders = False

{% endhighlight  %}

