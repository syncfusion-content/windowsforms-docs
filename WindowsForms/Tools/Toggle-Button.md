---
layout: post
title: Toggle-Button
description: toggle button
platform: WindowsForms
control: Tools
documentation: ug
---

# Toggle Button

## Overview

Toggle Button control for Windows Forms allows you to toggle between two states (Active and Inactive) that are opposite to each other in terms of behavior.

![](Toggle-Button_images/Toggle-Button_img1.jpeg)



### Key Features

* Configurable Toggle States – Two states with contrasting behavior are configured as required like IN/OUT, ON/OFF, etc. 
* Display Mode – Supported to display either text or image over buttons to represent the states.
* Custom Renderer - Allows the end-user to apply custom styles at application level.

## Getting Started 


This section briefly describes how to design a Toggle Button in a .NET application.

* Adding a Toggle Button control.
* Configuring the Toggle Button control.

### Add a ToggleButton Control

1. Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
2. Drag & Drop a Toggle Button Control in the Form from Toolbox.

![](Toggle-Button_images/Toggle-Button_img2.png)



### Configuring the ToggleButton

The most commonly used settings of the Toggle Button Control is configured either through Designer using the Smart tag or through the Properties window or through code behind.

The following screenshot illustrates the Toggle Button Control customization through smart tag.

![](Toggle-Button_images/Toggle-Button_img3.png)



To add Toggle Button control to a Windows Forms Application through code behind,

1. Include Syncfusion.Windows.Forms.Tools namespace.

   ~~~ cs

		using Syncfusion.Windows.Forms;

   ~~~
   {:.prettyprint }


   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }


2. Create an instance of the Toggle Button control and add it to the Form.

   ~~~ cs

		ToggleButton togglebutton1;

		this.togglebutton1 = new Syncfusion.Windows.Forms.Tools.ToggleButton();

		this.Controls.Add(togglebutton1);

   ~~~
   {:.prettyprint }


   ~~~ vbnet

		Dim togglebutton1 As Syncfusion.Windows.Forms.Tools.ToggleButton

		Me.ToggleButton1 = New Syncfusion.Windows.Forms.Tools.ToggleButton()

		Me.Controls.Add(togglebutton1)

   ~~~
   {:.prettyprint }


## Concepts and Features

* Toggle State Configuration.
* Display Mode Configuaration.
* Slider Customization.
* Custom Styling.

### Toggle State Configuration


Toggle Button is configured with two states (Active and Inactive) contrasting each other. Toggling can be handled at runtime either through mouse click or through space key.

![](Toggle-Button_images/Toggle-Button_img4.png)



