---
layout: post
title: Customizing-Nodes | Windows Forms | Syncfusion
description: customizing nodes
platform: windowsforms
control: Diagram
documentation: ug
---

# Customizing Nodes

This section discusses how to customize Diagram nodes, under the following topics:

## Line Bridging

Line bridging provides the visual effect such that the links jump over other links that are found in it's way with lower Z-order, thereby avoiding the links from intersecting each other and providing a hassle-free view to clearly state the various connections between the nodes.It will also create the same visual effect when it jumps over any port. This is done by enabling the LineBridgingEnabled property. Default value is _false_.



![](Customizing-Nodes_images/Customizing-Nodes_img1.jpeg)





The below table lists the properties which controls the appearance of the bridge.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
LineBridgeSize</td><td>
Allows to set the size of the bridge when the links intersect each other. Default value is 16.</td></tr>
<tr>
<td>
BridgeStyle</td><td>
Specifies the type of bridge to be applied. Default value is 'Arc'. The value when set, applies to all the links that are drawn on the diagram. The links will bridge over the other link only when it's Z-order value is high. The options include the following:
<ul><li> Arc</li><li> Gap</li><li> Square</li><li> Side2</li><li>Side3</li><li>Side4</li><li>Side5</li><li>Side6</li><li>Side7</li></ul></td></tr>
</table>



Programmatically it can be set as follows:



