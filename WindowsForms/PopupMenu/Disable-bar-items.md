---
layout: post
title:  Disable bar items | Windows Forms | Syncfusion
description: Bar items can be enabled or disabled based on user requirement.
platform: WindowsForms
control: PopupMenu
documentation: ug
---

# Disable bar items

>**NOTE**       
1. This feature is not applicable for ListBarItem and StaticBarItem.             
2. In this illustration we have used **BarItem**. Similarly, we have to set for ParentBarItem, DropDownBarItem,ComboBoxbarItem, ListBarItem, StaticBarItem and TextBoxBarItem.

We can disable the unused or unsupported bar items by using this feature. BarItems are enabled by default when they are created, but this can be changed based on user requirement through the [`Enabled`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarItem~Enabled.html) property.


The below code snippet will explain how to disable the BarItems.

{% tabs %}
{% highlight c# %}

this.barItem1.Enabled = false;
this.barItem4.Enabled = false;

{% endhighlight %}

{% highlight vb %}

Me.barItem1.Enabled = False
Me.barItem4.Enabled = False

{% endhighlight %}
{% endtabs %}


![Disable menu items](Disable_Images/Disable.png)