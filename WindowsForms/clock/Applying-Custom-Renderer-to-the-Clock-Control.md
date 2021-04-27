---
layout: post
title: Applying Custom Renderer to the Clock Control in Windows Forms Clock control | Syncfusion
description: Learn about Applying Custom Renderer to the Clock Control support in Syncfusion Windows Forms Clock control and more details.
platform: WindowsForms
control: Clock-Control-for-Windows-Forms
documentation: ug
---

# Applying Custom Renderer to the Clock Control in Windows Forms Clock

## Customization of rendering by overriding the method

[Clock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html) control enables you to customize the [Clock](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.Clock.html) control by applying the custom renderer.

{% tabs %}
{% highlight C# %}
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
Private renderer As New CustomRenderer()
Me.clock1.Renderer = renderer
public class CustomRenderer : ClockRenderer
public override void DrawInterior(Graphics g, Single thickness, PointF startPoint, PointF endPoint, Color color, String sender)
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
{% endhighlight %}
{% endtabs %}

![Custom clock](Overview_images/Overview_img99.png) 

