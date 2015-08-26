---
layout: post
title: SubItems
description:  Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---

# SubItems

## Adding SubItems

You can add SubItems for the nodes using the SubItems Collection available in Nodes Collection Editor. 

![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img5.jpeg) 



![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img6.jpeg) 



## Properties for Customizing the SubItems

The below properties lets you customize the subitems using the SubItems Collection dialog.

_Table_ _528__: Property Table_

<table>
<tr>
<td>
TreeNodeAdvSubItem Property</td><td>
Description</td></tr>
<tr>
<td>
Alignment</td><td>
Sets the alignment of the SubItem text.</td></tr>
<tr>
<td>
Background</td><td>
Sets the background for the subitem.</td></tr>
<tr>
<td>
LineAlignment</td><td>
Sets the vertical alignment of the subitem text.</td></tr>
<tr>
<td>
Text</td><td>
Sets the text for the SubItem.</td></tr>
<tr>
<td>
TextColor</td><td>
Sets the color for the SubItem text.</td></tr>
<tr>
<td>
Visible</td><td>
Sets the visibility of the subitem.</td></tr>
<tr>
<td>
BaseStyle</td><td>
Specifies the BaseStyle that it should inherit from.</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Specifies the 3D style for the border.</td></tr>
<tr>
<td>
BorderColor</td><td>
Sets the border color.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides which should have borders.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Specifies the 2D style for the border when BorderStyle is set to FixedSingle. Options are,Dotted,Dashed,Solid,Inset and Outset.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Sets the border style, either FixedSingle or Fixed 3D</td></tr>
</table>


The below image displays subitems with similar settings in the property grid above.

![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img7.jpeg) 



StyleSettings for all the sub Items can be specified using TreeNodeAdvSubItemStyleInfo class. It is a default base style which can be accessed in the BaseStyles Collection Editor. See SubItem Styles.



