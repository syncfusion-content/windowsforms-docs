---
layout: post
title: Editing-and-Updating-Value-and-Total-Cells-in-the-PivotGrid-Control
description: editing and updating value and total cells in the pivotgrid control
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Editing and Updating Value and Total Cells in the PivotGrid Control

Value cells and total cells can be edited and updated in the PivotGrid control. Editing and updating can be enabled through the EnableValueEditing and EnableUpdating properties respectively. While handling the editing and updating operations, the values will be calculated automatically and the total values will be reflected.



### Use Case Scenarios

Editing and updating features are useful when users need to edit cell values at run time and save their changes to the underlying data source, thereby reflecting the update in the total cells.





<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Type</th><th>
Data Type</th></tr>
<tr>
<td>
EnableValueEditing</td><td>
Gets/sets the Boolean value to enable editing in value cells.</td><td>
CLR</td><td>
Boolean</td></tr>
<tr>
<td>
EnableUpdating</td><td>
Gets/sets the Boolean value to enable updating.</td><td>
CLR</td><td>
Boolean</td></tr>
<tr>
<td>
ThrottleUpdateRate</td><td>
Gets or sets a millisecond value for the time interval between UI refreshes. Zero indicates immediate refreshes of the UI without delays. Throttling the refresh rate can minimize CPU usage. The default value is zero, but depending upon your updating rate, values of 300 to 500 milliseconds may lower your CPU usage.</td><td>
CLR</td><td>
Int</td></tr>
<tr>
<td>
AllowEditingOfTotalCells</td><td>
Gets/sets the Boolean value to enable editing in total cells.</td><td>
CLR</td><td>
Boolean</td></tr>
<tr>
<td>
HideExpanders</td><td>
Gets/sets the Boolean value to hide expanders in the header cells.</td><td>
CLR</td><td>
Boolean</td></tr>
</table>




<table>
<tr>
<th>
Event</th><th>
Description</th><th>
Arguments</th><th>
Type</th></tr>
<tr>
<td>
ChangeValue</td><td>
Triggered when changing a cell’s value. Using this event we can alter the PivotCellInfo.</td><td>
&lt;object&gt; oldValue, &lt;object&gt; newValue, &lt;int&gt; row1, &lt;int&gt; col1, &lt;PivotCellInfo&gt; pi</td><td>
Event</td></tr>
</table>


## Adding Updating and Editing to an Application

You can enable updating in value and total cells by setting the EnableValueEditing and EnableUpdating properties of the PivotGrid control to true. Enabling the AllowEditingOfTotalCells property allows you to edit the total cells in the PivotGrid control.  


{% highlight c# %}

// To enable editing in the PivotGrid control.
this.pivotGrid1.EnableValueEditing = true;

// To enable updating in the PivotGrid control.
this.pivotGrid1.EnableUpdating = true;

// To enable editing the total cells in the PivotGrid control.
this.pivotGrid1.EditManager.AllowEditingOfTotalCells = true;

{% endhighlight %}
 
{% highlight vbnet %}

‘To enable editing in the PivotGrid control.
Me.pivotGrid1.EnableValueEditing = True

‘To enable updating in the PivotGrid control.
Me.pivotGrid1.EnableUpdating = True

‘To enable editing the total cells in the PivotGrid control.
Me.pivotGrid1.EditManager.AllowEditingOfTotalCells = True

{% endhighlight %}

While updating the PivotGrid control, you can throttle its updating speed which can be set through the ThrottleUpdateRate property. The property gets the value in milliseconds of the time interval at which UI refreshes take place. Zero indicates an immediate refresh of the UI without any delays. Throttling the refresh rate can minimize CPU usage. The default value is zero, but depending upon your updating rate, values of 300 to 500 milliseconds may provide lower CPU usage. The following code explains its implementation.


{% highlight c# %}

// To set the throttle rate for updating in the PivotGrid control.
this.pivotGrid1.UpdateManager.ThrottleUpdateRate = 300;

{% endhighlight %}

{% highlight vbnet %}

‘To set the throttle rate for updating in the PivotGrid control.
Me.pivotGrid1.UpdateManager.ThrottleUpdateRate = 300

{% endhighlight %}


### Sample Link

A sample of this feature can be found in the following location:

&lt;InstalledLocation&gt;\AppData\Local\Syncfusion\EssentialStudio\<InstalledVersion>\Windows\PivotGrid.Windows\Samples\Interactive Features\Editing Demo\CS