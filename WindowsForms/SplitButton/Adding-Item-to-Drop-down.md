---
layout: post
title: Adding-Item-to-Drop-down
description: adding item to drop-down
platform: WindowsForms
control: SplitButton 
documentation: ug
---

# Adding Item to Drop-down

This feature enables you to add items to the SplitButton drop-down list. 

You can add item using the _DropDownItems_ property. The following code illustrates how to add items to the drop-down list:

{% highlight c# %}

	this.splitButton1.DropDownItems.Add("Item 1");

	this.splitButton1.DropDownItems.Add("Item 2");


{% endhighlight %}


{% highlight vbnet %}

Me.splitButton1.DropDownItems.Add("Item 1")

Me.splitButton1.DropDownItems.Add("Item 2")

{% endhighlight %}




![](Adding-Item-to-Drop-down_images/Adding-Item-to-Drop-down_img1.png)



Removing Item from Drop-Down List

You can also remove the added items if required. The following code illustrates how to remove items form drop-down list:

{% highlight c# %}

this.splitButton1.DropDownItems.RemoveAt(1);

{% endhighlight %}

{% highlight vbnet %}

Me.splitButton1.DropDownItems.RemoveAt(1);

{% endhighlight %}


![](Adding-Item-to-Drop-down_images/Adding-Item-to-Drop-down_img2.png)



