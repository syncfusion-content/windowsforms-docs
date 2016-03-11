---
layout: post
title: XPTaskBar Box Settings  | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: XPtaskBar
documentation: ug
---
# XPTaskBar Box Settings 

This section discusses the appearance and behavior settings of the XPTaskBar Box.

## Header Settings 

This section lists the properties used for customizing the header of the XPTaskBar Box.

The Header of the XPTaskBar Box contains the Collapse button and text. The header text can be changed using the Text property of the XPTaskBar Box. The other properties are discussed below.

Property Table

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
HeaderBackColor</td><td>
Gets / sets the background color with which the header will be drawn.</td></tr>
<tr>
<td>
HeaderForeColor</td><td>
Gets / sets the foreground color with which the header will be drawn.</td></tr>
<tr>
<td>
HeaderDirection</td><td>
Gets / sets the header direction. The options are as follows.RightToLeft LeftToRightThe default value is 'LeftToRight'.</td></tr>
<tr>
<td>
HeaderFont</td><td>
Gets / sets the text font with which the header will be drawn.</td></tr>
<tr>
<td>
HeaderTextAlign</td><td>
Gets / sets the header text alignment. The options are,NearCenter FarThe default value is 'Near'.The Header text must not be set to Null characters.</td></tr>
<tr>
<td>
ClipHeaderText</td><td>
Gets / sets a value indicating whether the header text should be clipped.</td></tr>
</table>


The following screen shot illustrates the above settings.

 ![](Overview_images/Overview_img106.jpeg) 


{% highlight C# %}  

this.xpTaskBarBox1.HeaderBackColor = System.Drawing.Color.Bisque

this.xpTaskBarBox1.HeaderForeColor = System.Drawing.Color.Red;

this.xpTaskBarBox1.HeaderDirection = Syncfusion.Windows.Forms.Tools.XPTaskBarBox.HeaderDirectionFormat.RightToLeft;

this.xpTaskBarBox1.HeaderFont = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));

this.xpTaskBarBox1.HeaderTextAlign = System.Drawing.StringAlignment.Center;

this.xpTaskBarBox1.ClipHeaderText = true;

{% endhighlight %}

{% highlight vbnet %} 

Me.xpTaskBarBox1.HeaderBackColor = System.Drawing.Color.Bisque

Me.xpTaskBarBox1.HeaderForeColor = System.Drawing.Color.Red

Me.xpTaskBarBox1.HeaderDirection = Syncfusion.Windows.Forms.Tools.XPTaskBarBox.HeaderDirectionFormat.RightToLeft

Me.xpTaskBarBox1.HeaderFont = New System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (CByte(0)))

Me.xpTaskBarBox1.HeaderTextAlign = System.Drawing.StringAlignment.Center

Me.xpTaskBarBox1.ClipHeaderText = True

{% endhighlight %}

## Button Settings 

This section discusses the button settings of the XPTaskBar Box.

The collapsed button is used to expand or collapse the XPTaskBar Items. The following table lists the properties associated with
collapsing or expanding the XPTaskBar Box.

Property Table

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
Collapsed</td><td>
Specifies the collapsed state of the TaskBar Box. The default value is set to 'False'.</td></tr>
<tr>
<td>
ShowCollapseButton</td><td>
Specifies whether to show or hide the collapse button. The default value is set to 'True'.</td></tr>
<tr>
<td>
ToggleByButton</td><td>
Specifies whether the XPTaskBar Box should expand or collapse only when the collapse button is clicked, or always when the header is clicked. The default value is set to 'False'.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.Collapsed = true;

this.xpTaskBarBox1.ShowCollapseButton = true;

this.xpTaskBarBox1.ToggleByButton = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.Collapsed = True

Me.xpTaskBarBox1.ShowCollapseButton = True

Me.xpTaskBarBox1.ToggleByButton = True

{% endhighlight %}

 ![](Overview_images/Overview_img107.jpeg) 

The methods associated with the above properties are given below.

Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
LoadBoxExpandedStates</td><td>
Loads the expanded child taskbar boxes from the AppStateSerializer</td></tr>
<tr>
<td>
SaveBoxExpandedStates</td><td>
Saves the expanded child taskbar boxes to the AppStateSerializer.</td></tr>
</table>

## Animation Settings 

Animation during expanding / collapsing of the Taskbar items in an XPTaskBar can be controlled using the following properties. 
Animation can also be enabled while adding or removing any TaskBar items.

Property Table

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
AnimationDelay</td><td>
Specifies the animation delay during expand / collapse of the  XPTaskBarBox.</td></tr>
<tr>
<td>
AnimationPositionsCount</td><td>
Specifies the number of animation positions during expand / collapse.</td></tr>
<tr>
<td>
UseAdditionalAnimation</td><td>
It indicates whether animation is enabled when items are added / removed.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.AnimationDelay = 100;

this.xpTaskBarBox1.AnimationPositionsCount = 20;

this.xpTaskBarBox1.UseAdditionalAnimation = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.AnimationDelay = 100

Me.xpTaskBarBox1.AnimationPositionsCount = 20

Me.xpTaskBarBox1.UseAdditionalAnimation = True

{% endhighlight %}

 ![](Overview_images/Overview_img108.jpeg) 


## Mouse Hover Settings 

This section discusses the mouse hover settings of the XPTaskBar control.

The position of the mouse with respect to the control can be known using the properties given below.

Property Table

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
HitTaskBoxArea</td><td>
Specifies whether the mouse is moved over the TaskBox area.</td></tr>
<tr>
<td>
HeaderHit</td><td>
Indicates whether the mouse is currently over the header portion.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.HitTaskBoxArea= true;

this.xpTaskBarBox1.HeaderHit= true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.HitTaskBoxArea = True

Me.xpTaskBarBox1.HeaderHit = True

{% endhighlight %}


## Integrating Child Controls to the XPTaskBar Box 

To host multiple controls inside the XPTaskBar Boxes, we prefer the Panel control. We can set the panel's height using the PreferredChildPanelHeight property.

Property Table

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
PreferredChildPanelHeight</td><td>
It sets the height of the panel hosted inside the XPTaskBar Boxes.  </td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.PreferredChildPanelHeight = 35;

{% endhighlight %}

{% highlight vbnet %} 

Me.xpTaskBarBox1.PreferredChildPanelHeight = 35

{% endhighlight %}

![](Overview_images/Overview_img109.jpeg) 
PreferredChildPanelHeight = "35"
{:.caption}

## XPTaskBar- ToolTips

ToolTips can be provided for the TaskBar Items of the XPTaskBar Box. The interesting part is that tooltips can also be assigned 
for the disabled TaskBar Items. 

The ToolTipText property of the XPTaskBar control can be used to set the text of the tooltip, while the tooltip can be displayed
using the ShowToolTip property.

Property Table

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
ToolTipText</td><td>
Gets / sets the text of the tooltip.</td></tr>
<tr>
<td>
ShowToolTip</td><td>
Sets the visibility of the tooltip. The default value is set to 'False'.</td></tr>
</table>


{% highlight C# %}  

// Set the tooltip text for the XPTaskBar Item.

this.xpTaskBarBox1.Items[1].ToolTipText = "Header Image, Gradient Header Brush";

this.xpTaskBarBox1.ShowToolTip = true;

{% endhighlight %}




{% highlight vbnet %} 

' Set the tooltip text for the XPTaskBar Item.

Me.xpTaskBarBox1.Items(1).ToolTipText = "Header Image, Gradient Header Brush"

Me.xpTaskBarBox1.ShowToolTip = True

{% endhighlight %}



 ![](Overview_images/Overview_img110.jpeg) 