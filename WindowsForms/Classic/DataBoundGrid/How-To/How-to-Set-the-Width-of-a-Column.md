---
layout: post
title: Set the width of a column in WinForms GridDataBoundGrid | Syncfusion®
description: Set custom column widths in Syncfusion® WinForms GridDataBoundGrid by disabling automatic sizing and using the Model.ColWidths collection.
platform: windowsforms
control: GridDataBoundGrid
documentation: ug
---

# How to set the width of a column in WinForms GridDataBoundGrid

This page explains How to Set the Width of a Column and more details.

## How to Set the Width of a Column

In order to change the width of columns in GridDataBoundGrid, you must do the following.

* Set the property grid.AllowResizeToFit to False. This can be done once in the forms constructor or Form.Load event. It will turn off the grids default sizing behavior so that your explicit sizing will work. Otherwise, the default sizing will take precedence. The default sizing uses the width of the header text to size the columns. 
* Then, explicitly set the width of the particular columns by using Model.ColWidths collection.

{% tabs %}
{% highlight c# %}

//Sets size of column 3 to 250.
this.gridDataBoundGrid1.AllowResizeToFit = false;
this.gridDataBoundGrid1.Model.ColWidths[3] = 250; 

{% endhighlight %}

{% highlight vb %}

'Sets size of column 3 to 250.
Me.GridDataBoundGrid1.AllowResizeToFit = False
Me.GridDataBoundGrid1.Model.ColWidths(3) = 250 

{% endhighlight %}
{% endtabs %}
