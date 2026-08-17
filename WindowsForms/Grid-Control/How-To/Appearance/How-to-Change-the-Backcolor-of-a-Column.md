---
layout: post
title: How to Set Column BackColor in Windows Forms GridControl | Syncfusion®
description: Change the BackColor of a column in Syncfusion® Windows Forms GridControl using column style settings and customize the appearance of its cells and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set Column BackColor in Windows Forms GridControl

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
