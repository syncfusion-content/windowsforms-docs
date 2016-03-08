---
layout: post
title: Connectors-or-Links | WindowsForms | Syncfusion
description: connectors or links
platform: WindowsForms
control: Diagram
documentation: ug
---

# Connectors or Links

Connectors and lines have the following decorators:

* Circle
* CircleCross
* CirclereverseArrow
* Cross45
* Cross90
* CrossreverseArrow
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



{% highlight c# %}



protected void Page_Load(object sender, EventArgs e)

{

    Syncfusion.Windows.Forms.Diagram.Ellipse ellipse = new Syncfusion.Windows.Forms.Diagram.Ellipse(10, 10, 110, 70);

    Syncfusion.Windows.Forms.Diagram.Rectangle rectangle = new Syncfusion.Windows.Forms.Diagram.Rectangle(300, 50, 50, 80);

    Syncfusion.Windows.Forms.Diagram.LineConnector lineconnector = new Syncfusion.Windows.Forms.Diagram.LineConnector(new System.Drawing.PointF(10, 200), new System.Drawing.PointF(300, 250));

    this.DiagramWebControl1.Model.AppendChild(ellipse);

    this.DiagramWebControl1.Model.AppendChild(rectangle);

    ellipse.CentralPort.TryConnect(lineconnector.HeadEndPoint);

    rectangle.CentralPort.TryConnect(lineconnector.TailEndPoint);

    this.DiagramWebControl1.Model.AppendChild(lineconnector);

}

{% endhighlight %}

{% highlight vbnet %}



Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    Dim ellipse As New Syncfusion.Windows.Forms.Diagram.Ellipse(10, 10, 110, 70)

    Dim rectangle As New Syncfusion.Windows.Forms.Diagram.Rectangle(300, 50, 50, 80)

    Dim lineconnector As New Syncfusion.Windows.Forms.Diagram.LineConnector(New System.Drawing.PointF(10, 200), New System.Drawing.PointF(300, 250))

    Me.DiagramWebControl1.Model.AppendChild(ellipse)

    Me.DiagramWebControl1.Model.AppendChild(rectangle)

    ellipse.CentralPort.TryConnect(lineconnector.HeadEndPoint)

    rectangle.CentralPort.TryConnect(lineconnector.TailEndPoint)



    Me.DiagramWebControl1.Model.AppendChild(lineconnector)

End Sub

{% endhighlight %}

![](Connectors-or-Links_images/Connectors-or-Links_img1.jpeg)





You can change the appearance of the connectors using its properties through code. The following code example illustrates the line properties.



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
{% highlight vbnet %}



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

![](Connectors-or-Links_images/Connectors-or-Links_img2.jpeg)



## Rounded Corner

You can now change the look of connectors (Orthogonal, Org line, Polyline) by providing rounded corners to connectors.

The EnableRoundedCorner is used to to enable rounded corner for a connector, and the CurveRadius connector property is used and set the radius for the rounded corner curve respectively.

### Use Case Scenario

This is used to change the visual style of connectors.


<table>
<tr>
<th>
Property</th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
EnableRoundedCorner</td><td>
Enables or disables rounded corner for a connector.</td><td>
bool</td></tr>
<tr>
<td>
CurveRadius</td><td>
Gets or sets the radius for the rounded corner curve of a connector.</td><td>
float</td></tr>
</table>


The following code illustrates how to change the look of a connector by using the EnableRoundedCorner and CurveRadius properties.



{% highlight c# %}

OrthogonalConnector orthogonal = new OrthogonalConnector(new PointF(100, 100), new PointF(300, 300));

// Enables rounded corner for the connector.

orthogonal.EnableRoundedCorner = true;

// Sets the radius of the rounded corner curve.

orthogonal.CurveRadius = 10;

diagram1.Model.AppendChild(orthogonal);

{% endhighlight %}

{% highlight vbnet %}

Dim orthogonal As New OrthogonalConnector(New PointF(100, 100), New PointF(300, 300))

'Enables rounded corner for the connector.

orthogonal.EnableRoundedCorner = True

'Sets the radius of the rounded corner curve.

orthogonal.CurveRadius = 10

diagram1.Model.AppendChild(orthogonal)

{% endhighlight %}


![](Connectors-or-Links_images/Connectors-or-Links_img3.png)


## Drawing Tool

Diagram control now provides a drawing tool to draw the Org line connector dynamically during run time.

### Use Case Scenario

The OrgLineConnectorTool is used to draw the Org line connector dynamically.

The following code illustrates how to activate the Org line connector tool:



{% highlight c# %}

// Activates the Org line connector tool.

diagram1.Controller.ActivateTool("OrgLineConnectorTool");

{% endhighlight %}

{% highlight vbnet %}

'Activates the Org line connector tool.

diagram1.Controller.ActivateTool("OrgLineConnectorTool")

{% endhighlight %}

![](Connectors-or-Links_images/Connectors-or-Links_img4.png)

