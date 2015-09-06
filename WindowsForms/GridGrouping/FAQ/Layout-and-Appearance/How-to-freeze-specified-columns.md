---
layout: post
title: How-to-freeze-specified-columns
description: how to freeze specified columns
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to freeze specified columns

You can freeze Specified columns by making use of the code given below.

{% highlight c# %}



//Adds a specified column index  to freeze

this. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 1);



//Adds a range of columns to freeze.

this. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 3);

{% endhighlight %}

{% highlight vbnet %}



'Adds a specified column index  to freeze

Me. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 1)



'Adds a range of columns to freeze.

Me. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 3)


{% endhighlight %}
