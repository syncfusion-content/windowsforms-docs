---
layout: post
title: ProvideGroupBarItemBrush Event
description: ProvideGroupBarItemBrush Event
platform: windowsforms
control: GroupBar
documentation: ug
---
# ProvideGroupBarItemBrush Event

It occurs when a GroupBar Item is about to be drawn. The event handler receives an argument of type ProvideGroupBarItemBrushEventArgs. 

The event properties associated with the ProvideGroupBarItemBrushEventArgs are given below.

_Table_ _558__: Members Table_

<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
BackgroundBrush</td><td>
Gets / sets the brush that will be used to draw the specified bounds.</td></tr>
<tr>
<td>
Bounds</td><td>
Returns the bounds for which a brush is requested.</td></tr>
<tr>
<td>
Item</td><td>
Returns the index of the GroupBar Item being drawn.</td></tr>
</table>


{% highlight C# %}  

private void gbOutlook_ProvideGroupBarItemBrush(object sender, Syncfusion.Windows.Forms.Tools.ProvideGroupBarItemBrushEventArgs args)

{

System.Drawing.Drawing2D.Blend blend = new System.Drawing.Drawing2D.Blend();

blend.Factors = new float[] { 0.0f, 0.0f, 1.0f };

blend.Positions = new float[] { 0.0F, 0.5f, 1.0F };

// Estimate the GroupBar Item bounds.

Rectangle rcgroupbaritem = args.Bounds;

// Create and initialize the LinearGradientBrush.

System.Drawing.Drawing2D.LinearGradientBrush lgbrush = new System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, gbOutlook.GroupBarItems[0].BackColor, SystemColors.ScrollBar, 90, true);

lgbrush.Blend = blend;

args.BackgroundBrush = lgbrush;

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub gbOutlook_ProvideGroupBarItemBrush(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.ProvideGroupBarItemBrushEventArgs)

Dim blend As New System.Drawing.Drawing2D.Blend()

blend.Factors = New Single() {0.0F, 0.0F, 1.0F}

blend.Positions = New Single() {0.0F, 0.5F, 1.0F}

' Estimate the GroupBar Item bounds. 

Dim rcgroupbaritem As Rectangle = args.Bounds

' Create and initialize the LinearGradientBrush. 

Dim lgbrush As New System.Drawing.Drawing2D.LinearGradientBrush(rcgroupbaritem, gbOutlook.GroupBarItems(0).BackColor, SystemColors.ScrollBar, 90, True)

lgbrush.Blend = blend

args.BackgroundBrush = lgbrush

End Sub

{% endhighlight %}
