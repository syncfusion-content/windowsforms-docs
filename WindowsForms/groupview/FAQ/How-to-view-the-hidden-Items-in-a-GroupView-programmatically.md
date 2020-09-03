---
layout: post
title: View the hidden group view items | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupView
documentation: ug
---
# How to view the hidden items in a GroupView programmatically?

GroupView's [BringItemIntoView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_BringItemIntoView_System_Int32_) method can be used to scroll down to a hidden item and bring that item into view.

{% tabs %}

{% highlight C# %}  

this.groupView1.SelectedItem = 20; 

// This will scroll to Item 20. 

this.groupView1.BringItemIntoView(20);

{% endhighlight %}



{% highlight VB %}

Me.groupView1.SelectedItem = 20

' This will scroll to Item 20. 

Me.groupView1.BringItemIntoView(20)

{% endhighlight %}

{% endtabs %}
