---
layout: post
title: Updating Values | PivotGrid | Windows Forms | Syncfusion
description: Updating cell values in pivot grid
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# Updating Values

Pivot grid provides support to update the cell values in real time. This support is useful when users want to update the cell values in the underlying data source, thereby the changes will be reflected in the total cells based on the updated data.

## Enabling updating

Cell values can be updated at run time by using the [EnableUpdating]((https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~EnableUpdating.html)) property of pivot grid.

Refer to the below code sample to enable the run time updating in pivot grid control.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.EnableUpdating = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.EnableUpdating = True

{% endhighlight %}

{% endtabs %}

### Throttling update speeed

While updating the pivot grid control, users can throttle the updating speed by using the [ThrottleUpdateRate](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotUpdatingManager~ThrottleUpdateRate.html) property of [update manager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~UpdateManager.html). For example, if the throttle update rate is specified as zero milliseconds, then it indicates to refresh the UI without any delay. Throttling the refresh rate can minimize the CPU usage. The update rate values of 300 to 500 milliseconds may give lower CPU usage.

Refer to the below code sample to set the update rate as 300 milliseconds through update manager.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.UpdateManager.ThrottleUpdateRate = 300;

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.UpdateManager.ThrottleUpdateRate = 300

{% endhighlight %}

{% endtabs %}

![Updating-Values_img1](Updating-Values_images/Updating-Values_img1.gif)

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Interactive Features\Updating Demo