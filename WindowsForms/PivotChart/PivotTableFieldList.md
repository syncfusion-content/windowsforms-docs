---
layout: post
title: PivotTableFieldList | Windows Forms | Syncfusion
description: pivottablefieldlist
platform: windowsforms
control: PivotChart
documentation: ug
---

# PivotTableFieldList

PivotChart can be dynamically built and customized by choosing any available fields to display and choose whether those fields should be displayed as column, row, value or filter fields. The PivotTableFieldList also gives flexibility to wire itself with both PivotChart and PivotGrid. This links the PivotGrid and PivotChart.

{% highlight c# %}

//Synchronizes the PivotChart with the PivotTableFieldList.
this.pivotTableFieldList1.AssociateWith(this.pivotChart1);


//Generates the PivotGrid by using the assigned pivot engine item source.

this.panel.Controls.Add(this.pivotTableFieldList1.PivotGrid);

{% endhighlight %}

{% highlight vbnet %}

'Synchronizes the PivotChart with the PivotTableFieldList.

Me.pivotTableFieldList1.AssociateWith(Me.pivotChart1)



'Generates the PivotGrid by using the assigned pivot engine item source.

Me.panel.Controls.Add(Me.pivotTableFieldList1.PivotGrid

{% endhighlight %}

![](PivotTableFieldList_images/PivotTableFieldList_img1.png)