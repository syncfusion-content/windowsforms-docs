---
layout: post
title: How-to-access-all-DisplayElements-or-a-particular- | Windows Forms | Syncfusion
description: how to access all displayelements or a particular displayelement in gridgrouping control
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Access All DisplayElements or a Particular DisplayElement in GridGrouping Control

You can access DisplayElements by using the following code.

{% tabs %}
{% highlight c# %}

//Accesses all the display elements.
foreach (Element el in gridGroupingControl1.Table.DisplayElements)
{
    Console.WriteLine(el.Info);
}

//Accesses a particular display element.
Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[index].Info);

{% endhighlight %}

{% highlight vb %}

'Accesses all the display element.
For Each el As Element In Me.gridGroupingControl1.Table.DisplayElements
    Console.WriteLine(el.Info)
Next el

'Accesses a particular display element.
Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(index).Info)

{% endhighlight %}
{% endtabs %}
