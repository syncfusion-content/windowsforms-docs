---
layout: post
title: Selection Modes in Windows Forms MultiColumn ListBox | Syncfusion®
description: Selection Modes in Syncfusion® Windows Forms MultiColumn ListBox let users select one item or choose multiple items using simple or extended options.
platform: windowsforms
control: MultiColumn ListBox
documentation: ug
---

# Selection Modes in Windows Forms MultiColumn ListBox

## Selection modes

Selection behavior of the GridList control can be specified by using the SelectionMode property. There are three types of selection behaviors:

* One: Selects only one item.
* MultiSimple: Selects multiple items.
* MultiExtended: Selects multiple items using SHIFT, CTRL, arrow keys, etc.

{% tabs %}
{% highlight c# %}
this.gridListControl1.SelectionMode = SelectionMode.One;
this.gridListControl1.SelectionMode = SelectionMode.MultiSimple;
this.gridListControl1.SelectionMode = SelectionMode.MultiExtended;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.SelectionMode = SelectionMode.One
Me.gridListControl1.SelectionMode = SelectionMode.MultiSimple
Me.gridListControl1.SelectionMode = SelectionMode.MultiExtended
{% endhighlight  %}
{% endtabs %}
