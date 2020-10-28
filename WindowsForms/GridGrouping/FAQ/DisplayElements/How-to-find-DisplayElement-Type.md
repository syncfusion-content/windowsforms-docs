---
layout: post
title: How-to-find-DisplayElement-Type | Windows Forms | Syncfusion
description: how to find displayelement type
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How To Find DisplayElement Type

You can find the type of particular DisplayElement using the code below.

{% tabs %}
{% highlight c# %}

//Accesses the type of display element.
Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[rowIndex].Kind);

{% endhighlight %}

{% highlight vb %}

'Accesses the type of display element.
Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(rowIndex).Kind)

{% endhighlight %}
{% endtabs %}
