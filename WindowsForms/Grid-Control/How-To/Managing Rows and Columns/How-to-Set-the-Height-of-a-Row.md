---
layout: post
title: Set the Height of a Row in Windows Forms GridControl | Syncfusion
description: Learn here about how to set the height of a row in Syncfusion Essential Studio Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to set the height of a row in Windows Forms Grid Control

Changing a row's height is simple whether you are using the designer or code. From the designer, use RowHeightEntries collection. To explicitly set height of the particular row from code, use GridControl.RowHeights collection.

{% tabs %}
{% highlight c# %}

//Sets height of row 3 to 40.
this.gridControl1.RowHeights[3] = 40; 

//Sets height of header row 30.
this.gridControl1.RowHeights[0] = 30; 

{% endhighlight  %}

{% highlight vb %}

'Sets height of row 3 to 40.
Me.GridControl1.RowHeights(3) = 40 

'Sets height of header row 30.
Me.GridControl1.RowHeights(0) = 30 

{% endhighlight  %}
{% endtabs %}
