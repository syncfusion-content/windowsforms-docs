---
layout: post
title: Adding-Multiple-Columns-and-SubItems | WindowsForms | Syncfusion
description: adding multiple columns and subitems
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# Adding Multiple Columns and SubItems

This section will guide you in adding multiple columns and sub items in a MultiColumnTreeView control.


## Multiple Columns

### Adding Multiple Columns

MultiColumnTreeView control lets you add multiple columns easily using Columns Editor. The SubItems can be added 
using the SubItems Collection Editor. There are also properties to modify the appearance of the columns.

 ![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img1.jpeg) 
 
 Figure : Columns Editor


This dialog can be accessed using the context menu of the control or the command available at the bottom of the 
property grid. The context menu also lets you add columns directly using "Add Column".

### Customizing the columns using Columns Editor

The below properties can be used to customize the columns.



<table>
<tr>
<th>
TreeColumnAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
AllowTextOverlap</td><td>
Indicates whether the text can overlap or not. By default it false.</td></tr>
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
HelpText</td><td>
Sets the help text for the columns.</td></tr>
<tr>
<td>
HorizontalAlignment</td><td>
Sets the horizontal alignment of the text in the columns.</td></tr>
<tr>
<td>
Text</td><td>
Sets text for the columns.</td></tr>
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
Visible</td><td>
Sets the visibility of the particular column.</td></tr>
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
<tr>
<td>
Comparer</td><td>
Comparative value for sorting.</td></tr>
<tr>
<td>
SortOrder</td><td>
Specifies the sort order for the column.</td></tr>
<tr>
<td>
LeftImage</td><td>
Sets the left image for the column.</td></tr>
<tr>
<td>
LeftImageIndices</td><td>
Specifies the left image index.</td></tr>
<tr>
<td>
RightImageIndices</td><td>
Specifies the right image index.</td></tr>
<tr>
<td>
LeftImagePadding</td><td>
Sets the padding of the left image.</td></tr>
<tr>
<td>
RightImagPadding</td><td>
Sets the padding of the right image.</td></tr>
<tr>
<td>
RightImage</td><td>
Sets the right image for the column.</td></tr>
</table>

N> The TreeColumnAdv1.Background settings overrides the MultiColumnTreeView.ColumnsHeaderBackground property settings for individual column headers._

### Painting the Column Area



<table>
<tr>
<th>
TreeColumnAdv Property</th><th>
Description</th></tr>
<tr>
<td>
AreaBackground</td><td>
Gets / sets the background for the column area.</td></tr>
</table>


{% highlight C# %} 

treeColumnAdv1.AreaBackground = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.CadetBlue, System.Drawing.Color.PowderBlue);

treeColumnAdv1.Background = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.CadetBlue, System.Drawing.Color.Azure);

treeColumnAdv2.AreaBackground = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.PowderBlue);

treeColumnAdv2.Background = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.CadetBlue, System.Drawing.Color.Azure);

treeColumnAdv3.AreaBackground = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.LightBlue);

treeColumnAdv3.Background = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.CadetBlue, System.Drawing.Color.Azure);

{% endhighlight %}

 
 
{% highlight vbnet %} 

treeColumnAdv1.AreaBackground = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.BackwardDiagonal, System.Drawing.Color.CadetBlue, System.Drawing.Color.PowderBlue) 

treeColumnAdv1.Background = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.CadetBlue, System.Drawing.Color.Azure) 

treeColumnAdv2.AreaBackground = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.PowderBlue) 

treeColumnAdv2.Background = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.CadetBlue, System.Drawing.Color.Azure) 

treeColumnAdv3.AreaBackground = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.LightBlue) 

treeColumnAdv3.Background = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.CadetBlue, System.Drawing.Color.Azure) 

{% endhighlight %}

![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img3.jpeg) 



N> The appearance of the columns can also be controlled using the standard column styles settings._ _This overrides the above settings.


## SubItems

### Adding SubItems

You can add SubItems for the nodes using the SubItems Collection available in Nodes Collection Editor. 

![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img5.jpeg) 




![](Adding-Multiple-Columns-and-SubItems_images/Adding-Multiple-Columns-and-SubItems_img6.jpeg) 




### Properties for Customizing the SubItems

The below properties lets you customize the subitems using the SubItems Collection dialog.



<table>
<tr>
<th>
TreeNodeAdvSubItem Property</th><th>
Description</th></tr>
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




StyleSettings for all the sub Items can be specified using TreeNodeAdvSubItemStyleInfo class. It is a default base 
style which can be accessed in the BaseStyles Collection Editor. 
See [SubItem Styles](/windowsforms/multicolumntreeview/styles-architecture#subitem-styles).

{% seealso %}

[Column Styles](/windowsforms/multicolumntreeview/styles-architecture#column-styles)

[MultiColumnTreeView Appearance](/windowsforms/multicolumntreeview/multicolumntreeview-appearance)

{% endseealso %}