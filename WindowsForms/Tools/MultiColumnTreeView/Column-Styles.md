---
layout: post
title: Column Styles
description: Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---
# Column Styles

Standard - Column style is default style that will applied for all the columns of the MultiColumnTreeView control. The style settings can be edited by the user.

## Column Style Properties

The below properties controls the appearance of the columns.

_Table_ _535__: Property Table_

<table>
<tr>
<td>
TreeColumnAdv Property</td><td>
Description</td></tr>
<tr>
<td>
AllowTextOverlap</td><td>
Indicates whether the text can overlap or not. By default it false.</td></tr>
<tr>
<td>
AreaBackground</td><td>
Gets / sets the background for the column area.</td></tr>
<tr>
<td>
Background</td><td>
Sets the background for the column (column header).</td></tr>
<tr>
<td>
Font</td><td>
Sets the foreground style for the columns.</td></tr>
<tr>
<td>
HorizontalAlignment</td><td>
Sets the horizontal alignment of the text in the columns.</td></tr>
<tr>
<td>
TextColor</td><td>
Sets the text color for the columns.</td></tr>
<tr>
<td>
Vertical Alignment</td><td>
Sets the vertical alignment of the text in the columns.</td></tr>
<tr>
<td>
BaseStyle</td><td>
Sets the base style to be applied to the column.</td></tr>
<tr>
<td>
Width</td><td>
Specifies Column width.</td></tr>
<tr>
<td>
Border3DStyle</td><td>
Sets the 3D border style for the column.</td></tr>
<tr>
<td>
BorderColor</td><td>
Border color for the column.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the column which should have border.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Sets 2D or 3D border. The options are,FixedSingle andFixed3D.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Specifies the 2D border style for the columns, when BorderStyle is set to Fixed Single. The options are, Dotted,Dashed, Solid,Inset andOutset.</td></tr>
</table>

### Adding ColumnStyle

The editor also lets you add user defined column styles like other styles as follows.

![](Styles-Architecture_images/Styles-Architecture_img8.jpeg) 
Figure : New ColumnStyle1 Added


The user-defined column style can be applied to any of the columns, using Columns Editor. This setting overrides the default settings.

![](Styles-Architecture_images/Styles-Architecture_img9.jpeg) 
Figure : Column Style applied by using the Columns Editor
