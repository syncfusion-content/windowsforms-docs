---
layout: post
title: Managing Rows and Columns in GridControl
description: how to set the width of a column
platform: windowsforms
control: Grid
documentation: ug
---

# How to set the width of a column

Changing a column's width is simple whether you are using the designer or code. In the designer, use ColWidthsEntries collection. In code, use GridControl.ColWidths collection to specify the width of a column. 

{% tabs %}
{% highlight c# %}

//Sets size of column 3 to 250.
this.gridControl1.ColWidths[3] = 250;

{% endhighlight  %}

{% highlight vb %}

'Sets size of column 3 to 250.
Me.GridControl1.ColWidths(3) = 250 

{% endhighlight  %}
{% endtabs %}