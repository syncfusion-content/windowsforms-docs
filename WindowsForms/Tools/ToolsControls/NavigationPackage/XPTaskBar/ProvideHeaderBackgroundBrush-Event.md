---
layout: post
title: ProvideHeaderBackgroundBrush Event
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# ProvideHeaderBackgroundBrush Event

This event occurs when the header portion of the XPTaskBar Box gets drawn. Users may custom draw the header portion of the 
XPTaskBar Box with different colors.

The event handler receives an argument of type ProvideBrushEventArgs. The event properties associated with the 
ProvideBrushEventArgs are as follows.

_Table_ _595__: Members Table_

<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
Bounds</td><td>
Returns the bounds for which a brush is requested.</td></tr>
<tr>
<td>
Brush</td><td>
Gets / sets the brush that will be used to draw the specified bounds or path.</td></tr>
<tr>
<td>
Path</td><td>
Returns the Graphics Path for which a brush is requested.</td></tr>
</table>


The following example handles the ProvideBrushEventHandler event of a XPTaskBar Box and performs custom background drawing.

{% highlight C# %}  

private void taskBarBox_ProvideHeaderBackgroundBrush(object sender, Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs args)

{

// Custom draw the background only when XP Themes is not available.

// Using Syncfusion.Windows.Forms namespace.

if(!XPThemes.IsThemedOS && !XPThemes.IsThemeActive && !this.xpTaskBar1.ThemesEnabled)

{

if(args.Bounds.Width != 0 && args.Bounds.Height != 0)

{

// Blend settings

float[] relativeIntensities = {0.0f, 0.0f, 1.0f};

float[] relativePositions   = {0.0F, 0.5f, 1.0F};

Blend blend = new Blend();

blend.Factors = relativeIntensities;

blend.Positions = relativePositions;

XPTaskBarItem box = sender as XPTaskBarItem;

// Header back brush.

LinearGradientBrush lgBrush = new LinearGradientBrush(args.Bounds, Color.White, box.HeaderBackColor, 0, true);

lgBrush.Blend = blend;

args.Brush = lgBrush;

}

}

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub taskMenuBox_ProvideHeaderBackgroundBrush(sender As Object, args As Syncfusion.Windows.Forms.Tools.ProvideBrushEventArgs)

' Custom draw the background only when XP Themes is not available.

// Using Syncfusion.Windows.Forms namespace.

If Not XPThemes.IsThemedOS And Not XPThemes.IsThemeActive And Not Me.xpTaskBar1.ThemesEnabled Then

If args.Bounds.Width &lt;&gt; 0 And args.Bounds.Height &lt;&gt; 0 Then

' Blend settings.

Dim relativeIntensities As Single() = {0.0F, 0.0F, 1.0F}

Dim relativePositions As Single() = {0.0F, 0.5F, 1.0F}

Dim blend As New Blend()

blend.Factors = relativeIntensities

blend.Positions = relativePositions

Dim box As  = CType(sender, XPTaskBarItem)

' Header back brush.

Dim lgBrush As New LinearGradientBrush(args.Bounds, Color.White, box.HeaderBackColor, 0, True)

lgBrush.Blend = blend

args.Brush = lgBrush

End If

End If

End Sub 

{% endhighlight %}
