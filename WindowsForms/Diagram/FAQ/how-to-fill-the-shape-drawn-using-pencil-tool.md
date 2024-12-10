---
layout: post
title: How to fill the shape drawn using pencil tool | Diagram | Syncfusion®
description: This page explains about how to create shape with filled background appearance using pencil tool feature available in the Syncfusion® WinForms Diagram control.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to fill the shape drawn using pencil tool

By default, when you draw the shape using the pencil tool, it will be created as `PolyLineNode` and you cannot define the fill style for polyline node. To draw a shape with filled background appearance using the pencil tool, create a custom tool by creating a new class with inheriting 'PencilTool' class and override the `CreateNode` method to draw the shape with filled background appearance.

The following code example illustrates how to override the `CreateNode` method by creating the new class with inheriting 'PencilTool' class.

{% tabs %}

{% highlight c# %}

public class CustomPencilTool : PencilTool
{

public CustomPencilTool(DiagramController controller)
: base(controller)
{
this.Name = "CustomPencilTool";
this.ToolCursor = this.ActionCursor = Resources.Cursors.Pencil;
}

/// <summary>
/// Draw the Specified range of Points into Line.
/// </summary>
/// <param name="gfx">Graphics to draw on.</param>
public override void Draw(System.Drawing.Graphics gfx)
{
Pen pen = new Pen(Color.Black);
gfx.DrawLines(pen, this.Points);
}

protected override Node CreateNode(PointF[] pts)
{
Polygon poly = new Polygon(pts);
return poly;
}

}

{% endhighlight %}

{% highlight vbnet %}

Public Class CustomPencilTool Inherits PencilTool

Public Sub New(ByVal controller As DiagramController) 
MyBase.New(controller)
Me.Name = "CustomPencilTool"
Me.ActionCursor = Resources.Cursors.Pencil
Me.ToolCursor = Me.ActionCursor
End Sub

''' <summary>
''' Draw the Specified range of Points into Line.
''' </summary>
''' <param name="gfx">Graphics to draw on.</param>
Public Overrides Sub Draw(ByVal gfx As System.Drawing.Graphics)
Dim pen As New Pen(Color.Black)
gfx.DrawLines(pen, Me.Points)
End Sub

Protected Overrides Function CreateNode(ByVal pts() As PointF) As Node
Dim poly As New Polygon(pts)
Return poly
End Function

End Class

{% endhighlight %}

{% endtabs %}

The following code example illustrates how to register the above custom created tool in diagram’s controller and activating it.

{% tabs %}

{% highlight c# %}

//Registering the custom tool...
diagram1.Controller.RegisterTool(new CustomPencilTool(diagram1.Controller));

//Activating the custom tool...
diagram1.Controller.ActivateTool("CustomPencilTool");

{% endhighlight %}

{% highlight vbnet %}
'Registering the custom tool...
diagram1.Controller.RegisterTool(New CustomPencilTool(diagram1.Controller))

'Activating the custom tool...
diagram1.Controller.ActivateTool("CustomPencilTool")
{% endhighlight %}

{% endtabs %}