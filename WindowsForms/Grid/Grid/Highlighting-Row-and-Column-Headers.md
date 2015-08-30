---
layout: post
title: Highlighting-Row-and-Column-Headers
description: Highlighting row and column headers
platform: windowsform
control: Grid
documentation: ug
---

# Highlighting Row and Column Headers

This feature is used to highlight the corresponding row and column headers of one or more cells that you selected. Using the MarkRowHeader and MarkColHeader properties, you can enable highlighting the row and column headers of the selected cells.

Table 30: Properties Table

<table>
<tr>
<th>
PROPERTY </th><th>
DESCRIPTION </th><th>
DATA TYPE </th></tr>
<tr>
<td>
MarkRowHeader</td><td>
It is used to highlight row headers of the selected cells.</td><td>
Boolean</td></tr>
<tr>
<td>
MarkColHeader</td><td>
It is used to highlight the column headers of the selected cells.</td><td>
Boolean</td></tr>
</table>

By default, MarkRowHeader and MarkColHeader properties are set to false. To enable highlighting row and column headers, set MarkRowHeader and MarkColHeader properties to true. The following code examples illustrate this.

{% highlight c# %}

this.gridControl1.MarkColHeader = true;

this.gridControl1.MarkRowHeader = true;

{% endhighlight %}

{% highlight vbnet %}

Me.gridControl1.MarkColHeader = true

Me.gridControl1.MarkRowHeader = true

{% endhighlight %}

![](Grid-Control_images/Grid-Control_img74.png)





###Sample Link

To view samples from the dashboard:

* Open Syncfusion Dashboard. 
* Select UI > Windows Forms.
* Click Run Samples.  
* Navigate to Grid > MS Excel-Style Features > Mark Header Demo
