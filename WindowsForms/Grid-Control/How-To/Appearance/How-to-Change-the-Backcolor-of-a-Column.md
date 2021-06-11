---
layout: post
title: How to change the backcolor of a column in GridControl | Syncfusion
description: Learn here all about how to change the backcolor of a column of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to change the BackColor of a column

The GridControl.ColStyles collection contains [GridStyleInfo](/windowsforms/Grid/Cell-Style-Architecture#gridstyleinfo-class-overview) objects that provide column style settings for the GridControl. Changing the properties on a particular column style will affect all the cells in that row (unless a particular cell has a more specific style setting, like a [cell style](/windowsforms/Grid/Cell-Style-Architecture#properties), applied).

{% tabs %}
{% highlight c# %}

//Sets the BackColor for the third column.
gridControl1.ColStyles[3].BackColor = Color.Red;

{% endhighlight  %}

{% highlight vb %}

'Sets the BackColor for the third column.
GridControl1.ColStyles(3).BackColor = Color.Red

{% endhighlight  %}
{% endtabs %}
