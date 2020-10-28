---
layout: post
title: Common questions in Essential Grid
description: How to access all DisplayElements or a particular DisplayElement in GridGrouping control
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access all DisplayElements or a particular DisplayElement in GridGrouping control

You can access DisplayElements by using the following code.

 
{% highlight c# %}

//Accesses all the display elements.
foreach (Element el in gridGroupingControl1.Table.DisplayElements)
{
    Console.WriteLine(el.Info);
}

//Accesses a particular display element.
Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[index].Info);

{% endhighlight  %}
{% highlight vb %}
'Accesses all the display element.
 For Each el As Element In Me.gridGroupingControl1.Table.DisplayElements
    Console.WriteLine(el.Info)
 Next el

'Accesses a particular display element.
Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(index).Info)
{% endhighlight  %}