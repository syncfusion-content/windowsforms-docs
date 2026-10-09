---
layout: post
title: Trigger Bar Item in Windows Forms PopupMenu Control | Syncfusion®
description: Trigger bar items using click events and keyboard shortcuts to execute commands and handle menu interactions.
platform: windowsforms
control: PopupMenu
documentation: ug
---

# Trigger Bar Item in Windows Forms PopupMenu

On selection, the bar items functionality is handled through the [`Click`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.BarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_BarItem_Click) event for further operations/manipulations.

> **NOTE**          
> Bar items can also be operated through keyboard shortcuts as discussed in the [Keyboard shortcuts](https://help.syncfusion.com/windowsforms/popupmenu/touch-and-keyboard#keyboard-shortcuts) section. When doing so, the [`Click`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPMenus.BarItem.html#Syncfusion_Windows_Forms_Tools_XPMenus_BarItem_Click) event will be invoked when pressing the shortcut keys.   


The below code snippet shows how to append a click event for bar items through code behind.

{% tabs %}
{% highlight c# %}

this.barItem1.Click += BarItem1_Click1;
this.parentBarItem2.Click += ParentBarItem2_Click;
this.dropDownBarItem1.Click += DropDownBarItem1_Click;
this.comboBoxBarItem1.Click += ComboBoxBarItem1_Click;
this.listBarItem1.Click += ListBarItem1_Click;
this.staticBarItem1.Click += StaticBarItem1_Click;
this.textBoxBarItem1.Click += TextBoxBarItem1_Click;

{% endhighlight %}

{% highlight vb %}

AddHandler barItem1.Click, AddressOf BarItem1_Click1
AddHandler parentBarItem2.Click, AddressOf ParentBarItem2_Click
AddHandler dropDownBarItem1.Click, AddressOf DropDownBarItem1_Click
AddHandler comboBoxBarItem1.Click, AddressOf ComboBoxBarItem1_Click
AddHandler listBarItem1.Click, AddressOf ListBarItem1_Click
AddHandler staticBarItem1.Click, AddressOf StaticBarItem1_Click
AddHandler textBoxBarItem1.Click, AddressOf TextBoxBarItem1_Click

{% endhighlight %}
{% endtabs %}
