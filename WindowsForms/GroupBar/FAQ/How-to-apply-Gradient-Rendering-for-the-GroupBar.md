---
layout: post
title: How to apply Gradient Rendering for the GroupBar | Windows Forms | Syncfusion
description: Frequently asked questions
platform: windowsforms
control: GroupBar
documentation: ug
---
# How to apply Gradient Rendering for the GroupBar

The correct way to apply gradient rendering for the GroupBar is to handle the ProvideGroupBarItemBrush Event of GroupBar.

The following code snippet illustrate this.

{% highlight C# %}  

private void groupBar1_ProvideGroupBarItemBrush(object sender, ProvideGroupBarItemBrushEventArgs args)

{

// Define bend pattern for LinearGradientBrush object.

System.Drawing.Drawing2D.Blend blend = new System.Drawing.Drawing2D.Blend();

// Set blend factor for the gradient.

blend.Factors = new float[] { 0.0f, 0.0f, 1.0f };

// Set blend position for the gradient.

blend.Positions = new float[] { 0.0F, 0.5f, 1.0F };

// Estimate the GroupBar Item bounds.

Rectangle rcgroupbaritem = args.Bounds;

// Create and initialize the LinearGradientBrush.

System.Drawing.Drawing2D.LinearGradientBrush lgbrush = new System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, Color.White, SystemColors.ButtonShadow, 90, true);

lgbrush.Blend = blend;

// Set the brush that will be used to draw the specified bounds.

args.BackgroundBrush = lgbrush;

}

{% endhighlight %}


{% highlight vbnet %} 

Private Sub groupBar1_ProvideGroupBarItemBrush(ByVal sender As Object, ByVal args As ProvideGroupBarItemBrushEventArgs)

' Define bend pattern for LinearGradientBrush object.

Dim blend As System.Drawing.Drawing2D.Blend = New System.Drawing.Drawing2D.Blend()

' Set blend factor for the gradient.

blend.Factors = New Single() {0.0F, 0.0F, 1.0F}

' Set blend position for the gradient.

blend.Positions = New Single() {0.0F, 0.5F, 1.0F}

' Estimate the GroupBar Item bounds.

Dim rcgroupbaritem As Rectangle = args.Bounds

' Create and initialize the LinearGradientBrush.

Dim lgbrush As System.Drawing.Drawing2D.LinearGradientBrush = New System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, Color.White, SystemColors.ButtonShadow, 90, True)

lgbrush.Blend = blend

' Set brush that will be used to draw the specified bounds.

args.BackgroundBrush = lgbrush

End Sub

{% endhighlight %}