---
layout: post
title: How To Highlight a Particular Node At Run time | Syncfusion®
description: how to highlight a particular node at run-time
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Highlight a Particular Node At Run-time

A diagram node can be highlighted at run time using the mouse move actions. Using the Controller.GetNodeUnderMouseMove method, we can get the corresponding node under mouse move. By changing the node's LineStyle and FillStyle effects, we can highlight the respective nodes.

{% tabs %}

{% highlight c# %}

Node globalNode;

Polygon PolygonNode;

public Timer timer1;

private void diagram1_MouseMove( object sender, MouseEventArgs e ) {

    try

    {

        // Retrieves node under the mouse action

        Node node1 = ( Node )this.diagram1.Controller.GetNodeUnderMouse( new Point( e.X, e.Y ) );



        if ( node1 != null && ( node1.Name.ToString( ) != "TextNode" ) )

        {

            this.toolTip1.SetToolTip( this.diagram1, node1.Name );

            this.toolTip1.Active = true;



            globalNode = node1;

            PolygonNode = node1 as Polygon;

            defaultColor = PolygonNode.FillStyle.Color;



            this.timer1.Start( );

        }

        else

        {

            this.toolTip1.Active = false;

            this.timer1.Stop( );

        }

    }

    catch

    {

    }

}

private void timer1_Tick( object sender, EventArgs e ) {

    // Convert node as polygon

    Polygon poly = globalNode as Polygon;

    Random r = new Random( );

    if (poly != null)

    {

        //  Setting fillstyle for the ploygon

        poly.FillStyle.Color = Color.FromArgb(r.Next(255), r.Next(255), r.Next(255));

        globalNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Dash;

        globalNode.LineStyle.LineWidth = 3;



        // Resetting the node with default values

        poly.FillStyle.Color = defaultColor;

        globalNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Solid;

        globalNode.LineStyle.LineWidth = 1;

    }

}

{% endhighlight %}

{% highlight vbnet %}

Private globalNode As Syncfusion.Windows.Forms.Diagram.Node

Private PolygonNode As Syncfusion.Windows.Forms.Diagram.Polygon

Private m_defaultColor As Color

Private Sub diagram1_MouseMove(ByVal sender As Object, ByVal e As MouseEventArgs) Handles Diagram1.MouseMove

Try

		' Retrieves node under the mouse action

		Dim node1 As Syncfusion.Windows.Forms.Diagram.Node = CType(Me.Diagram1.Controller.GetNodeUnderMouse(New Point(e.X, e.Y)), Syncfusion.Windows.Forms.Diagram.Node)



		If Not node1 Is Nothing AndAlso (node1.Name.ToString() &lt;&gt; "TextNode") Then

			Me.toolTip1.SetToolTip(Me.diagram1, node1.Name)

			Me.toolTip1.Active = True



			globalNode = node1

			PolygonNode = CType(IIf(TypeOf node1 Is Syncfusion.Windows.Forms.Diagram.Polygon, node1, Nothing), Syncfusion.Windows.Forms.Diagram.Polygon)

			defaultColor = PolygonNode.FillStyle.Color



			Me.timer1.Start()

		Else

			Me.toolTip1.Active = False

			Me.timer1.Stop()

		End If

	Catch

End Try

End Sub

Private Sub timer1_Tick(ByVal sender As Object, ByVal e As EventArgs) Handles timer1.Tick

        ' Convert node as polygon

        Dim poly As Syncfusion.Windows.Forms.Diagram.Polygon = CType(IIf(TypeOf globalNode Is Syncfusion.Windows.Forms.Diagram.Polygon, globalNode, Nothing), Syncfusion.Windows.Forms.Diagram.Polygon)

        Dim r As Random = New Random()

        If Not poly Is Nothing Then

            '  Setting fillstyle for the ploygon

            poly.FillStyle.Color = Color.FromArgb(r.Next(255), r.Next(255), r.Next(255))

            globalNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Dash

            globalNode.LineStyle.LineWidth = 3



            ' Resetting the node with default values

            poly.FillStyle.Color = defaultColor

            globalNode.LineStyle.DashStyle = System.Drawing.Drawing2D.DashStyle.Solid

            globalNode.LineStyle.LineWidth = 1

        End If

End Sub

{% endhighlight %}

{% endtabs %}

A sample which demonstrates the node highlighting feature is available in the below sample installation location.

..\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Diagram.Windows\Samples\2.0\Getting Started\HighLightSample

