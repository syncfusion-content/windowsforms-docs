---
layout: post
title: Configuring Child Controls
description: configuring child controls
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# Configuring Child Controls

## Constraints on FlowLayout

Constrained FlowLayout is typically useful when creating resizable data entry forms filled with textboxes, checkboxes, and so on. During design time, the constraints can be specified for each Child control through its extended Constraints on flowLayout property. The constraints in the FlowLayout are described below in detail.

Setting the Constraints Through Designer

## HAlign and VAlign

The alignment of the Child controls that have been placed within a row can be set using the properties given below. The alignment is done based upon the layout modes of the Child controls.

_Table449: Constraints Table_

<table>
<tr>
<th>
Child Control Constraints</th><th>
Description</th></tr>
<tr>
<td>
HAlign</td><td>
Specifies the mode in which the Child control should be laid out within a row. The options includes are as follows.{{ '_Left_' | markdownify }}{{ '_Right_' | markdownify }}{{ '_Center and_' | markdownify }}{{ '_Justify_' | markdownify }}</td></tr>
<tr>
<td>
VAlign</td><td>
Specifies the mode in which the Child control should be laid out within a column. The options includes are as follows.{{ '_Top_' | markdownify }}{{ '_Bottom_' | markdownify }}{{ '_Center and_' | markdownify }}{{ '_Justify_' | markdownify }}</td></tr>
</table>


When the alignment is set to 'Justify', any extra space will be equally distributed across the other Child controls that have been justified differently within that same row. However, when there is a lack of sufficient space, the justified Child controls are shrunk proportionally based on their minimum size and preferred size settings (specifically, the difference between the two sizes).

> Note: The Alignment property should be set to 'True' for the above properties to take effect.

![](Overview_images/Overview_img42.jpeg) 



> Note: In the figure above, the textboxes have autolabels associated with them.

## Layout Participation

You can prevent a Child control from participating in the layout using the below given property.

_Table450: Constraint Table_

<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
Active</td><td>
Specifies whether the Child control should participate in the layout. The default value is set to 'True'.</td></tr>
</table>

## Line Beginner

You can force a Child control to always start at a new row by setting the below given property.

_Table451: Constraint Table_

<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
NewLine</td><td>
Specifies whether the Child control should always be moved to the beginning of a new line. The default value is set to 'False'.</td></tr>
</table>

## Row Height and Column Width

By default, rows are not adjusted to take into account the remaining vertical space in the horizontal layout mode or horizontal space in the vertical layout mode. This can be done using the properties given below.

_Table452: Constraints Table_

<table>
<tr>
<th>
Child Control Constraint</th><th>
Description</th></tr>
<tr>
<td>
ProportionalColWidth</td><td>
Specifies if proportional column widths should be used in the vertical layout. The default value is set to 'False'.</td></tr>
<tr>
<td>
ProportionalRowHeight</td><td>
Specifies if proportional row heights should be used in the horizontal layout. The default value is set to 'False'.</td></tr>
</table>


![](Overview_images/Overview_img44.jpeg) 



The methods associated with the above properties are given below.

_Table453: Methods Table_

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetConstraints</td><td>
Returns the constraints associated with the specified control.</td></tr>
<tr>
<td>
GetConstraintsRef</td><td>
Returns a reference to the constraints associated with the specified control.</td></tr>
<tr>
<td>
SetConstraints</td><td>
Specifies the constraints associated with the specified control.</td></tr>
</table>


In code, you can specify constraints through the SetConstraints() method. The FlowLayoutConstraints type defines the constraint that can be specified on a Child component.

Setting the Constraints Programmatically

In the coding given below, the constraints are set to the particular control along with the constraint values like Active, HAlign, VAlign, NewLine, ProportionalColWidth and ProportionalRowHeight.

{% highlight c# %}



this.flowLayout1.SetConstraints(this.textBox1, new Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(true, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, false, false, false));







Me.flowLayout1.SetConstraints(Me.textBox1, New Syncfusion.Windows.Forms.Tools.FlowLayoutConstraints(True, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify, Syncfusion.Windows.Forms.Tools.VertFlowAlign.Center, False, False, False))
{% endhighlight  %}
See Also

Configuring FlowLayout, Centering the Child Controls Horizontally and Vertically, Enabling Constrained FlowLayout on a Container, Rearranging the Controls laid out by FlowLayout, Child Control Settings