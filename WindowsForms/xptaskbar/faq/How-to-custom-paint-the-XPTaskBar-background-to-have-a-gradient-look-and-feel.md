---
layout: post
title: Custom paint the XPTaskBar background in WindowsForms | Syncfusion
description: How to custom paint the XPTaskBar background to have a gradient look and feel in Syncfusion WindowsForms control, its elements, and more.
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# Custom paint the XPTaskBar background in WindowsForms

The XPTaskBar's Paint event can be handled to custom draw the background using the LinearGradientBrush as given below.

{% tabs %}

{% highlight C# %}  

 private void xpTaskBar1_Paint(object sender, System.Windows.Forms.PaintEventArgs e)

{

Rectangle rc = this.ClientRectangle;

int gradientWidth = rc.Width;

LinearGradientBrush lg = new System.Drawing.Drawing2D.LinearGradientBrush( new Point(0, 0), new Point(0, gradientWidth), Color.SandyBrown, Color.White);

 

// LinearGradientBrush lg = new System.Drawing.Drawing2D.LinearGradientBrush(rc, Color.SandyBrown, Color, LinearGradientMode.ForwardDiagonal);

float[] positions = {0.0f, 0.005f, 0.95f, 1.0f};

float[] factors = {0.4f, 1.0f, 0.05f, 0.4f};

 

// Blend Settings

Blend blend = new Blend();

blend.Factors = factors;

blend.Positions = positions;

lg.Blend = blend;

e.Graphics.FillRectangle(lg, 0, 0, gradientWidth, rc.Height);

lg.Dispose();

}

{% endhighlight %}



{% highlight VB %} 

Private Sub xpTaskBar1_Paint(ByVal sender As Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles xpTaskBar1.Paint

Dim rc As Rectangle = Me.ClientRectangle

Dim gradientWidth As Integer = rc.Width

Dim lg As LinearGradientBrush = New System.Drawing.Drawing2D.LinearGradientBrush(New Point(0, 0), New Point(0, gradientWidth), Color.SandyBrown, Color.White)

 

' LinearGradientBrush lg = new System.Drawing.Drawing2D.LinearGradientBrush(rc, Color.SandyBrown, Color, LinearGradientMode.ForwardDiagonal);

Dim positions As Single() = {0.0F, 0.005F, 0.95F, 1.0F}

Dim factors As Single() = {0.4F, 1.0F, 0.05F, 0.4F}

 

' Blend Settings

Dim blend As Blend = New Blend()

blend.Factors = factors

blend.Positions = positions

lg.Blend = blend

e.Graphics.FillRectangle(lg, 0, 0, gradientWidth, rc.Height)

lg.Dispose()

End Sub

{% endhighlight %}

{% endtabs %}