---
layout: post
title: How to Set a Row BackColor in Windows Forms Grid Control | Syncfusion®
description: Change the BackColor of a single row in Syncfusion® Windows Forms Grid Control using row style settings and customize its appearance and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set a Row BackColor in Windows Forms Grid Control

GridControl.RowStyles collection contains [GridStyleInfo](/windowsforms/Grid/Cell-Style-Architecture#gridstyleinfo-class-overview) objects that provide row style settings for the Grid Control. Changing the properties on a particular RowStyle will affect all the cells in that row (unless a particular cell has a more specific style setting, like a [CellStyle](/windowsforms/Grid/Cell-Style-Architecture#properties), applied).

{% tabs %}
{% highlight c# %}

//Sets the BackColor of the 3rd row.
gridControl1.RowStyles[3].BackColor = Color.Red;
{% endhighlight  %}

{% highlight vb %}
'Sets the BackColor of the 3rd row.
GridControl1.RowStyles(3).BackColor = Color.Red

{% endhighlight  %}
{% endtabs %}