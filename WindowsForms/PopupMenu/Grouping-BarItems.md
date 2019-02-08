---
layout: post
title:  Grouping Bar Items | Windows Forms | Syncfusion
description: Group the required bar items
platform: WindowsForms
control: PopupMenu
documentation: ug
---

# Grouping of BarItems

Grouping allows to add separator between a collection of bar items which are relevant to one another. To group the required bar items, the [`SeparatorIndices`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~SeparatorIndices.html) property of the associated ParentBarItem is used.


The below code snippets add a **Separator** to the PopupMenu control.

{% tabs %}
{% highlight c# %}

this.parentBarItem1.SeparatorIndices.AddRange(new int[] { 1, 4});

{% endhighlight %}

{% highlight vb %}

Me.parentBarItem1.SeparatorIndices.AddRange(New Integer() { 1, 4})

{% endhighlight %}
{% endtabs %}


![Grouping](Grouping_Images/Grouping.png)

Grouping can also be done by using the below mentioned methods.


* [`BeginGroupAt`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~BeginGroupAt.html) : Begins the categorization (grouping) of items immediately before the BarItem instance specified.

* [`RemoveGroupAt`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~RemoveGroupAt.html) : Ends the categorization (grouping) of items immediately before the BarItem instance specified. 

* [`IsGroupBeginning`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~IsGroupBeginning.html) : Returns a boolean value whether the specified bar item instance is at the beginning of the grouping or not. 

The below code snippets will explain how to set grouping by using the methods.

{% tabs %}
{% highlight c# %}

this.parentBarItem1.BeginGroupAt(this.barItem2);
this.parentBarItem1.BeginGroupAt(this.parentBarItem2);
this.parentBarItem1.RemoveGroupAt(this.barItem2);

{% endhighlight %}

{% highlight vb %}

Me.parentBarItem1.BeginGroupAt(Me.barItem2)
Me.parentBarItem1.BeginGroupAt(Me.parentBarItem2)
Me.parentBarItem1.RemoveGroupAt(Me.barItem2)

{% endhighlight %}
{% endtabs %}


![Grouping](Grouping_Images/Grouping1.png)




