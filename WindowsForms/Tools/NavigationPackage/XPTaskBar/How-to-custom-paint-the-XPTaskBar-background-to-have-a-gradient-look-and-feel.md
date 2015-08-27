---
layout: post
title: How to custom paint the XPTaskBar background to have a gradient look and feel
description: Frequently Asked Questions
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# How to custom paint the XPTaskBar background to have a gradient look and feel

The XPTaskBar's Paint event can be handled to custom draw the background using the LinearGradientBrush as given below.

{% highlight C# %}  

 private void xpTaskBar1_Paint(object sender, System.Windows.Forms.PaintEventArgs e)

{

Rectangle rc = this.ClientRectangle;

int gradientWidth = rc.Width;

LinearGradientBrush lgb = new System.Drawing.Drawing2D.LinearGradientBrush( new Point(0, 0), new Point(0, gradientWidth), Color.SandyBrown, Color.White);

 

// LinearGradientBrush lgb = new System.Drawing.Drawing2D.LinearGradientBrush(rc, Color.SandyBrown, Color, LinearGradientMode.ForwardDiagonal);

float[] positions = {0.0f, 0.005f, 0.95f, 1.0f};

float[] factors = {0.4f, 1.0f, 0.05f, 0.4f};

 

// Blend Settings

Blend blend = new Blend();

blend.Factors = factors;

blend.Positions = positions;

lgb.Blend = blend;

e.Graphics.FillRectangle(lgb, 0, 0, gradientWidth, rc.Height);

lgb.Dispose();

}

{% endhighlight %}



 {% highlight vbnet %} 

Private Sub xpTaskBar1_Paint(ByVal sender As Object, ByVal e As System.Windows.Forms.PaintEventArgs) Handles xpTaskBar1.Paint

Dim rc As Rectangle = Me.ClientRectangle

Dim gradientWidth As Integer = rc.Width

Dim lgb As LinearGradientBrush = New System.Drawing.Drawing2D.LinearGradientBrush(New Point(0, 0), New Point(0, gradientWidth), Color.SandyBrown, Color.White)

 

' LinearGradientBrush lgb = new System.Drawing.Drawing2D.LinearGradientBrush(rc, Color.SandyBrown, Color, LinearGradientMode.ForwardDiagonal);

Dim positions As Single() = {0.0F, 0.005F, 0.95F, 1.0F}

Dim factors As Single() = {0.4F, 1.0F, 0.05F, 0.4F}

 

' Blend Settings

Dim blend As Blend = New Blend()

blend.Factors = factors

blend.Positions = positions

lgb.Blend = blend

e.Graphics.FillRectangle(lgb, 0, 0, gradientWidth, rc.Height)

lgb.Dispose()

End Sub

{% endhighlight %}

