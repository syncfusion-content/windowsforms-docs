---
layout: post
title: How-to-select-multiple-items-in-the-dropdown
description: how to select multiple items in the dropdown?
platform: WindowsForms
control: ComboBoxAdv
documentation: ug
---

# How to select multiple items in the dropdown?

In order to perform multiple selection, you can use the ComboxAdv or MultiColumnComboBox controls, that contains a normal ListBox that allows you to select multiple items, internally.



{% highlight c# %}




//To select multiple items in ComboBoxAdv

this.comboBoxAdv1.ListBox.SelectionMode = SelectionMode.MultiExtended;

this.multiColumnComboBox1.ListBox.SelectionMode = SelectionMode.MultiExtended;

{% endhighlight %}

{% highlight vbnet %}



'To select multiple items in ComboBoxAdv

 Me.comboBoxAdv1.ListBox.SelectionMode = SelectionMode.MultiExtended

 Me.multiColumnComboBox1.ListBox.SelectionMode = SelectionMode.MultiExtended


{% endhighlight %}
