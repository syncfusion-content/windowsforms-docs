---
layout: post
title: Access a DisplayElement in WinForms GridGroupingControl | Syncfusion®
description: Access a particular DisplayElement by row index in Syncfusion® Windows Forms GridGroupingControl, its display elements, parent elements, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access a DisplayElement in Windows Forms GridGroupingControl

You can access DisplayElements with row index by using the following code.

{% tabs %}
{% highlight c# %}

// Accesses a particular display element.
Element el=this.gridGroupingControl1.Table.DisplayElements[rowIndex].ParentElement;
{% endhighlight %}

{% highlight vb %}

' Accesses a particular display element.
Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(rowIndex).ParentElement

{% endhighlight %}
{% endtabs %}
