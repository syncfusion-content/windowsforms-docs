---
layout: post
title: Set Column Width in Windows Forms GridControl | Syncfusion®
description: Set the width of columns in Syncfusion® Windows Forms GridControl using the ColWidths collection and customize column sizing programmatically.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set the Width of a Column in Windows Forms GridControl

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