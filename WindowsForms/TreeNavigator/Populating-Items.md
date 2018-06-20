---
layout: post
title: Populating-Items | WindowsForms | Syncfusion
description: populating items
platform: WindowsForms
control: TreeNavigator 
documentation: ug
---

# Populating Items

The TreeNavigator is populated with the collection of TreeMenuItem using the Items property.

The following code example allows you to add TreeMenuItem to the TreeNavigator.

{% tabs %}
{% highlight c# %}

//Adds items to the TreeNavigator.
TreeMenuItem treeMenuItem1 = new TreeMenuItem();
this.treeNavigator.Items.Add(this.treeMenuItem1);

{% endhighlight %}

{% highlight vb %}

'Adds items to the TreeNavigator.
Dim treeMenuItem1 As New TreeMenuItem()
Me.treeNavigator.Items.Add(Me.treeMenuItem1)

{% endhighlight %}
{% endtabs %}

![](Concept-and-Features_images/Concept-and-Features_img1.png)