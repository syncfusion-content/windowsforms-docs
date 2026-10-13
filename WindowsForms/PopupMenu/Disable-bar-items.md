---
layout: post
title: Disable Bar Items in Windows Forms PopupMenu | Syncfusion®
description: Disable bar items to restrict unavailable commands and control user interaction within popup menu interfaces.
platform: windowsforms
control: PopupMenu
documentation: ug
---

# Disable Bar Items in Windows Forms PopupMenu

>**NOTE**       
1. This feature is not applicable for ListBarItem and StaticBarItem.             
2. In this illustration, the **BarItem** has been used. Similarly, this has to be set for ParentBarItem, DropDownBarItem, ComboBoxBarItem and TextBoxBarItem.

The unused or unsupported bar items can be disabled by using this feature. BarItems are enabled by default when they are created, but this can be changed based on user requirement through the [`Enabled`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.BarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_BarItem_Enabled) property.


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
