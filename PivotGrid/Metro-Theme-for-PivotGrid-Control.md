---
layout: post
title: Metro-Theme-for-PivotGrid-Control | WindowsForms | Syncfusion
description: metro theme for pivotgrid control
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Metro Theme for PivotGrid Control

This feature enables you to apply new Metro styles for the PivotGrid control.



### Use Case Scenarios

The Metro theme support is useful for commercial applications in order to attract end users with inspiring UI look and feel.

## Tables for Properties, and Events



### Properties

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
GridVisualStyle</td><td>
This is an enumeration type property. It is used to get or set the visual styles (skins) such as Office2010, Office2007, Office2003, Metro, etc.</td></tr>
</table>


### Events

<table>
<tr>
<th>
Event</th><th>
Parameters</th><th>
Description</th></tr>
<tr>
<td>
ThemeChanged</td><td>
Object sender, EventArgs e</td><td>
Occurs when the ThemesEnabled property is changed.</td></tr>
</table>


## Applying Metro Theme to the PivotGrid Control

You can apply the Metro theme to the PivotGrid control by setting the GridVisualStyles property as Metro. The following code example illustrates this.


{% highlight c# %}

this.pivotGridControl1.GridVisualStyles = Syncfusion.Windows.Forms.GridVisualStyles.Metro;

{% endhighlight %}

{% highlight vbnet %}

Me.pivotGridControl1.GridVisualStyles = Syncfusion.Windows.Forms.GridVisualStyles. 

{% endhighlight %}


The following screenshot is a sample output for the previous code.



![](Metro-Theme-for-PivotGrid-Control_images/Metro-Theme-for-PivotGrid-Control_img1.png)