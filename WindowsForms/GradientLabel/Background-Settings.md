---
layout: post
title: Background Settings
description: Background Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---


# Background Settings

This section illustrates the background settings of the GradientLabel control.

The GradientLabel control's background can be customized using the various options provided by the BackgroundColor property given below.

<table>
<tr>
<th>
GradientLabel Properties</th><th>
Description</th></tr>
<tr>
<td>
BackgroundColor</td><td>
Gets / sets the background color and other styles.</td></tr>
<tr>
<td>
Style</td><td>
Specifies the brush style.{{ 'Solid,' | markdownify }}{{ 'Pattern and' | markdownify }}{{ 'Gradient.' | markdownify }}The default value is set to 'Gradient'.</td></tr>
<tr>
<td>
BackColor</td><td>
Specifies the backcolor of the control.</td></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the forecolor for any text or graphics in the control.</td></tr>
<tr>
<td>
PatternStyle</td><td>
Specifies the pattern style of the control.</td></tr>
<tr>
<td>
GradientStyle</td><td>
Specifies the gradient style of the background.{{ 'ForwardDiagonal,' | markdownify }}{{ 'BackwardDiagonal,' | markdownify }}{{ 'Horizontal,' | markdownify }}{{ 'Vertical,' | markdownify }}{{ 'PathRectangle and' | markdownify }}{{ 'PathEllipse.' | markdownify }}The default value is set to 'Vertical'.</td></tr>
<tr>
<td>
GradientColors</td><td>
Specifies the gradient colors.The first entry in this list will be the same as the BackColor property, the last entry will be the same as the ForeColor property.</td></tr>
</table>



{% highlight C# %}




this.gradientLabel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, new System.Drawing.Color[] {System.Drawing.Color.LavenderBlush, System.Drawing.Color.LemonChiffon, System.Drawing.Color.DarkKhaki, System.Drawing.Color.SandyBrown, System.Drawing.Color.LightSeaGreen});


{% endhighlight %}



{% highlight vbnet %}



Me.gradientLabel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, New System.Drawing.Color() {System.Drawing.Color.LavenderBlush, System.Drawing.Color.LemonChiffon, System.Drawing.Color.DarkKhaki, System.Drawing.Color.SandyBrown, System.Drawing.Color.LightSeaGreen})

{% endhighlight %}

 ![](GradientLabel-Images/Overview_img604.jpeg)