{% highlight c# %}



this.diagram1.Model.LineBridgeSize = 5;



//enabling for model

this.diagram1.Model.LineBridgingEnabled = true;



//enabling for link object

link.LineBridgingEnabled = true;



this.diagram1.Model.BridgeStyle = BridgeStyle.Square;

{% endhighlight %}

{% highlight vbnet %}



Me.diagram1.Model.LineBridgeSize = 5



'enabling for model

Me.diagram1.Model.LineBridgingEnabled = True



'enabling for link object

link.LineBridgingEnabled = True



Me.diagram1.Model.BridgeStyle = BridgeStyle.Square

{% endhighlight %}

N> In the above code snippets, link refers to the instance of the Link node.

## Line Routing

When a link is drawn between two nodes, by enabling the LineRoutingEnabled property of that link and the diagram view, and if any other node is found in between them, the line will be automatically re-routed around those nodes.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
LineRoutingEnabled</td><td>
Specifies whether the links must be re-routed when nodes are found in the path. Default value is false.</td></tr>
</table>


Programmatically it can be set as follows: 



{% highlight c# %}



//enabling for model

this.diagram1.Model.LineRoutingEnabled = true;



//enabling for link object

link.LineRoutingEnabled = true;

{% endhighlight %}

{% highlight vbnet %}



'enabling for model

Me.diagram1.Model.LineRoutingEnabled = True



'enabling for link object

link.LineRoutingEnabled = True

{% endhighlight %}

N>  In the above code snippet, link refers to the instance of the Link node.
N>
N>  Only when LineRoutingEnabled property is set to true, LineRouter properties will be enabled.



### Distance and Routing mode settings

To customize the distance between the connectors and the obstacles, and the type of routing to use, the LineRouter collection property should be handled. The below properties are available for the LineRouter Collection property.



<table>
<tr>
<th>
Line Router Property</th><th>
Description</th></tr>
<tr>
<td>
DistanceToObstacle</td><td>
Specifies the distance from routing connector to the obstacle.</td></tr>
<tr>
<td>
RoutingMode</td><td>
Specifies the type of LineRouting engine routing mode to be used. The default value is 'Inactive'. The options includes,Inactive,Automatic andSemiAutomatic.</td></tr>
</table>


Programmatically it can be set as follows.



{% highlight c# %}



this.diagram1.Model.LineRouter.DistanceToObstacles = 20;

this.diagram1.Model.LineRouter.RoutingMode = RoutingMode.Automatic;

{% endhighlight %}

{% highlight vbnet %}



Me.diagram1.Model.LineRouter.DistanceToObstacles = 20

Me.diagram1.Model.LineRouter.RoutingMode = RoutingMode.Automatic



The LineBridgingEnabled, LineRoutingEnabled properties can be set for the diagram, in which case it will be automatically applied to all the links added to the model. Else it can be enabled only for the required links individually.

Node settings

When line routing is enabled make sure to set the TreatAsObstacle property of the objects to true, to avoid the links running over them. If not set for an object, then that node will not be considered as an obstacle and the link will pass over it.

Programmatically it can be set as follows: 

{% endhighlight %}

{% highlight c# %}



circle.TreatAsObstacle = true;


{% endhighlight %}
{% highlight vbnet %}



circle.TreatAsObstacle = True

{% endhighlight %}

In the above code snippets, the TreatAsObstacle property is set to the circle object.

## Grouping

A group is a node that acts as a transparent container for other nodes. A group is a composite node that controls a set of child nodes. The bounding rectangle of a group is the union of the bounds of its children. The group renders itself by iterating through its children and rendering them. Child nodes cannot be selected or manipulated individually. Members of the group are added and removed through the ICompositeNode interface.

The following code snippet creates a group with two nodes.



{% highlight c# %}



//Node 1

Syncfusion.Windows.Forms.Diagram.Rectangle nodeRect = new Syncfusion.Windows.Forms.Diagram.Rectangle(50, 100, 125, 75);

nodeRect.FillStyle.Color = Color.FromArgb(255, 223, 189);

nodeRect.LineStyle.LineColor = Color.Orange;

Syncfusion.Windows.Forms.Diagram.Label lbl = new Syncfusion.Windows.Forms.Diagram.Label(nodeRect, "Rectangle");

lbl.FontStyle.Size = 12;

lbl.FontStyle.Bold = true;

nodeRect.Labels.Add(lbl);



//Node 2

Syncfusion.Windows.Forms.Diagram.Rectangle nodeRect1 = new Syncfusion.Windows.Forms.Diagram.Rectangle(150, 100, 125, 75);

nodeRect1.FillStyle.Color = Color.FromArgb(255, 223, 189);

nodeRect1.LineStyle.LineColor = Color.Orange;

Syncfusion.Windows.Forms.Diagram.Label lbl1 = new Syncfusion.Windows.Forms.Diagram.Label(nodeRect1, "Rectangle1");

lbl1.FontStyle.Size = 12;

lbl1.FontStyle.Bold = true;

nodeRect1.Labels.Add(lbl1);



//Grouping Nodes

Syncfusion.Windows.Forms.Diagram.Group grp = new Group();

grp.AppendChild(nodeRect);

grp.AppendChild(nodeRect1);

this.diagramControl1.Model.AppendChild(grp);


{% endhighlight %}
{% highlight vbnet %}



'Node 1

Dim nodeRect As Syncfusion.Windows.Forms.Diagram.Rectangle = New Syncfusion.Windows.Forms.Diagram.Rectangle(50, 100, 125, 75)

nodeRect.FillStyle.Color = Color.FromArgb(255, 223, 189)

nodeRect.LineStyle.LineColor = Color.Orange

Dim lbl As Syncfusion.Windows.Forms.Diagram.Label = New Syncfusion.Windows.Forms.Diagram.Label(nodeRect, "Rectangle")

lbl.FontStyle.Size = 12

lbl.FontStyle.Bold = True

nodeRect.Labels.Add(lbl)



'Node 2

Dim nodeRect1 As Syncfusion.Windows.Forms.Diagram.Rectangle = New Syncfusion.Windows.Forms.Diagram.Rectangle(150, 100, 125, 75)

nodeRect1.FillStyle.Color = Color.FromArgb(255, 223, 189)

nodeRect1.LineStyle.LineColor = Color.Orange

Dim lbl1 As Syncfusion.Windows.Forms.Diagram.Label = New Syncfusion.Windows.Forms.Diagram.Label(nodeRect1, "Rectangle1")

lbl1.FontStyle.Size = 12

lbl1.FontStyle.Bold = True

nodeRect1.Labels.Add(lbl1)



'Grouping Nodes

Dim grp As Syncfusion.Windows.Forms.Diagram.Group = New Syncfusion.Windows.Forms.Diagram.Group()

grp.AppendChild(nodeRect)

grp.AppendChild(nodeRect1)

Me.diagramWebControl1.Model.AppendChild(grp)

{% endhighlight %}

![](Customizing-Nodes_images/Customizing-Nodes_img4.jpeg)



The grouping of nodes can be performed using ready-made API.



{% highlight c# %}



//Method to Group the nodes

this.diagram1.Controller.Group();



'Method to UnGroup the nodes

this.diagram1.Controller.UnGroup();

{% endhighlight %}

{% highlight vbnet %}



//Method to Group the nodes

Me.diagram1.Controller.Group()



'Method to UnGroup the nodes

Me.diagram1.Controller.UnGroup()

{% endhighlight %}

## Label

A label is a text object that is attached to a node and is positioned relative to node coordinates. This enables you to format the label text.  You can also customize the appearance of the label. You can bind the node name to the label so that the name will be displayed as the label text. This can be achieved using the _PropertyBinding_ property.

The following formatting options are supports for the label text:

* WrapText
* HorizontalAlignment
* VerticalAlignment
* DirectionRightToLeft
* DirectionVertical
* TextCase
* NoClip
* LineLimit
* FitBlackBox
* MeasureTrailingSpace

The following options are supports for customizing the appearance of the label.

* BackGroundStyle
* FontColorStyle
* FontStyle

Use Case Scenarios

When you are drawing a Business Process Flow Diagram, using this support, you can name the node representing the stage. 

Tables for Properties and Methods


<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
Name</td><td>
Used to specify the name of a label.</td><td>
NA</td><td>
string</td><td>
NA</td></tr>
<tr>
<td>
FullName</td><td>
Used to specify the full name of a label. Label container’s name is prefixed with its name.</td><td>
NA</td><td>
string</td><td>
NA</td></tr>
<tr>
<td>
ReadOnly</td><td>
Used to add a flag indicating whether the text object is Read-only or not.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
Visible</td><td>
Specifies the visibility of the label.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
FontColorStyle</td><td>
Specifies the font color style.</td><td>
NA</td><td>
FillStyle</td><td>
NA</td></tr>
<tr>
<td>
BackgroundStyle</td><td>
Specifies the text background style.</td><td>
NA</td><td>
FillStyle</td><td>
NA</td></tr>
<tr>
<td>
Text</td><td>
Gets or sets the label text.</td><td>
NA</td><td>
String</td><td>
NA</td></tr>
<tr>
<td>
FontStyle</td><td>
Specifies the font style.</td><td>
NA</td><td>
FontStyle</td><td>
NA</td></tr>
<tr>
<td>
PropertyBinding</td><td>
Binds the text value of the label to the Text property.</td><td>
NA</td><td>
LabelPropertyBinding</td><td>
NA</td></tr>
<tr>
<td>
Size</td><td>
Gets or sets the label text size.</td><td>
NA</td><td>
SizeF</td><td>
NA</td></tr>
<tr>
<td>
SizeToNode</td><td>
Set the node size to label size. This can be enabled  if the node has only one label and label's position is center.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
UpdatePosition</td><td>
Gets or Sets whether default positioning has to be used.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
AdjustRotationAngle</td><td>
Gets or Sets whether the label should remain horizontal on rotation of the node.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
TextCase</td><td>
Gets or sets the case of the text in the label.</td><td>
NA</td><td>
TextCases</td><td>
NA</td></tr>
<tr>
<td>
HorizontalAlignment</td><td>
Gets or sets the horizontal alignment of the text.</td><td>
NA</td><td>
StringAlignment</td><td>
NA</td></tr>
<tr>
<td>
VerticalAlignment</td><td>
Gets or sets the vertical alignment of the text.</td><td>
NA</td><td>
StringAlignment</td><td>
NA</td></tr>
<tr>
<td>
FormatFlags</td><td>
Gets the flags used to format the text.</td><td>
NA</td><td>
StringFormatFlags</td><td>
NA</td></tr>
<tr>
<td>
WrapText</td><td>
Gets or sets a value indicating whether text should be wrapped, when it exceeds the width of the bounding box.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
DirectionRightToLeft</td><td>
Gets or sets a value indicating whether the text is right to left.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
DirectionVertical</td><td>
Gets or sets a value indicating whether the text is vertical.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
FitBlackBox</td><td>
Gets or sets a value indicating whether no part of any glyph overhangs the label bounds.</td><td>
NA</td><td>
Boolean</td><td>
NA</td></tr>
<tr>
<td>
LineLimit</td><td>
Gets or sets a value indicating whether only entire lines are laid out in the formatting rectangle.</td><td>
NA</td><td>
Boolean</td><td>
NA</td></tr>
<tr>
<td>
MeasureTrailingSpaces</td><td>
Gets or sets a value indicating whether space at the end of each line in calculations that measure the size of the text.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
NoClip</td><td>
Gets or sets a value indicating whether overhanging parts of glyphs and unwrapped text reaching outside the formatting rectangle are allowed to show.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
OffsetX</td><td>
Gets or sets the label offset x in percent relative to node's width from node's top left point.</td><td>
NA</td><td>
float</td><td>
NA</td></tr>
<tr>
<td>
OffsetY</td><td>
Gets or sets the label offset y in percent relative to node's width from node's top left point.</td><td>
NA</td><td>
float</td><td>
NA</td></tr>
<tr>
<td>
Position</td><td>
Gets or sets the position of the label. </td><td>
NA</td><td>
Position</td><td>
NA</td></tr>
</table>


### Methods


<table>
<tr>
<th>
Method </th><th>
Description </th><th>
Parameters </th><th>
Type </th><th>
Return Type </th><th>
Reference links </th></tr>
<tr>
<td>
GetPosition</td><td>
Gets the label position in the node coordinates.</td><td>
Empty</td><td>
NA</td><td>
PointF</td><td>
NA</td></tr>
<tr>
<td>
GetStringFormat</td><td>
Creates a StringFormat object that encapsulates the properties of the text object.</td><td>
Empty</td><td>
NA</td><td>
StringFormat</td><td>
NA</td></tr>
</table>


#### Adding a Label to an Application 

You can create label as illustrated in the following code example:



{% highlight c# %}

RoundRect node = new RoundRect(0, 0, 170, 100,MeasureUnits.Pixel);



            //Create a label with predefined position

            Syncfusion.Windows.Forms.Diagram.Label lbl_TopCenter = new Syncfusion.Windows.Forms.Diagram.Label(node, "Label_TopCenter");            

            //Position the label

            lbl_TopCenter.Position = Position.TopCenter; 

            /* Position enum has the values Center, TopLeft, TopCenter, TopRight, MiddleLeft, MiddleRight, BottomLeft, BottomCenter, BottomRight and Custom */



            //Apply font style

            lbl_TopCenter.FontStyle.Bold = true;

            lbl_TopCenter.FontStyle.Family = "Corbel";

            lbl_TopCenter.FontStyle.Size = 9;

            //Add the label to node's label collection

            node.Labels.Add(lbl_TopCenter);            



            //Create a label with custom position

            Syncfusion.Windows.Forms.Diagram.Label lbl_Custom = new Syncfusion.Windows.Forms.Diagram.Label(node, "Label_Custom");

            //Position the label

            lbl_Custom.Position = Position.Custom;

            lbl_Custom.OffsetX = 0;

            lbl_Custom.OffsetY = 0;

            //Apply font style

            lbl_Custom.FontStyle.Bold = true;

            lbl_Custom.FontStyle.Family = "Corbel";

            lbl_Custom.FontStyle.Size = 9;

            //Format the label text

            lbl_Custom.HorizontalAlignment = StringAlignment.Center;

            lbl_Custom.VerticalAlignment = StringAlignment.Far;

            //WrapText is set to true by default



            //Add the label to node's label collection

            node.Labels.Add(lbl_Custom);

            //Add the node to diagram model

            diagram1.Model.AppendChild(node);  

{% endhighlight %}



{% highlight vbnet %}

Dim node As New RoundRect(0, 0, 170, 100,MeasureUnits.Pixel)



'Create a label with predefined position

Dim lbl_TopCenter As New Syncfusion.Windows.Forms.Diagram.Label(node, "Label_TopCenter")

'Position the label

lbl_TopCenter.Position = Position.TopCenter

' Position enum has the values Center, TopLeft, TopCenter, TopRight, MiddleLeft, MiddleRight, BottomLeft, BottomCenter, BottomRight and Custom



'Apply font style

lbl_TopCenter.FontStyle.Bold = True

lbl_TopCenter.FontStyle.Family = "Corbel"

lbl_TopCenter.FontStyle.Size = 9

'Add the label to node's label collection

node.Labels.Add(lbl_TopCenter)



'Create a label with custom position

Dim lbl_Custom As New Syncfusion.Windows.Forms.Diagram.Label(node, "Label_Custom")

'Position the label

lbl_Custom.Position = Position.Custom

lbl_Custom.OffsetX = 0

lbl_Custom.OffsetY = 0

'Apply font style

lbl_Custom.FontStyle.Bold = True

lbl_Custom.FontStyle.Family = "Corbel"

lbl_Custom.FontStyle.Size = 9

'Format the label text

lbl_Custom.HorizontalAlignment = StringAlignment.Center

lbl_Custom.VerticalAlignment = StringAlignment.Far

'WrapText is true by default



'Add the label to node's label collection

node.Labels.Add(lbl_Custom)

'Add the node to diagram model

diagram1.Model.AppendChild(node)


{% endhighlight %}




![](Customizing-Nodes_images/Customizing-Nodes_img5.png)

## Label Orientation

This feature lets the user to specify the orientation of a node label. There are two orientation modes, Horizontal, which displays the label horizontally, and Auto, which rotates the label based on the node or connector rotation angle.


<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
Orientation</td><td>
Gets or sets the orientation of the label.</td><td>
Enum</td></tr>
</table>


The following code shows how to set the orientation of the label to horizontal:



{% highlight c# %}

Syncfusion.Windows.Forms.Diagram.Label label = new Syncfusion.Windows.Forms.Diagram.Label(node, "Orientation");

//Sets the orientation of the label as horizontal.

label.Orientation = LabelOrientation.Horizontal;

node.Labels.Add(label);

{% endhighlight %}

{% highlight vbnet %}

Dim label As New Syncfusion.Windows.Forms.Diagram.Label(node, "Orientation")

'Sets the orientation of the label as horizontal.

label.Orientation = LabelOrientation.Horizontal

node.Labels.Add(label)

{% endhighlight %}

![C:/Users/amsathm/Desktop/Horizontal orientation.png](Customizing-Nodes_images/Customizing-Nodes_img6.png)





![C:/Users/amsathm/Desktop/Automatic Orientation.png](Customizing-Nodes_images/Customizing-Nodes_img7.png)



