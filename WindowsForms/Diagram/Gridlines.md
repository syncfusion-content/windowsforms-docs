---
layout: post
title: Diagram Grid in Windows Forms Diagram control | Syncfusion®
description: Learn about Diagram Grid support in Syncfusion® Windows Forms Diagram control, its elements and more details.
platform: windowsforms
control: Diagram
documentation: ug
---

# Diagram Grid in Windows Forms Diagram

The Diagram grid is drawn with evenly spaced points that provides a visual guidance to the user.  

#### Behavior

Draws a matrix of evenly spaced points in the view, and provides snap to the grid calculations.

#### Class Reference

It is a property of Diagram.View class and its return type is _Syncfusion.Windows.Forms.Diagram.LayoutGrid_.



_Diagram Grid Properties_

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
Color</td><td>
Color used for drawing the grid. It accepts System.Color value.</td></tr>
<tr>
<td>
ContainerView</td><td>
Gets or sets the view that this grid is attached to.</td></tr>
<tr>
<td>
DashOffset</td><td>
Distance from the start of the line to the dash pattern. It accepts Float value.</td></tr>
<tr>
<td>
DashStyle</td><td>
Style used for dashed lines. It accepts System.Drawing.Drawing2D.DashStyle value.</td></tr>
<tr>
<td>
GridStyle</td><td>
Gets or sets the appearance of the grid. It is GridStyle enumerator type value.</td></tr>
<tr>
<td>
HorizontalSpacing</td><td>
Determines the horizontal distance between grid points. It accepts float value.</td></tr>
<tr>
<td>
MinPixelSpacing</td><td>
Indicates minimum spacing between grid points in device units. It accepts Float value.</td></tr>
<tr>
<td>
SnapToGrid</td><td>
Adjust the node with nearest grid point. Specifies whether the snap to grid feature is enabled. It accepts Boolean value (true or false).</td></tr>
<tr>
<td>
VerticalSpacing</td><td>
Determines the vertical distance between grid points. It accepts Float value.</td></tr>
<tr>
<td>
Visible</td><td>
Specifies whether the grid is visible. It accepts Boolean value (true or false).</td></tr>
</table>



{% tabs %}
{% highlight c# %}

diagram1.View.Grid.GridStyle = GridStyle.Line;
diagram1.View.Grid.DashStyle=System.Drawing.Drawing2D.DashStyle.Dot;
diagram1.View.Grid.Color = Color.LightGray            
diagram1.View.Grid.VerticalSpacing = 15;
diagram1.View.Grid.HorizontalSpacing = 15;
diagram1.View.Grid.Visible = false;
diagram1.View.Grid.SnapToGrid = true;

{% endhighlight %}
{% endtabs %}

![Diagram-Gridlines](Diagram-Grid_images/Diagram-Grid_img1.jpeg)



