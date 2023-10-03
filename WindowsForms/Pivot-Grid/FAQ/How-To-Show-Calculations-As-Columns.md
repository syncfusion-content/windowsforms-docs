---
layout: post
title: How to Show Calculations as Columns | PivotGrid | Windows Forms | Syncfusion
description: How to show calculations as columns in pivot grid
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# How to Show Calculations as Columns

The pivot grid control provides support to support to show the calculation values by checking the check box "[Show Calculations as Columns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControl_ShowCalculationsAsColumns)" available at the bottom left corner of the pivot schema designer.

This support can also be achieved programmatically by setting the [ShowCalculationsAsColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControl_ShowCalculationsAsColumns) property of pivot grid control as true.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.ShowCalculationsAsColumns = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.ShowCalculationsAsColumns = true

{% endhighlight %}

{% endtabs %}

![Show-Calculations-As-Columns_img1](How-To-Show-Calculations-As-Columns_images/Show-Calculations-As-Columns_img1.png)
