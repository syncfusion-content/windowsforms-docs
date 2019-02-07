---
layout: post
title:  Checked/unchecked bar items | Windows Forms | Syncfusion
description: Indicating whether a check mark appears before to the text of the selected bar item.
platform: WindowsForms
control: PopupMenu
documentation: ug
---

# Checked/unchecked bar items

This support will help users to easily acknowledge the selected bar item by using the check mark. The [`Checked`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarItem~Checked.html) property indicates whether a check mark should appear before the text of the bar item. On runtime, user can toggle the state manually through the [`Click`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarItem~Click_EV.html) event of the bar item.

>**NOTE**        
In this illustration we have used **ParentBarItem**. Similarly, we have to set for BarItem, DropDownBarItem,ComboBoxbarItem, ListBarItem, StaticBarItem and TextBoxBarItem.


The below code snippet will explain the checked state of the bar item.

{% tabs %}
{% highlight c# %}

this.parentBarItem2.Checked = true;

{% endhighlight %}

{% highlight vb %}

Me.parentBarItem2.Checked = True

{% endhighlight %}
{% endtabs %}


![Checked/unchecked menu items](Checked_Images/Checked.png)
