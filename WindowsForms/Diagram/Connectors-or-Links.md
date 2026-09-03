---
layout: post
title: Connectors or Links in Windows Forms Diagram | Syncfusion®
description: Learn about connectors and links in the Syncfusion® Windows Forms Diagram control, including routing, bridging, decorators, and customization options.
platform: windowsforms
control: Diagram
documentation: ug
---

# Connectors or Links in Windows Forms Diagram

## Decorators

Decorators are arrowheads/endcaps set via the `DecoratorShape` enumeration. Connectors and lines support the following decorator shapes:

* Circle
* CircleCross
* CircleReverseArrow
* Cross45
* Cross90
* CrossReverseArrow
* Custom
* Diamond
* DimensionLine
* DoubleArrow
* DoubleCross
* Filled45Arrow
* Filled60Arrow
* FilledCircle
* FilledDiamond
* FilledFancyArrow
* FilledSquare
* None
* Open45Arrow
* Open60Arrow
* OpenFancyArrow
* ReverseArrow
* ReverseDoubleArrow
* Square


## Connecting Two Nodes with Line Connector

The following code example illustrates how to create links between two nodes.


{% tabs %}
{% highlight c# %}

protected void Page_Load(object sender, EventArgs e)
{
	Syncfusion.Windows.Forms.Diagram.Ellipse ellipse = new Syncfusion.Windows.Forms.Diagram.Ellipse(10, 10, 110, 70);
	Syncfusion.Windows.Forms.Diagram.Rectangle rectangle = new Syncfusion.Windows.Forms.Diagram.Rectangle(300, 50, 50, 80);
	Syncfusion.Windows.Forms.Diagram.LineConnector lineconnector = new Syncfusion.Windows.Forms.Diagram.LineConnector(new System.Drawing.PointF(10, 200), new System.Drawing.PointF(300, 250));
	this.diagram1.Model.AppendChild(ellipse);
	this.diagram1.Model.AppendChild(rectangle);
	ellipse.CentralPort.TryConnect(lineconnector.HeadEndPoint);
	rectangle.CentralPort.TryConnect(lineconnector.TailEndPoint);
	this.diagram1.Model.AppendChild(lineconnector);
}

{% endhighlight %}

{% highlight vb %}

Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
Dim ellipse As New Syncfusion.Windows.Forms.Diagram.Ellipse(10, 10, 110, 70)
Dim rectangle As New Syncfusion.Windows.Forms.Diagram.Rectangle(300, 50, 50, 80)
Dim lineconnector As New Syncfusion.Windows.Forms.Diagram.LineConnector(New System.Drawing.PointF(10, 200), New System.Drawing.PointF(300, 250))
Me.diagram1.Model.AppendChild(ellipse)
Me.diagram1.Model.AppendChild(rectangle)
ellipse.CentralPort.TryConnect(lineconnector.HeadEndPoint)
rectangle.CentralPort.TryConnect(lineconnector.TailEndPoint)
Me.diagram1.Model.AppendChild(lineconnector)
End Sub

{% endhighlight %}
{% endtabs %}

![Connecting Two Nodes with Line Connector](Connectors-or-Links_images/Connectors-or-Links_img1.jpeg)


## Customizing Connector Appearance

You can change the appearance of the connectors using its properties through code. The following code example illustrates the line properties.

The following table lists the properties used to customize a connector's decorators and line style:

<table>
<tr>
<th>Property</th><th>Description</th><th>Data Type</th></tr>
<tr>
<td>DecoratorShape</td><td>Gets or sets the shape of the decorator at the head or tail end of the connector.</td><td>DecoratorShape</td></tr>
<tr>
<td>Container</td><td>Reference to the container node the decorator is attached to.</td><td>Node</td></tr>
<tr>
<td>GraphicsPath</td><td>Gets the graphics path that defines the visual representation of the decorator.</td><td>GraphicsPath</td></tr>
<tr>
<td>FillStyle</td><td>Properties for creating a brush to fill the decorator with.</td><td>FillStyle</td></tr>
<tr>
<tr>
<td>Size</td><td>Gets or sets the width and height of the decorator.</td><td>SizeF</td></tr>
<tr>
<td>IsPathClosed</td><td>Gets a value indicating whether the decorator graphics path is closed (protected).</td><td>bool</td></tr>
<tr>
<td>LineStyle</td><td>Line drawing properties for the connector; determines the configuration of the pen used to outline the connector.</td><td>LineStyle</td></tr>
</table>


{% tabs %}
{% highlight c# %}

protected void Page_Load(object sender, EventArgs e)
{
	Syncfusion.Windows.Forms.Diagram.Ellipse ellipse = new Syncfusion.Windows.Forms.Diagram.Ellipse(160, 60, 100, 60);
	Syncfusion.Windows.Forms.Diagram.Rectangle rectangle = new Syncfusion.Windows.Forms.Diagram.Rectangle(150, 250, 120, 100);
	Syncfusion.Windows.Forms.Diagram.LineConnector lineconnector = new Syncfusion.Windows.Forms.Diagram.LineConnector(new System.Drawing.PointF(10, 200), new System.Drawing.PointF(300, 250));
	this.diagram1.Model.AppendChild(ellipse);
	this.diagram1.Model.AppendChild(rectangle);
	ellipse.CentralPort.TryConnect(lineconnector.TailEndPoint);
	rectangle.CentralPort.TryConnect(lineconnector.HeadEndPoint);
	this.diagram1.Model.AppendChild(lineconnector);
	lineconnector.HeadDecorator.DecoratorShape = DecoratorShape.Filled45Arrow;
	lineconnector.LineStyle.LineColor = Color.MidnightBlue;
	lineconnector.HeadDecorator.FillStyle.Color = Color.MidnightBlue;
	lineconnector.HeadDecorator.Size = new SizeF(10, 5);
}


{% endhighlight %}
{% highlight vb %}

Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
Dim ellipse As New Syncfusion.Windows.Forms.Diagram.Ellipse(160, 60, 100, 60)
Dim rectangle As New Syncfusion.Windows.Forms.Diagram.Rectangle(150, 250, 120, 100)
Dim lineconnector As New Syncfusion.Windows.Forms.Diagram.LineConnector(New System.Drawing.PointF(10, 200), New System.Drawing.PointF(300, 250))
Me.diagram1.Model.AppendChild(ellipse)
Me.diagram1.Model.AppendChild(rectangle)
ellipse.CentralPort.TryConnect(lineconnector.TailEndPoint)
rectangle.CentralPort.TryConnect(lineconnector.HeadEndPoint)
Me.diagram1.Model.AppendChild(lineconnector)
lineconnector.HeadDecorator.DecoratorShape = DecoratorShape.Filled45Arrow
lineconnector.LineStyle.LineColor = Color.MidnightBlue
lineconnector.HeadDecorator.FillStyle.Color = Color.MidnightBlue
lineconnector.HeadDecorator.Size = New SizeF(10, 5)
End Sub

{% endhighlight %}
{% endtabs %}

![Customizing Connector Appearance](Connectors-or-Links_images/Connectors-or-Links_img2.jpeg)


## Rounded Corner

You can change the look of connectors ([Orthogonal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.OrthogonalConnector.html#), [OrgLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.OrgLineConnector.html#), [Polyline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Polyline.html#)) by providing rounded corners to connectors.

The [EnableRoundedCorner](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_EnableRoundedCorner) property is used to enable rounded corners for a connector, and the [CurveRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.OrgLineConnector.html#Syncfusion_Windows_Forms_Diagram_OrgLineConnector_CurveRadius) connector property is used to set the radius for the rounded corner curve respectively.

### Use Case Scenario

This is used to change the visual style of connectors.


<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Data Type</th><th>
Default Value</th></tr>
<tr>
<td>
{{'[EnableRoundedCorner](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_EnableRoundedCorner)'| markdownify }}</td><td>
Enables or disables rounded corner for a connector.</td><td>
bool</td><td>
false</td></tr>
<tr>
<td>
{{'[CurveRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.OrgLineConnector.html#Syncfusion_Windows_Forms_Diagram_OrgLineConnector_CurveRadius)'| markdownify }}</td><td>
Gets or sets the radius for the rounded corner curve of a connector. Valid values are non-negative floats.</td><td>
float</td><td>
0</td></tr>
</table>


The following code illustrates how to change the look of a connector by using the [EnableRoundedCorner](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_EnableRoundedCorner) and [CurveRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.OrgLineConnector.html#Syncfusion_Windows_Forms_Diagram_OrgLineConnector_CurveRadius) properties.


{% tabs %}
{% highlight c# %}

OrthogonalConnector orthogonal = new OrthogonalConnector(new PointF(100, 100), new PointF(300, 300));

// Enables rounded corner for the connector.
orthogonal.EnableRoundedCorner = true;

// Sets the radius of the rounded corner curve.
orthogonal.CurveRadius = 10;

diagram1.Model.AppendChild(orthogonal);

{% endhighlight %}
{% highlight vb %}

Dim orthogonal As New OrthogonalConnector(New PointF(100, 100), New PointF(300, 300))

'Enables rounded corner for the connector.
orthogonal.EnableRoundedCorner = True

'Sets the radius of the rounded corner curve.
orthogonal.CurveRadius = 10

diagram1.Model.AppendChild(orthogonal)

{% endhighlight %}
{% endtabs %}

![Connectors or Links images](Connectors-or-Links_images/Connectors-or-Links_img3.png)


## Line Bridging

Line bridging provides the visual effect such that the links jump over other links that are found in its way with lower [Z-order](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_ZOrder), preventing the links from intersecting each other and making the connections clearer. The connector will also create the same visual effect when it jumps over any port. This is done by enabling the [LineBridgingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineBridgingEnabled) property. Default value is _false_.



![Line-Bridging image](Connectors-or-Links_images/Line-Bridging_img1.jpeg)





The below table lists the properties which controls the appearance of the bridge.


<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Default Value</th></tr>
<tr>
<td>
{{'[LineBridgingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineBridgingEnabled)'| markdownify }}</td><td>
Enables or disables line bridging for a connector or the diagram.</td><td>
false</td></tr>
<tr>
<td>
{{'[LineBridgeSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_LineBridgeSize)'| markdownify }}</td><td>
Allows to set the size of the bridge when the links intersect each other.</td><td>
16</td></tr>
<tr>
<td>
{{'[BridgeStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_BridgeStyle)'| markdownify }}</td><td>
Specifies the type of bridge to be applied. The value when set, applies to all the links that are drawn on the diagram. The links will bridge over the other link only when its {{'[Z-order](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_ZOrder)'| markdownify }} value is high. The options include the following:
<ul><li> Arc</li><li> Gap</li><li> Square</li><li> Side2</li><li>Side3</li><li>Side4</li><li>Side5</li><li>Side6</li><li>Side7</li></ul></td><td>
Arc</td></tr>
</table>



Programmatically it can be set as follows:


{% tabs %}
{% highlight c# %}

this.diagram1.Model.LineBridgeSize = 5;

//enabling for model
this.diagram1.Model.LineBridgingEnabled = true;

LineConnector link = new LineConnector(PointF.Empty, new PointF(200,200));

//enabling for link object
link.LineBridgingEnabled = true;

this.diagram1.Model.BridgeStyle = BridgeStyle.Square;

{% endhighlight %}
{% highlight vb %}

Me.diagram1.Model.LineBridgeSize = 5

'enabling for model
Me.diagram1.Model.LineBridgingEnabled = True

Dim link As LineConnector = New LineConnector(PointF.Empty, New PointF(200, 200))

'enabling for link object
link.LineBridgingEnabled = True

Me.diagram1.Model.BridgeStyle = BridgeStyle.Square

{% endhighlight %}
{% endtabs %}

N> In the above code snippets, link refers to the instance of the Link node.

## Line Routing

When a link is drawn between two nodes, by enabling the [LineRoutingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineRoutingEnabled) property of that link and the diagram view, and if any other node is found in between them, the line will be automatically re-routed around those nodes.


<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
{{'[LineRoutingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineRoutingEnabled)'| markdownify }}</td><td>
Specifies whether the links must be re-routed when nodes are found in the path. Default value is false.</td></tr>
</table>


Programmatically it can be set as follows: 


{% tabs %}
{% highlight c# %}

//enabling for model
this.diagram1.Model.LineRoutingEnabled = true;

LineConnector link = new LineConnector(PointF.Empty, new PointF(200,200));
//enabling for link object
link.LineRoutingEnabled = true;

{% endhighlight %}
{% highlight vb %}

'enabling for model
Me.diagram1.Model.LineRoutingEnabled = True

Dim link As LineConnector = New LineConnector(PointF.Empty, New PointF(200, 200))
'enabling for link object
link.LineRoutingEnabled = True

{% endhighlight %}
{% endtabs %}

N>  In the above code snippet, link refers to the instance of the Link node.
N>
N>  Only when [LineRoutingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineRoutingEnabled) property is set to true, [LineRouter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_LineRouter) properties will be enabled.



### Distance and Routing Mode Settings

To customize the distance between the connectors and the obstacles, and the type of routing to use, the [LineRouter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_LineRouter) collection property should be handled. The below properties are available for the [LineRouter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_LineRouter) Collection property.



<table>
<tr>
<th>
Line Router Property</th><th>
Description</th><th>
Default Value</th></tr>
<tr>
<td>
{{'[DistanceToObstacles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.LineRouter.html#Syncfusion_Windows_Forms_Diagram_LineRouter_DistanceToObstacles)'| markdownify }}</td><td>
Specifies the distance from routing connector to the obstacle.</td><td>
10</td></tr>
<tr>
<td>
{{'[RoutingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.LineRouter.html#Syncfusion_Windows_Forms_Diagram_LineRouter_RoutingMode)'| markdownify }}</td><td>
Specifies the routing mode. The options include Inactive (routing disabled), Automatic (links re-routed automatically around obstacles), and SemiAutomatic (links re-routed only on user interaction).</td><td>
Inactive</td></tr>
</table>


Programmatically it can be set as follows.


{% tabs %}
{% highlight c# %}

this.diagram1.Model.LineRouter.DistanceToObstacles = 20;
this.diagram1.Model.LineRouter.RoutingMode = RoutingMode.Automatic;

{% endhighlight %}
{% highlight vb %}

Me.diagram1.Model.LineRouter.DistanceToObstacles = 20
Me.diagram1.Model.LineRouter.RoutingMode = RoutingMode.Automatic

{% endhighlight %}
{% endtabs %}

The [LineBridgingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineBridgingEnabled), [LineRoutingEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.ConnectorBase.html#Syncfusion_Windows_Forms_Diagram_ConnectorBase_LineRoutingEnabled) properties can be set for the diagram, in which case it will be automatically applied to all the links added to the model. Else it can be enabled only for the required links individually.

### Marking Nodes as Obstacles

When line routing is enabled, make sure to set the [TreatAsObstacle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_TreatAsObstacle) property of the objects to true, to avoid the links running over them. The default value is _false_. If not set for an object, then that node will not be considered as an obstacle and the link will pass over it.

<table>
<tr>
<th>
Property</th><th>
Description</th><th>
Default Value</th></tr>
<tr>
<td>
{{'[TreatAsObstacle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_TreatAsObstacle)'| markdownify }}</td><td>
Gets or sets a value indicating whether the node should be treated as an obstacle for line routing.</td><td>
false</td></tr>
</table>

Programmatically it can be set as follows:

{% tabs %}
{% highlight c# %}

circle.TreatAsObstacle = true;

{% endhighlight %}
{% highlight vb %}

circle.TreatAsObstacle = True

{% endhighlight %}
{% endtabs %}

In the above code snippets, the [TreatAsObstacle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Node.html#Syncfusion_Windows_Forms_Diagram_Node_TreatAsObstacle) property is set to the circle object.
