---
layout: post
title: How To Highlight a Particular Node At Run time | Diagram | Windows Forms | Syncfusion
description: how to highlight a particular node at run-time
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Highlight a Particular Node At Run-time

A diagram node can be highlighted at run time using the mouse move actions. Using the Controller.GetNodeUnderMouseMove method, we can get the corresponding node under mouse move. By changing the node's LineStyle and FillStyle effects, we can highlight the respective nodes.

{% tabs %}

{% highlight c# %}

Node m_globalNode;

Polygon m_polygonNode;

Color m_defaultColor;

private void diagram1_MouseMove(object sender, MouseEventArgs e)
{
    try
    {
        // Retrieves node under the mouse action
        Node node1 = (Node)this.diagram1.Controller.GetNodeUnderMouse(new Point(e.X, e.Y));

        if (m_polygonNode == null && node1 != null && (node1.Name.ToString() != "TextNode"))
        {
            toolTip1.SetToolTip(this.diagram1, node1.Name);
            toolTip1.Active = true;
            m_globalNode = node1;
            m_polygonNode = node1 as Polygon;
            m_defaultColor = m_polygonNode.FillStyle.Color;
            this.timer1.Start();
        }
        else
        {
            this.toolTip1.Active = false;
            m_globalNode = null;
        }
    }

    catch
    {

    }
}

private void timer1_Tick( object sender, EventArgs e ) 
{

    // Convert node as polygon

    Polygon poly = m_globalNode as Polygon;

    Random r = new Random();

    if (poly != null)
    {
        //  Setting fillstyle for the ploygon

        poly.FillStyle.Color = Color.FromArgb(r.Next(255), r.Next(255), r.Next(255));

        m_globalNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Dash;

        m_globalNode.LineStyle.LineWidth = 3;
    }
    else
    {   
        // Resetting the node with default values

        m_polygonNode.FillStyle.Color = m_defaultColor;

        m_polygonNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Solid;

        m_polygonNode.LineStyle.LineWidth = 1;

        m_polygonNode = null;

        this.timer1.Stop();
    }
}

{% endhighlight %}

{% highlight vbnet %}

Private globalNode As Syncfusion.Windows.Forms.Diagram.Node

Private PolygonNode As Syncfusion.Windows.Forms.Diagram.Polygon

Public WithEvents timer1 As Timer

Private Sub diagram1_MouseMove(ByVal sender As Object, ByVal e As MouseEventArgs) Handles Diagram1.MouseMove

	 Try
		' Retrieves node under the mouse action
		Dim node1 As Node = CType(Me.diagram1.Controller.GetNodeUnderMouse(New Point(e.X, e.Y)), Node)

		If PolygonNode Is Nothing AndAlso node1 IsNot Nothing AndAlso (node1.Name.ToString() <> "TextNode") Then
			toolTip1.SetToolTip(Me.diagram1, node1.Name)
			toolTip1.Active = True
			globalNode = node1
			PolygonNode = TryCast(node1, Polygon)
			defaultColor = PolygonNode.FillStyle.Color
			Me.timer1.Start()
		Else
			Me.toolTip1.Active = False
			globalNode = Nothing
		End If

	Catch

	End Try

End Sub

Private Sub timer1_Tick(ByVal sender As Object, ByVal e As EventArgs) Handles timer1.Tick

    ' Convert node as polygon

	Dim poly As Polygon = TryCast(globalNode, Polygon)

	Dim r As New Random()

	If poly IsNot Nothing Then
		'  Setting fillstyle for the ploygon

		poly.FillStyle.Color = Color.FromArgb(r.Next(255), r.Next(255), r.Next(255))

		globalNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Dash

		globalNode.LineStyle.LineWidth = 3
	Else
		' Resetting the node with default values

		PolygonNode.FillStyle.Color = defaultColor

		PolygonNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Solid

		PolygonNode.LineStyle.LineWidth = 1

		PolygonNode = Nothing

		Me.timer1.Stop()
	End If

End Sub

{% endhighlight %}

{% endtabs %}

