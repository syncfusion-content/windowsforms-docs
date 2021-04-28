---
layout: post
title: Multiple Headers in Windows Forms xptoolbar control | Syncfusion
description: Learn about Multiple Headers support in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more details.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Multiple Headers in Windows Forms GridDataBoundGrid(Classic)

Grid Data Bound Grid supports display of multiple row and column headers. Additional row headers can be added along side the existing header by setting Model.Rows.HeaderCount and additional column headers can be added below the existing column header by setting the Model.Cols.HeaderCount property.

The following code example illustrates how to display multiple row and column headers.

{% tabs %}
{% highlight c# %}
int extraRowHeaders = 1;
int extraColHeaders = 1;

//Initializes extra row and column headers.
this.gridDataBoundGrid1.Model.Rows.HeaderCount = extraRowHeaders;
this.gridDataBoundGrid1.Model.Cols.HeaderCount = extraColHeaders;
{% endhighlight  %}
{% highlight vb %}
Dim extraRowHeaders As Integer = 1
Dim extraColHeaders As Integer = 1

'Initializes extra row and column headers.
Me.gridDataBoundGrid1.Model.Rows.HeaderCount = extraRowHeaders
Me.gridDataBoundGrid1.Model.Cols.HeaderCount = extraColHeaders
{% endhighlight  %}
{% endtabs %}

The resultant output is shown below.

![Multiple-Headers_img1](Multiple-Headers_images/Multiple-Headers_img1.jpeg)



