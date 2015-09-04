---
layout: post
title: How to find DisplayElement Type
description: How to find DisplayElement Type
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to find DisplayElement Type

You can find the type of particular DisplayElement using the code below.

{% highlight c# %}



//Accesses the type of display element.

Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[rowindex].Kind);

{% endhighlight  %}


{% highlight vbnet %}


'Accesses the type of display element.

Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(rowindex).Kind)
{% endhighlight  %}