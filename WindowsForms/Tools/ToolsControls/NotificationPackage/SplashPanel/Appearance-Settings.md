---
layout: post
title: Appearance-Settings
description: appearance settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Appearance Settings

The SplashPanel allows the user to customize the appearance of the panel using the below given properties.

### Background Settings

The background of the SplashPanel can be customized using the properties given below.

_Table_ _637_: _Property Table_

<table>
<tr>
<td>
SplashPanel Property</td><td>
Description</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Gets / sets the background gradient and other styles.</td></tr>
<tr>
<td>
Style</td><td>
Specifies the brush style.Solid,Pattern andGradient.</td></tr>
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
GradientStyle</td><td>
Specifies the gradient style of the background.ForwardDiagonal,BackwardDiagonal,Horizontal,Vertical,PathRectangle andPathEllipse.</td></tr>
<tr>
<td>
GradientColors</td><td>
Specifies the gradient colors.The first entry in this list will be the same as the BackColor property, the last entry will be the same as the ForeColor property.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Specifies the background image used for the control.</td></tr>
<tr>
<td>
TransparentColor</td><td>
Specifies the transparent color for the background.</td></tr>
</table>


{% highlight c# %}



this.splashPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.SteelBlue);

this.splashPanel1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("blue hills")));

this.splashPanel1.TransparentColor = System.Drawing.Color.White;

{% endhighlight %}

{% highlight vbnet %}



Me.splashPanel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.SteelBlue)

Me.splashPanel1.BackgroundImage = CType((resources.GetObject("blue hills")), System.Drawing.Image)

Me.splashPanel1.TransparentColor = System.Drawing.Color.White

{% endhighlight %}

![](Overview_images/Overview_img52.jpeg) 



![](Overview_images/Overview_img53.jpeg) 



> Note: The RefreshRegionFromImage() method can be used to refresh the region from the background image._

