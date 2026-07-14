---
layout: post
title: Applying Custom Renderer to the Clock in Windows Forms | Syncfusion
description: Learn about Applying Custom Renderer to the Clock Control support in Syncfusion Windows Forms Clock control and more details.
platform: WindowsForms
control: Clock-Control-for-Windows-Forms
documentation: ug
---

# Applying Custom Renderer to the Clock Control in Windows Forms

## Customization of rendering by overriding the method

The [Clock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html) control can be customized by applying a custom renderer.

{% tabs %}
{% highlight C# %}
using Syncfusion.Windows.Forms.Tools;

CustomRenderer renderer = new CustomRenderer();
this.clock1.Renderer = renderer;
public class CustomRenderer : ClockRenderer
{
    public override void DrawInterior(Graphics g, float thickness, PointF startPoint, PointF endPoint, Color color, string sender)
    {
        if (sender == "SecondsHand")
        {
            g.SmoothingMode = SmoothingMode.AntiAlias;
            Pen p = new Pen(color, thickness + thickness);
            p.StartCap = LineCap.SquareAnchor;
            p.EndCap = LineCap.ArrowAnchor;
            g.DrawLine(p, startPoint, endPoint);
            p.Dispose();
        }
        else if (sender == "MinutesHand")
        {
            g.SmoothingMode = SmoothingMode.AntiAlias;
            Pen p = new Pen(color, thickness + thickness);
            p.StartCap = LineCap.SquareAnchor;
            p.EndCap = LineCap.ArrowAnchor;
            g.DrawLine(p, startPoint, endPoint);
            p.Dispose();
        }
        else if (sender == "HoursHand")
        {
            g.SmoothingMode = SmoothingMode.AntiAlias;
            Pen p = new Pen(color, thickness + thickness);
            p.StartCap = LineCap.SquareAnchor;
            p.EndCap = LineCap.ArrowAnchor;
            g.DrawLine(p, startPoint, endPoint);
            p.Dispose();
        }
        else
        {
            g.SmoothingMode = SmoothingMode.AntiAlias;
            Pen p = new Pen(color, 5 );
            p.DashStyle = DashStyle.Dot;
            g.DrawLine(p, startPoint, endPoint);
            p.Dispose();
        }
    }
}
{% endhighlight %}
{% highlight VB %}
Imports Syncfusion.Windows.Forms.Tools

Private renderer As New CustomRenderer()
Me.clock1.Renderer = renderer

Public Class CustomRenderer
    Inherits ClockRenderer

    Public Overrides Sub DrawInterior(ByVal g As Graphics, ByVal thickness As Single, ByVal startPoint As PointF, ByVal endPoint As PointF, ByVal color As Color, ByVal sender As String)
        If sender = "SecondsHand" Then
            g.SmoothingMode = SmoothingMode.AntiAlias
            Dim p As New Pen(color, thickness + thickness)
            p.StartCap = LineCap.SquareAnchor
            p.EndCap = LineCap.ArrowAnchor
            g.DrawLine(p, startPoint, endPoint)
            p.Dispose()
        ElseIf sender = "MinutesHand" Then
            g.SmoothingMode = SmoothingMode.AntiAlias
            Dim p As New Pen(color, thickness + thickness)
            p.StartCap = LineCap.SquareAnchor
            p.EndCap = LineCap.ArrowAnchor
            g.DrawLine(p, startPoint, endPoint)
            p.Dispose()
        ElseIf sender = "HoursHand" Then
            g.SmoothingMode = SmoothingMode.AntiAlias
            Dim p As New Pen(color, thickness + thickness)
            p.StartCap = LineCap.SquareAnchor
            p.EndCap = LineCap.ArrowAnchor
            g.DrawLine(p, startPoint, endPoint)
            p.Dispose()
        Else
            g.SmoothingMode = SmoothingMode.AntiAlias
            Dim p As New Pen(color, 5)
            p.DashStyle = DashStyle.Dot
            g.DrawLine(p, startPoint, endPoint)
            p.Dispose()
        End If
    End Sub
End Class
{% endhighlight %}
{% endtabs %}

![Custom clock](Overview_images/Overview_img99.png) 

