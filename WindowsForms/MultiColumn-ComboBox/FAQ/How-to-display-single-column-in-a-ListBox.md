---
layout: post
title: How-to-display-single-column-in-a-ListBox | WindowsForms | Syncfusion
description: how to display single column in a listbox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Display Single Column in a ListBox

To turn off showing multiple columns in a ListBox, follow the below given steps.

1. Access the GridListControl and set its MultiColumn property to False.

{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

// Turns off  multiple columns display.
this.multiColumnBoundCombo.ListBox.MultiColumn = false;

{% endhighlight %}

{% highlight vb %}

' Turns off  multiple columns display.
Me.multiColumnBoundCombo.ListBox.MultiColumn = False

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. The dropdown will then simply show the first column in the bound datasource (the combo's DisplayMember property will not be consulted here). Make sure that in your SQL query, the desired column to be shown in the drop-down is the first one.

