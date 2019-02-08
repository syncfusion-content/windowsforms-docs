---
layout: post
title: Partial Menus | Windows Forms | Syncfusion
description: The popup menu items can be prioritized to display the menu items 
platform: WindowsForms
control: PopupMenu
documentation: ug
---

# Partial Menus

The popup menu items which are frequently used can be prioritized for display and rest can be temporarily hidden within the menu. [`UsePartialMenus`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~UsePartialMenus.html) property of the parent bar item associated with the popup menu is used to enable the partial menus option and the priority of the bar items can be set by using the property [`IsRecentlyUsedItem`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem~IsRecentlyUsedItem.html). By default, its set to `true`.


The below code snippet will enable the partial menus feature in popup menu control.

{% tabs %}
{% highlight c# %}

this.popupMenu1.ParentBarItem.UsePartialMenus = true;
this.parentBarItem2.IsRecentlyUsedItem = false;
this.parentBarItem3.IsRecentlyUsedItem = false;

{% endhighlight %}

{% highlight vb %}

Me.popupMenu1.ParentBarItem.UsePartialMenus = True
Me.parentBarItem2.IsRecentlyUsedItem = False
Me.parentBarItem3.IsRecentlyUsedItem = False

{% endhighlight %}
{% endtabs %}


![Partial Menus](PartialMenus_Images/Partialmenu.png)
