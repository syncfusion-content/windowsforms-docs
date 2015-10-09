---
layout: post
title: How to view the hidden Items in a GroupView programmatically | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupView
documentation: ug
---
# How to view the hidden Items in a GroupView programmatically

GroupView's BringItemIntoView method can be used to scroll down to a hidden item and bring that item into view.

The following code snippet illustrates this.

{% highlight C# %}  

this.groupView1.SelectedItem = 20; 

// This will scroll to Item 20. 

this.groupView1.BringItemIntoView(20);

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.SelectedItem = 20

' This will scroll to Item 20. 

Me.groupView1.BringItemIntoView(20)

{% endhighlight %}