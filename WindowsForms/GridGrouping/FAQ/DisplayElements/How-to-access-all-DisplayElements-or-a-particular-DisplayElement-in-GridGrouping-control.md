---
layout: post
title: Access DisplayElements in WinForms GridGroupingControl | Syncfusion®
description: Access all or specific DisplayElements in Syncfusion® Windows Forms GridGroupingControl, its display element collection, element information, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access DisplayElements in Windows Forms GridGroupingControl

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