{% highlight c# %}

this.toggleButton1.ToggleState = 

ToggleButtonState.Active; 



//ToggleButtonState.Inactive, for inactive state          


{% endhighlight %}


{% highlight vbnet %}

Me.ToggleButton1.ToggleState = 

ToggleButtonState.Active



'ToggleButtonState.Inactive , for inactive state

{% endhighlight %}

Active State

In the Toggle Button, active state is represented uniquely through its styling properties: BackColor, BorderColor, ForeColor, and HoverColor.

{% highlight c# %}

this.toggleButton1.ActiveState.Text = "ON";

this.toggleButton1.ActiveState.BackColor = Color.Gray;

this.toggleButton1.ActiveState.BorderColor = Color.Black; 

this.toggleButton1.ActiveState.ForeColor = Color.Black; 

this.toggleButton1.ActiveState.HoverColor = Color.Blue;   

{% endhighlight %}



{% highlight vbnet %}

Me.ToggleButton1.ActiveState.Text = "ON"

Me.ToggleButton1.ActiveState.BackColor = Color.Gray

Me.ToggleButton1.ActiveState.BorderColor = Color.Black

Me.ToggleButton1.ActiveState.ForeColor = Color.Black

Me.ToggleButton1.ActiveState.HoverColor = Color.Blue

{% endhighlight %}



![](Toggle-Button_images/Toggle-Button_img5.png)



Inactive State

Similar to the active state, inactive state is represented uniquely through its styling properties: BackColor, BorderColor, ForeColor, and HoverColor.

{% highlight c# %}

this.toggleButton1.InactiveState.Text = "OFF";

this.toggleButton1.InactiveState.BackColor = Color.Gray;

this.toggleButton1.InactiveState.BorderColor = Color.Black;

this.toggleButton1.InactiveState.ForeColor = Color.Blue;

this.toggleButton1.InactiveState.HoverColor = Color.Blue;                 

{% endhighlight %}



{% highlight vbnet %}

Me.ToggleButton1.InactiveState.Text = "OFF"

Me.ToggleButton1.InactiveState.BackColor = Color.Gray

Me.ToggleButton1.InactiveState.BorderColor = Color.Black

Me.ToggleButton1.InactiveState.ForeColor = Color.Blue

Me.ToggleButton1.InactiveState.HoverColor = Color.Blue

{% endhighlight %}



![](Toggle-Button_images/Toggle-Button_img6.png)



### Display Mode Configuration

Toggle Button is set to display either text or image through its DisplayMode property.

{% highlight c# %}

this.toggleButton1.DisplayMode = 

DisplayType.Text;



// DisplayType.Image ,for displaying image


{% endhighlight %}


{% highlight vbnet %}

Me.ToggleButton1.DisplayMode = 

DisplayType.Text



'DisplayType.Image for displaying image

{% endhighlight %}



![](Toggle-Button_images/Toggle-Button_img7.png)



### Slider Customization

In the Toggle Button, the Slider is used to switch between two different states. It can be customized with different colors by using the Color property. The height of the Slider is calculated based on the Control’s Height. The Slider Width is customized by using the Slider.Width property that should not exceed the control’s width.

{% highlight c# %} 

this.toggleButton1.Slider.BorderColor = Color.Black;

this.toggleButton1.Slider.ForeColor = Color.Blue;

this.toggleButton1.Slider.HoverColor = Color.Blue;    

this.toggleButton1.Slider.BackColor = Color.Gray;            

this.toggleButton1.Slider.Width = 30;

{% endhighlight %}



{% highlight vbnet %}

Me.ToggleButton1.Slider.BorderColor = Color.Black

Me.ToggleButton1.Slider.ForeColor = Color.Blue

Me.ToggleButton1.Slider.HoverColor = Color.Blue

Me.ToggleButton1.Slider.BackColor = Color.Gray

Me.ToggleButton1.Slider.Width = 30        

{% endhighlight %}



![](Toggle-Button_images/Toggle-Button_img8.png)



### Custom Styling

The appearance of the Toggle Button is customized by using the IToggleButtonRenderer. This interface provides few methods to control painting borders, arrow, and so on. 

To customize the appearance, 

1. Create a new custom renderer class and implement each of the members defined in IToggleButtonRenderer. 
2. Assign instance of your custom renderer to the Renderer property of ToggleButton. By default, ToggleButton is painted by using its default renderer.

{% highlight c# %}

CustomRenderer renderer = new CustomRenderer();

toggleButton1.Renderer = renderer;

{% endhighlight %}


{% highlight vbnet %}

Dim renderer As New CustomRenderer()

toggleButton1.Renderer = renderer

{% endhighlight %}



![](Toggle-Button_images/Toggle-Button_img9.png)



## Frequently Asked Questions

### How to customize Toggle Button styling?

You can customize the appearance of the Toggle Button by using the IToggleButtonRenderer. The following code example illustrates how to achieve iOS platform look-alike Toggle Button.

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

{% highlight vbnet %}



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

![](Toggle-Button_images/Toggle-Button_img10.png)



### What are the events available in ToggleButton

The following listed events are available in Toggle Button.

* ToggleStateChanging
* ToggleStateChanged
###### ToggleStateChanging 


This event is triggered in Toggle Button when its state is changing.

Event Data

_Table_ _976_: Member Table

<table>
<tr>
<td>
Member</td><td>
Description</td></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets the value indicating whether the state change should be cancelled or not.</td></tr>
</table>


{% highlight c# %}

void toggleButton1_ToggleStateChanging(object sender, CancelEventArgs e)

{

     Console.WriteLine("ToggleStateChanging event raised!");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub toggleButton1_ToggleStateChanging(ByVal sender As Object, ByVal e As CancelEventArgs)

    Console.WriteLine("ToggleStateChanging event raised!")

End Sub

{% endhighlight %}

#### ToggleStateChanged 

This event is triggered in Toggle Button after its value is changed. 

Event Data

_Table_ _977_: Member Table

<table>
<tr>
<td>
Member</td><td>
Description</td></tr>
<tr>
<td>
ToggleState</td><td>
Returns the current state of the ToggleButton.</td></tr>
</table>


{% highlight c# %}



void toggleButton1_ToggleStateChanged(object sender, Syncfusion.Windows.Forms.Tools.ToggleStateChangedEventArgs e)



{

     ToggleButtonState state = e.ToggleState;

     Console.WriteLine("ToggleStateChanged event is raised");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub toggleButton1_ToggleStateChanged(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ToggleStateChangedEventArgs)

        Dim state As ToggleButtonState = e.ToggleState

        Console.WriteLine("ToggleStateChanged event is raised")

End Sub

{% endhighlight %}

### How to set image for Slider in Toggle Button

You can set the image through the Image property. Following code example illustrates the same.

{% highlight c# %}

this.toggleButton1.Slider.Image = global::ToggleButtonDemo2010.Properties.Resources.big_tick;

{% endhighlight %}

{% highlight vbnet %}

Me.toggleButton1.Slider.Image = Global.ToggleButtonDemo2010.Properties.Resources.big_tick

{% endhighlight %}

![](Toggle-Button_images/Toggle-Button_img11.png)



### How to prevent the Toggle Button from changing between active and inactive states?

You have to subscribe to the ToggleStateChanging event and cancel the change. The following code example explains the same.

{% highlight c# %}



private void toggleButton1_ToggleStateChanging(object sender, CancelEventArgs e)

{

   e.Cancel = true;

}

{% endhighlight %}



{% highlight vbnet %}

Private Sub ToggleButton1_ToggleStateChanging(sender As System.Object, e As System.ComponentModel.CancelEventArgs) Handles ToggleButton1.ToggleStateChanging

            e.Cancel = True

End Sub


{% endhighlight %}


