---
layout: post
title: ProvideItemsBackgroundBrush Event
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# ProvideItemsBackgroundBrush Event

This event occurs when the Items portion of the XPTaskBar Box gets drawn. Users may custom draw the Items portion of the XPTaskBar Box with different colors.

The event handler receives an argument of type ProvideBrushEventArgs. 

The following example handles the ProvideBrushEventHandler event of a XPTaskBar Box and performs custom background drawing.

{% highlight C# %}  

private void OnTaskMenuProvideItemsBackgroundBrush(object sender, Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs args)

{

System.Drawing.Drawing2D.Blend blend = new System.Drawing.Drawing2D.Blend();

blend.Factors = new float[] { 0.0f, 0.25F, 0.5f, 1.0F };

blend.Positions = new float[] { 0.0F, 0.25F, 0.5F, 1.0F, 1.5F };

// Estimate the GroupBarItem bounds

Rectangle rcgroupbaritem = args.Bounds;

// Create and initialize the LinearGradientBrush

System.Drawing.Drawing2D.LinearGradientBrush lgbrush = new System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, Color.FromArgb(227, 238, 255), Color.FromArgb(227, 238, 255), 75, true);

lgbrush.Blend = blend;

args.Brush = lgbrush;

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub OnTaskMenuProvideItemsBackgroundBrush(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs)

Dim blend As New System.Drawing.Drawing2D.Blend()

blend.Factors = New Single() {0.0F, 0.25F, 0.5F, 1.0F}

blend.Positions = New Single() {0.0F, 0.25F, 0.5F, 1.0F, 1.5F}

' Estimate the GroupBarItem bounds 

Dim rcgroupbaritem As Rectangle = args.Bounds

' Create and initialize the LinearGradientBrush 

Dim lgbrush As New System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, Color.FromArgb(227, 238, 255), Color.FromArgb(227, 238, 255), 75, True)

lgbrush.Blend = blend

args.Brush = lgbrush

End Sub

{% endhighlight %}