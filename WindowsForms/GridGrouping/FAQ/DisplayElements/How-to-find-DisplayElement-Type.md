---
layout: post
title: Find DisplayElement Type in WinForms GridGroupingControl | Syncfusion®
description: Find the DisplayElement type in Syncfusion® Windows Forms GridGroupingControl, its display elements, element kinds, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Find DisplayElement Type in WinForms GridGroupingControl

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
