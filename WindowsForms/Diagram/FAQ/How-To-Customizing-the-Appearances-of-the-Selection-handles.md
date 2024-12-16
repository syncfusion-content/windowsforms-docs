---
layout: post
title: Customizing the appearances of the Selection handles | Syncfusion®
description: Learn to customize selection handles in Syncfusion's Diagram control using the CustomHandleRenderer property to enhance your application's visuals.
platform: WindowsForms
control: Diagram
documentation: ug
---

# Customizing the appearances of the selection handles

The Diagram control provides an option to customize the selection handles of the nodes or connectors to change the appearance of the handles in the application side by using the Syncfusion.Windows.Forms.Diagram.View.CustomHandleRenderer property.

### Customizing the UserHandleRenderer class

You should customize the diagram UserHandleRenderer class, and then override the needed methods in that customized class to change the appearance of selection handles like resize handle, outline border, rotation handle, and pinpoint handle.
The following code example illustrates how to customize the UserHandleRenderer class.
 
{% tabs %}

{% highlight c# %}

public class CustomStyle1HandleRenderer : UserHandleRenderer
{

/// <summary>
/// selection outline border customization...
/// </summary>
public override void OutlineBoundingRectangle(Graphics gfx, Node node, bool bWithoutRotation)
{
base.OutlineBoundingRectangle(gfx, node, bWithoutRotation);
}
/// <summary>
/// selection rotation handle customization....
/// </summary>
public override void OnDrawRotationHandleInterior(Graphics gfx, Node node)
{
base.OnDrawRotationHandleInterior(gfx, node);
}

/// <summary>
/// Selection resize handle customization...
/// </summary>
public override void OnDrawResizeHandleShape(Graphics gfx, BoxPosition handle, Node node, RectangleF rectHandle)
{
base.OnDrawResizeHandleShape(gfx, handle, node, rectHandle);
}

}

{% endhighlight %}

{% highlight vbnet %}

Public Class CustomStyle1HandleRenderer
Inherits UserHandleRenderer

''' <summary>
''' selection outline border customization...
''' </summary>
Public Overrides Sub OutlineBoundingRectangle(ByVal gfx As Graphics, ByVal node As Node, ByVal bWithoutRotation As Boolean)
MyBase.OutlineBoundingRectangle(gfx, node, bWithoutRotation)
End Sub
''' <summary>
''' selection rotation handle customization....
''' </summary>
Public Overrides Sub OnDrawRotationHandleInterior(ByVal gfx As Graphics, ByVal node As Node)
MyBase.OnDrawRotationHandleInterior(gfx, node)
End Sub

''' <summary>
''' Selection resize handle customization...
''' </summary>
Public Overrides Sub OnDrawResizeHandleShape(ByVal gfx As Graphics, ByVal handle As BoxPosition, ByVal node As Node, ByVal rectHandle As RectangleF)
MyBase.OnDrawResizeHandleShape(gfx, handle, node, rectHandle)
End Sub

End Class
	
{% endhighlight %}

{% endtabs %}

### Rendering the custom selection’s outline borders

Here, a logic for customizing the selection’s outline border have been created and resized handles by overriding the OutlineBoundingRectangle method. The following code example illustrates how to render the outline border for the connector, if the connector has a single segment.

{% tabs %}

{% highlight c# %}

public override void OutlineBoundingRectangle(Graphics gfx, Node node, bool bWithoutRotation)
{
ConnectorBase connector = node as ConnectorBase;
if (!(connector != null) || (connector != null && (node as ConnectorBase).LineSegments.Count > 1))
base.OutlineBoundingRectangle(gfx, node, bWithoutRotation);
else
{
///line selection customization...
if (node is ConnectorBase && (node as ConnectorBase).LineSegments.Count == 1)
{
//append parent's transformations on given graphics - WITHOUT ROTATIONS
Matrix matrixTemp = node.GetTransformations();
RectangleF rcBoundingRectangle = RectangleF.Empty;
rcBoundingRectangle.Size = ((IUnitIndependent)node).GetSize(MeasureUnits.Pixel);
float lineHeight = connector.LineStyle.LineWidth;
// append flip transforms
node.AppendFlipTransforms(matrixTemp);

//Outline shape's bounding rectangle
// Save Graphics state
GraphicsState save = gfx.Save();
gfx.PixelOffsetMode = PixelOffsetMode.HighQuality;
gfx.SmoothingMode = SmoothingMode.AntiAlias;

gfx.MultiplyTransform(matrixTemp);

using (Pen pen = new Pen(Color.FromArgb(4, 106, 229), 2f / gfx.PageScale))
{
pen.DashStyle = DashStyle.Dash;
gfx.DrawRectangle(pen, 0, -lineHeight / 2, rcBoundingRectangle.Width, lineHeight);
}

gfx.Restore(save);
}
}
}
{% endhighlight %}

{% highlight vbnet %}

Public Overrides Sub OutlineBoundingRectangle(ByVal gfx As Graphics, ByVal node As Node, ByVal bWithoutRotation As Boolean)
Dim connector As ConnectorBase = TryCast(node, ConnectorBase)
If Not(connector IsNot Nothing) OrElse (connector IsNot Nothing AndAlso (TryCast(node, ConnectorBase)).LineSegments.Count > 1) Then
MyBase.OutlineBoundingRectangle(gfx, node, bWithoutRotation)
Else
'''line selection customization...
If TypeOf node Is ConnectorBase AndAlso (TryCast(node, ConnectorBase)).LineSegments.Count = 1 Then
'append parent's transformations on given graphics - WITHOUT ROTATIONS
Dim matrixTemp As Matrix = node.GetTransformations()
Dim rcBoundingRectangle As RectangleF = RectangleF.Empty
rcBoundingRectangle.Size = (CType(node, IUnitIndependent)).GetSize(MeasureUnits.Pixel)
Dim lineHeight As Single = connector.LineStyle.LineWidth
' append flip transforms
node.AppendFlipTransforms(matrixTemp)

'Outline shape's bounding rectangle
' Save Graphics state
Dim save As GraphicsState = gfx.Save()
gfx.PixelOffsetMode = PixelOffsetMode.HighQuality
gfx.SmoothingMode = SmoothingMode.AntiAlias

gfx.MultiplyTransform(matrixTemp)

Using pen As New Pen(Color.FromArgb(4, 106, 229), 2f / gfx.PageScale)
pen.DashStyle = DashStyle.Dash
gfx.DrawRectangle(pen, 0, -lineHeight / 2, rcBoundingRectangle.Width, lineHeight)
End Using

gfx.Restore(save)
End If
End If
End Sub

{% endhighlight %}

{% endtabs %}

### Rendering the custom selection’s resize handles

The OnDrawResizeHandleShape method can also override to customize the selection’s resize handles. The following code example demonstrates how to customize the selection’s resize handle in the application side.

{% tabs %}

{% highlight c# %}

public override void OnDrawResizeHandleShape(Graphics gfx, BoxPosition handle, Node node, RectangleF rectHandle)
{
using (Pen pen = new Pen(m_handleOutlineColor))
{
HandleRenderer handleRenderer = new HandleRenderer();
PointF[] pts = new PointF[1];
pts[0] = handleRenderer.GetHandlePosition(handle, new RectangleF(PointF.Empty, node.Size));
rectHandle = Geometry.CreateRect(pts[0], new SizeF(10, 10));
pen.Width = 2f / gfx.PageScale;
pen.DashStyle = DashStyle.Solid;
pen.Color = Color.White;

LinearGradientBrush br = new LinearGradientBrush(rectHandle, Color.Transparent, Color.Transparent, LinearGradientMode.Vertical);
ColorBlend clrBlend = new ColorBlend(5);
clrBlend.Colors = new Color[] { Color.FromArgb(4, 106, 229), Color.FromArgb(4, 106, 229), Color.FromArgb(4, 106, 229) };
clrBlend.Positions = new float[] { 0f, 0.5f, 1f };
br.InterpolationColors = clrBlend;

// Create brush to fill PinPoint interiors
using (Brush brush = br)
{
using (GraphicsPath gp = PathFactory.CreateEllipse(rectHandle))
{
gfx.FillPath(brush, gp);
// Outline handle
gfx.DrawPath(pen, gp);
}
}
}
}

{% endhighlight %}

{% highlight vbnet %}

Public Overrides Sub OnDrawResizeHandleShape(ByVal gfx As Graphics, ByVal handle As BoxPosition, ByVal node As Node, ByVal rectHandle As RectangleF)
Using pen As New Pen(m_handleOutlineColor)
Dim handleRenderer As New HandleRenderer()
Dim pts(0) As PointF
pts(0) = handleRenderer.GetHandlePosition(handle, New RectangleF(PointF.Empty, node.Size))
rectHandle = Geometry.CreateRect(pts(0), New SizeF(10, 10))

pen.Width = 2f / gfx.PageScale
pen.DashStyle = DashStyle.Solid
pen.Color = Color.White

Dim br As New LinearGradientBrush(rectHandle, Color.Transparent, Color.Transparent, LinearGradientMode.Vertical)
Dim clrBlend As New ColorBlend(5)
clrBlend.Colors = New Color() { Color.FromArgb(4, 106, 229), Color.FromArgb(4, 106, 229), Color.FromArgb(4, 106, 229) }
clrBlend.Positions = New Single() { 0f, 0.5f, 1f }
br.InterpolationColors = clrBlend

' Create brush to fill PinPoint interiors
Using brush As Brush = br
Using gp As GraphicsPath = PathFactory.CreateEllipse(rectHandle)
gfx.FillPath(brush, gp)
' Outline handle
gfx.DrawPath(pen, gp)
End Using
End Using
End Using
End Sub

{% endhighlight %}

{% endtabs %}


Finally, initialize the customized class and assign it to the Syncfusion.Windows.Forms.Diagram.View.CustomHandleRenderer property to change the appearance of the selection's handles in your application.

{% tabs %}

{% highlight c# %}
this.diagram1.View.CustomHandleRenderer = new CustomStyle1HandleRenderer();
{% endhighlight %}

{% highlight vbnet %}
Me.diagram1.View.CustomHandleRenderer = new CustomStyle1HandleRenderer()
{% endhighlight %}

{% endtabs %}