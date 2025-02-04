---
layout: post
title: How to customize Toggle Button styling | WindowsForms | Syncfusion®
description: how to customize styling in Syncfusion® Windows Forms Toggle Button control, its elements and more details.
platform: windowsforms
control: Toggle Button
documentation: ug
---

# How to customize Toggle Button styling

You can customize the appearance of the Toggle Button by using the IToggleButtonRenderer. The following code example illustrates how to achieve iOS platform look-alike Toggle Button.

{% tabs %}
{% highlight c# %}

StyledRenderer styleRenderer1 = new StyledRenderer();
toggleButton1.Renderer = styleRenderer1;
public class StyledRenderer : IToggleButtonRenderer
{
    private ToggleButton toggleButton;
    public void DrawButton(PaintEventArgs e, ToggleButtonState toggleState, DisplayType displayMode, Font font, ActiveStateCollection activeState, InactiveStateCollection inactiveState, RightToLeft righttoLeft, bool isMouseHover, ToggleButton toggleButton)
    {
        string displaytext = toggleState == ToggleButtonState.Active ? activeState.Text : inactiveState.Text;
        SizeF textsize = e.Graphics.MeasureString(displaytext, font);
        Rectangle controlrect = new Rectangle(e.ClipRectangle.X+1, e.ClipRectangle.Y+1, e.ClipRectangle.Width - 4, e.ClipRectangle.Height - 4);
        e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
        GraphicsPath gp = new GraphicsPath();
        using (LinearGradientBrush br = new LinearGradientBrush(e.ClipRectangle, ColorTranslator.FromHtml("#007feb"), ColorTranslator.FromHtml("#51a7f2"), LinearGradientMode.Vertical))
        {
            if (controlrect.Height > 1)
            {
                gp.AddArc(controlrect.X, controlrect.Y, controlrect.Height, controlrect.Height, 180, 90);
                gp.AddArc(controlrect.X + controlrect.Width - controlrect.Height, controlrect.Y, controlrect.Height, controlrect.Height, 270, 90);
                gp.AddArc(controlrect.X + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 0, 90);
                gp.AddArc(controlrect.X, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 90, 90);
                gp.CloseFigure();
                e.Graphics.DrawPath(new Pen(ColorTranslator.FromHtml("#002f69"), 2), gp);
            }
        }
        GraphicsPath gp1 = new GraphicsPath();
        using (LinearGradientBrush br = new LinearGradientBrush(e.ClipRectangle, ColorTranslator.FromHtml("#007feb"), ColorTranslator.FromHtml("#51a7f2"), LinearGradientMode.Vertical))
        {
            if (controlrect.Height > 1)
            {
                gp1.AddArc(controlrect.X, controlrect.Y + 1, controlrect.Height + 2, controlrect.Height, 180, 90);
                gp1.AddArc(controlrect.X + controlrect.Width - controlrect.Height, controlrect.Y, controlrect.Height, controlrect.Height, 270, 90);
                gp1.AddArc(controlrect.X + 1 + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 0, 90);
                gp1.AddArc(controlrect.X, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 90, 90);
                gp1.CloseFigure();
                e.Graphics.FillPath(br, gp1);
                gp1.Dispose();
            }
        }
        GraphicsPath gp2 = new GraphicsPath();
        using (LinearGradientBrush br = new LinearGradientBrush(e.ClipRectangle, ColorTranslator.FromHtml("#51a7f2"), ColorTranslator.FromHtml("#51a7f2"), LinearGradientMode.Vertical))
        {
            if (controlrect.Height > 1)
            {
                gp2.AddArc(controlrect.X + 5, controlrect.Y + controlrect.Height / 2, controlrect.Height - controlrect.Height / 2, controlrect.Height / 2, 180, 90);
                gp2.AddArc(controlrect.X + 5 + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height / 2, controlrect.Height - controlrect.Height / 2, controlrect.Height / 2, 270, 90);
                gp2.AddArc(controlrect.X + 5 + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height - controlrect.Height + controlrect.Height / 2, controlrect.Height - controlrect.Height / 2, controlrect.Height / 2, 0, 90);
                gp2.AddArc(controlrect.X + 5, controlrect.Y + controlrect.Height - controlrect.Height + controlrect.Height / 2, controlrect.Height - controlrect.Height / 2, controlrect.Height / 2, 90, 90);
                gp2.CloseFigure();
                e.Graphics.FillPath(br, gp2);
                gp2.Dispose();
            }
        }
        if(isMouseHover)
        using (SolidBrush br = new SolidBrush(ColorTranslator.FromHtml("#51a7f2")))
        {
            e.Graphics.FillPath(br, gp);
        }
        PointF pt1 = new PointF(e.ClipRectangle.X + e.ClipRectangle.Width / 2 - textsize.Width / 2, e.ClipRectangle.Y + e.ClipRectangle.Height / 2 - textsize.Height / 2);
        using (SolidBrush br = new SolidBrush(activeState.ForeColor))
        {
            if (displayMode == DisplayType.Text)
            e.Graphics.DrawString(displaytext, font, br, pt1);
        }
        gp.Dispose();
    }
    public void DrawSlider(PaintEventArgs e, Point p, ToggleButtonState toggleState, SliderCollection slider, Font font, RightToLeft righttoLeft, bool isMouseMove, bool isMouseHover)
    {
        e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
        Rectangle controlrect = new Rectangle(e.ClipRectangle.X, e.ClipRectangle.Y, slider.Width, slider.Width-1);
        Rectangle t_sliderRectangle;
        if (!isMouseMove)
        {
            if (toggleState == ToggleButtonState.Inactive)
                t_sliderRectangle = new Rectangle(e.ClipRectangle.X, e.ClipRectangle.Y, e.ClipRectangle.Height-1, e.ClipRectangle.Height-1);
            else
                t_sliderRectangle = new Rectangle(e.ClipRectangle.X + e.ClipRectangle.Width- e.ClipRectangle.Height, e.ClipRectangle.Y, e.ClipRectangle.Height-1, e.ClipRectangle.Height-1);
        }
        else
            t_sliderRectangle = new Rectangle(p.X, e.ClipRectangle.Y, e.ClipRectangle.Height-1, e.ClipRectangle.Height-1);
        if (isMouseHover)
        {
            using (SolidBrush br = new SolidBrush(slider.BackColor))
            {
                e.Graphics.FillEllipse(br, t_sliderRectangle);
                using(Pen pn =new Pen(Color.Gray,2))
                e.Graphics.DrawEllipse(pn, t_sliderRectangle);
            }
        }
        else
        {
            using (SolidBrush br = new SolidBrush(slider.BackColor))
            {
                e.Graphics.FillEllipse(br, t_sliderRectangle);
                e.Graphics.DrawEllipse(Pens.Gray, t_sliderRectangle);
            }
        }
    }
}

{% endhighlight %}

{% highlight vb %}

Dim styleRenderer1 As New StyledRenderer()
styleRenderer1.ToggleButton = Me.ToggleButton1
ToggleButton1.Renderer = styleRenderer1
Public Class StyledRenderer
Implements IToggleButtonRenderer
Private m_toggleButton As ToggleButton
Public Sub DrawButton1(ByVal e As System.Windows.Forms.PaintEventArgs, ByVal toggleState As Syncfusion.Windows.Forms.Tools.ToggleButtonState, ByVal displayMode As Syncfusion.Windows.Forms.Tools.DisplayType, ByVal font As System.Drawing.Font, ByVal activeState As Syncfusion.Windows.Forms.Tools.ActiveStateCollection, ByVal inactiveState As Syncfusion.Windows.Forms.Tools.InactiveStateCollection, ByVal righttoLeft As System.Windows.Forms.RightToLeft, ByVal isMouseHover As Boolean, ByVal toggleButton As ToggleButton)
Implements Syncfusion.Windows.Forms.Tools.IToggleButtonRenderer.DrawButton
Dim displaytext As String = If(toggleState = ToggleButtonState.Active, activeState.Text, inactiveState.Text)
Dim textsize As SizeF = e.Graphics.MeasureString(displaytext, font)
Dim controlrect As New Rectangle(e.ClipRectangle.X + 1, e.ClipRectangle.Y + 1, e.ClipRectangle.Width - 4, e.ClipRectangle.Height - 4)
e.Graphics.SmoothingMode = SmoothingMode.AntiAlias
Dim gp As New GraphicsPath()
Using br As New LinearGradientBrush(e.ClipRectangle, ColorTranslator.FromHtml("#007feb"), ColorTranslator.FromHtml("#51a7f2"), LinearGradientMode.Vertical)
If controlrect.Height > 1 Then
gp.AddArc(controlrect.X, controlrect.Y, controlrect.Height, controlrect.Height, 180, 90)
gp.AddArc(controlrect.X + controlrect.Width - controlrect.Height, controlrect.Y, controlrect.Height, controlrect.Height, 270, 90)
gp.AddArc(controlrect.X + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 0, 90)
gp.AddArc(controlrect.X, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 90, 90)
gp.CloseFigure()
e.Graphics.DrawPath(New Pen(ColorTranslator.FromHtml("#002f69"), 2), gp)
End If
End Using
Dim gp1 As New GraphicsPath()
Using br As New LinearGradientBrush(e.ClipRectangle, ColorTranslator.FromHtml("#007feb"), ColorTranslator.FromHtml("#51a7f2"), LinearGradientMode.Vertical)
If controlrect.Height > 1 Then
gp1.AddArc(controlrect.X, controlrect.Y + 1, controlrect.Height + 2, controlrect.Height, 180, 90)
gp1.AddArc(controlrect.X + controlrect.Width - controlrect.Height, controlrect.Y, controlrect.Height, controlrect.Height, 270, 90)
gp1.AddArc(controlrect.X + 1 + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 0, 90)
gp1.AddArc(controlrect.X, controlrect.Y + controlrect.Height - controlrect.Height, controlrect.Height, controlrect.Height, 90, 90)
gp1.CloseFigure()
e.Graphics.FillPath(br, gp1)
gp1.Dispose()
End If
End Using
Dim gp2 As New GraphicsPath()
Using br As New LinearGradientBrush(e.ClipRectangle, ColorTranslator.FromHtml("#51a7f2"), ColorTranslator.FromHtml("#51a7f2"), LinearGradientMode.Vertical)
If controlrect.Height > 1 Then
gp2.AddArc(controlrect.X + 5, controlrect.Y + controlrect.Height \ 2, controlrect.Height - controlrect.Height \ 2, controlrect.Height \ 2, 180, 90)
gp2.AddArc(controlrect.X + 5 + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height \ 2, controlrect.Height - controlrect.Height \ 2, controlrect.Height \ 2, 270, 90)
gp2.AddArc(controlrect.X + 5 + controlrect.Width - controlrect.Height, controlrect.Y + controlrect.Height - controlrect.Height + controlrect.Height \ 2, controlrect.Height - controlrect.Height \ 2, controlrect.Height \ 2, 0, 90)
gp2.AddArc(controlrect.X + 5, controlrect.Y + controlrect.Height - controlrect.Height + controlrect.Height \ 2, controlrect.Height - controlrect.Height \ 2, controlrect.Height \ 2, 90, 90)
gp2.CloseFigure()
e.Graphics.FillPath(br, gp2)
gp2.Dispose()
End If
End Using
If isMouseHover Then
Using br As New SolidBrush(ColorTranslator.FromHtml("#51a7f2"))
e.Graphics.FillPath(br, gp)
End Using
End If
Dim pt1 As New PointF(e.ClipRectangle.X + e.ClipRectangle.Width \ 2 - textsize.Width / 2, e.ClipRectangle.Y + e.ClipRectangle.Height \ 2 - textsize.Height / 2)
Using br As New SolidBrush(activeState.ForeColor)
If displayMode = DisplayType.Text Then
e.Graphics.DrawString(displaytext, font, br, pt1)
End If
End Using
gp.Dispose()
End Sub
Public Sub DrawSlider1(ByVal e As System.Windows.Forms.PaintEventArgs, ByVal p As System.Drawing.Point, ByVal toggleState As Syncfusion.Windows.Forms.Tools.ToggleButtonState, ByVal slider As Syncfusion.Windows.Forms.Tools.SliderCollection, ByVal font As System.Drawing.Font, ByVal righttoLeft As System.Windows.Forms.RightToLeft, ByVal isMouseMove As Boolean, ByVal isMouseHover As Boolean) Implements Syncfusion.Windows.Forms.Tools.IToggleButtonRenderer.DrawSlider
e.Graphics.SmoothingMode = SmoothingMode.AntiAlias
Dim controlrect As New Rectangle(e.ClipRectangle.X, e.ClipRectangle.Y, slider.Width, slider.Width - 1)
Dim t_sliderRectangle As Rectangle
If Not isMouseMove Then
If toggleState = ToggleButtonState.Inactive Then
t_sliderRectangle = New Rectangle(e.ClipRectangle.X, e.ClipRectangle.Y, e.ClipRectangle.Height - 1, e.ClipRectangle.Height - 1)
Else
t_sliderRectangle = New Rectangle(e.ClipRectangle.X + e.ClipRectangle.Width - e.ClipRectangle.Height, e.ClipRectangle.Y, e.ClipRectangle.Height - 1, e.ClipRectangle.Height - 1)
End If
Else
t_sliderRectangle = New Rectangle(p.X, e.ClipRectangle.Y, e.ClipRectangle.Height - 1, e.ClipRectangle.Height - 1)
End If
If isMouseHover Then
Using br As New SolidBrush(slider.BackColor)
e.Graphics.FillEllipse(br, t_sliderRectangle)
Using pn As New Pen(Color.Gray, 2)
e.Graphics.DrawEllipse(pn, t_sliderRectangle)
End Using
End Using
Else
Using br As New SolidBrush(slider.BackColor)
e.Graphics.FillEllipse(br, t_sliderRectangle)
e.Graphics.DrawEllipse(Pens.Gray, t_sliderRectangle)
End Using
End If
End Sub

{% endhighlight %}
{% endtabs %}

![How-to-customize-Toggle-Button-styling_img1](How-to-customize-Toggle-Button-styling_images/How-to-customize-Toggle-Button-styling_img1.png)
