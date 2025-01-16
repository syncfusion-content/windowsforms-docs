---
layout: post
title: Freezing Headers in Windows Forms Pivot Grid control | Syncfusion
description: Learn about Freezing Headers support in Syncfusion® Windows Forms Pivot Grid control and more details.
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Freezing Headers in Windows Forms Pivot Grid

The [WinForms Pivot Grid](https://www.syncfusion.com/winforms-ui-controls/pivot-grid) control provides built-in support for freezing column and row headers. This support is quite useful when users want to make the headers visible at all times. The row and column headers are always visible when scrolling through the pivot grid with large number of rows and columns.

## Enabling frozen headers

The frozen headers support in pivot grid control can be enabled by setting the [FreezeHeaders](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase.html#Syncfusion_Windows_Forms_PivotAnalysis_PivotGridControlBase_FreezeHeaders) property to `true`. By default, the row and column headers are not frozen. This feature also enables the scrolling through the value cells.

Refer to the below code sample to freeze the headers of pivot grid control.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.FreezeHeaders = true;

{% endhighlight %}

{% highlight vb %}

Me.PivotGridControl1.TableControl.FreezeHeaders = True

{% endhighlight %}

{% endtabs %}

![Freezing-Headers_img1](Freezing-Headers_images/Freezing-Headers_img1.gif)
