---
layout: post
title: How-to-prevent-the-ComboBoxBarItems-dropdown-from- | Windows Forms | Syncfusion
description: how to prevent the comboboxbaritem's dropdown from being closed after clicking a choiselist item
platform: windowsforms
control: Orientation
documentation: ug
---

# How to prevent the ComboBoxBarItem's dropdown from being closed after clicking a ChoiseList Item

By setting the CloseOnClick property to false, we can prevent the dropdown from closing, when an item is clicked in the choice list.

{% highlight c# %}

comboBoxBarItem1.CloseOnClick = false;

{% endhighlight %}

{% highlight vbnet %}

comboBoxBarItem1.CloseOnClick = False

{% endhighlight %}

