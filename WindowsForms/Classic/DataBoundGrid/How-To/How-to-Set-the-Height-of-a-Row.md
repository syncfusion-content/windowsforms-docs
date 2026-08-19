---
layout: post
title: Set the height of a row in WinForms GridDataBoundGrid | Syncfusion®
description: Set the height of specific rows and header rows in Syncfusion® WinForms GridDataBoundGrid using the Model.RowHeights collection.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to set the height of a row in WinForms GridDataBoundGrid

This page explains How to Set the Height of a Row and more details.

## How to Set the Height of a Row

To explicitly set the height of a particular row, use the Model.RowHeights collection.

{% tabs %}
{% highlight c# %}

//Sets height of row 3 to 40.
this.gridDataBoundGrid1.Model.RowHeights[3] = 40; 

//Sets height of header row 30.
this.gridDataBoundGrid1.Model.RowHeights[0] = 30; 

{% endhighlight %}

{% highlight vb %}

'Sets height of row 3 to 40.
Me.GridDataBoundGrid1.Model.RowHeights(3) = 40 

'Sets height of header row 30.
Me.GridDataBoundGrid1.Model.RowHeights(0) = 30 

{% endhighlight %}
{% endtabs %}