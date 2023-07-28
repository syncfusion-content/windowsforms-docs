---
layout: post
title: Appearance Settings in Windows Forms Splash Panel control | Syncfusion
description: Learn about Appearance Settings support in Syncfusion Windows Forms Splash Panel control and more details.
platform: WindowsForms
control: SplashPanel
documentation: ug
---

# Appearance settings in Windows Forms Splash Panel

This section demonstrates how to customize the appearance of the SplashPanel using the below given properties.

## Background settings

The background of the SplashPanel can be customized using the properties given below.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
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
Specifies the back color of the control.</td></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the fore color for any text or graphics in the control.</td></tr>
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

{% tabs %}
{% highlight c# %}

this.splashPanel1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.SteelBlue);
this.splashPanel1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("blue hills")));
this.splashPanel1.TransparentColor = System.Drawing.Color.White;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.PathRectangle, System.Drawing.Color.AliceBlue, System.Drawing.Color.SteelBlue)
Me.splashPanel1.BackgroundImage = CType((resources.GetObject("blue hills")), System.Drawing.Image)
Me.splashPanel1.TransparentColor = System.Drawing.Color.White

{% endhighlight %}
{% endtabs %}

![Overview_img52](Overview_images/Overview_img52.jpeg) 

![Overview_img53](Overview_images/Overview_img53.jpeg) 

N> The RefreshRegionFromImage() method can be used to refresh the region from the background image.

## Behavior settings

The user will not be able to close or resize the splash image, which is displayed during run time, normally. But by setting certain properties of the SplashPanel, the user can alter the SplashPanel. These properties are explained below in detail.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
AllowMove</td><td>
Indicates whether the SplashPanel can be moved by the user at run time.</td></tr>
<tr>
<td>
AllowResize</td><td>
Indicates whether the SplashPanel can be resized by the user at run time.</td></tr>
<tr>
<td>
CloseOnClick</td><td>
Indicates whether the SplashPanel gets closed when the user clicks on it.</td></tr>
</table>

When the AllowMove property is set to 'True', the user will be allowed to click within the SplashPanel and move the SplashPanel on the screen.

When the AllowResize property is set to 'True', resize handles will be displayed when the user moves the mouse near the border of the SplashPanel.

N> In the above cases, the splash panel will not be closed, until the host form is closed.

The user can also close the SplashPanel by a single mouse click. This feature can be enabled by setting the CloseOnClick property to 'True'.

{% tabs %}
{% highlight c# %}

this.splashPanel1.AllowMove = true;
this.splashPanel1.AllowResize = true;
this.splashPanel1.CloseOnClick = true;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.AllowMove = True
Me.splashPanel1.AllowResize = True
Me.splashPanel1.CloseOnClick = True

{% endhighlight %}
{% endtabs %}

## Border settings

The border settings of the SplashPanel control can be customized to provide a 3D look for the border.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies the 3D border for the SplashPanel. The options included are as follows.RaisedOuter,SunkenOuter,RaisedInner,SunkenInner,Raised,Etched,Bump,Sunken,Adjust andFlat.</td></tr>
<tr>
<td>
BorderType</td><td>
Specifies the type of border. The options included are as follows.Border3D andNone.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.splashPanel1.BorderStyle = System.Windows.Forms.Border3DStyle.Flat;
this.splashPanel1.BorderType = Syncfusion.Windows.Forms.Tools.SplashBorderType.Border3D;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.BorderStyle = System.Windows.Forms.Border3DStyle.Flat
Me.splashPanel1.BorderType = Syncfusion.Windows.Forms.Tools.SplashBorderType.Border3D;

{% endhighlight %}
{% endtabs %}

![Overview_img56](Overview_images/Overview_img56.jpeg) 

## Alignment settings

The position of the SplashPanel in the desktop can be changed according to the needs of the user using the property given below.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
DesktopAlignment</td><td>
Specifies the desktop alignment of the splash image. It includes the following options.SystemTray,Center,LeftTop,LeftBottom,RightTop,RightBottom andCustom.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.splashPanel1.DesktopAlignment = Syncfusion.Windows.Forms.Tools.SplashAlignment.SystemTray;

{% endhighlight %}

{% highlight vb %}

Me.splashPanel1.DesktopAlignment = Syncfusion.Windows.Forms.Tools.SplashAlignment.SystemTray

{% endhighlight %}
{% endtabs %}

![Overview_img57](Overview_images/Overview_img57.jpeg) 

A Sample which demonstrates theDesktop Alignment options is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo

## ToolTip

ToolTip can be displayed for the SplashPanel when the mouse is moved over the control. This can be done using the following property.

Property Table

<table>
<tr>
<th>
SplashPanel Property</th><th>
Description</th></tr>
<tr>
<td>
ToolTip on toolTip1</td><td>
Determines the ToolTip shown when the mouse hovers over the control.The ToolTip on toolTip1 property is an extender property, i.e., it will appear in the Property grid only when you add a tooltip control onto the form.</td></tr>
</table>

ToolTip can also be set through the code given below.

{% tabs %}
{% highlight c# %}

this.toolTip1.SetToolTip(this.splashPanel1, "Splash Panel Tooltip");

{% endhighlight %}

{% highlight vb %}

Me.toolTip1.SetToolTip(this.splashPanel1, "Splash Panel Tooltip")

{% endhighlight %}
{% endtabs %}

![Overview_img58](Overview_images/Overview_img58.jpeg) 
