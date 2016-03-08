---
layout: post
title: How to access all DisplayElements or a particular DisplayElement in GridGrouping control | Windows Forms | Syncfusion
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
{% highlight vbnet %}



'Accesses all the display element.

 For Each el As Element In Me.gridGroupingControl1.Table.DisplayElements

    Console.WriteLine(el.Info)

 Next el



'Accesses a particular display element.

Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(index).Info)
{% endhighlight  %}
