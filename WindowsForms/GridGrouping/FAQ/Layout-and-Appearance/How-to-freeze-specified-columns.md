---
layout: post
title: Freeze Specified Columns in WinForms GridGroupingControl | Syncfusion®
description: Freeze specified columns in Syncfusion® WinForms GridGroupingControl, its column freezing functionality, freeze ranges, scrolling behavior, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Freeze Specified Columns in WinForms GridGroupingControl

You can freeze Specified columns by making use of the code given below.

{% tabs %}
{% highlight c# %}

//Adds a specified column index  to freeze
this. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 1);

//Adds a range of columns to freeze.
this. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 3);

{% endhighlight %}

{% highlight vb %}

'Adds a specified column index  to freeze
Me. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 1)

'Adds a range of columns to freeze.
Me. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 3)

{% endhighlight %}
{% endtabs %}