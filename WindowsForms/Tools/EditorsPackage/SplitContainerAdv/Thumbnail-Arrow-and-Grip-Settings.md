---
layout: post
title: Thumbnail Arrow and Grip Settings
description: Thumbnail Arrow and Grip Settings
platform: windowsforms
control: Editors Package
documentation: ug
---




# Thumbnail Arrow and Grip Settings

SplitContainerAdv control supports various appearance settings for the ThumbnailArrow in the control which are discussed in detail below. The properties which control the appearance of the splitter components are as follows.

Table 245: Property Table

<table>
<tr>
<td>
SplitContainerAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
ExpandFill</td><td>
Sets the color for the arrows.</td></tr>
<tr>
<td>
ExpandLine</td><td>
Sets the outline color for the arrows.</td></tr>
<tr>
<td>
GripDark</td><td>
Sets color for the grip.</td></tr>
<tr>
<td>
GridLight</td><td>
Sets the shadow around the grip.</td></tr>
</table>



{% highlight C# %}



this.splitContainerAdv2.ExpandFill = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.AliceBlue);

this.splitContainerAdv2.ExpandLine = System.Drawing.Color.Red;

this.splitContainerAdv2.GripDark = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Wheat);

this.splitContainerAdv2.GripLight = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Crimson);
{% endhighlight %}





{% highlight vbnet %}


Me.splitContainerAdv2.ExpandFill = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.AliceBlue)

Me.splitContainerAdv2.ExpandLine = System.Drawing.Color.Red

Me.splitContainerAdv2.GripDark = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Wheat)

Me.splitContainerAdv2.GripLight = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Crimson)
{% endhighlight %}


 ![](SplitContainerAdv-Images/Overview_img398.jpeg)


## RunTime Appearance

The properties to control the appearance of the thumbnail arrows, and grip, while mouse hovering at runtime, are as follows.

Table 246: Property Table

<table>
<tr>
<td>
SplitContainerAdv Properties</td><td>
Description</td></tr>
<tr>
<td>
HotBackgroundColor</td><td>
Sets the background color of the Thumbnail while under mouse cursor.</td></tr>
<tr>
<td>
HotExpandFill</td><td>
Sets the color for the arrows while under mouse cursor.</td></tr>
<tr>
<td>
HotExpandLine</td><td>
Sets the outline color for the arrows while under mouse cursor.</td></tr>
<tr>
<td>
HotGripDark</td><td>
Sets color for the grip while under mouse cursor.</td></tr>
<tr>
<td>
HotGridLight</td><td>
Sets the shadow around the grip while under mouse cursor.</td></tr>
</table>



{% highlight C# %}




this.splitContainerAdv2.HotBackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.SandyBrown, System.Drawing.Color.AntiqueWhite);

this.splitContainerAdv2.HotExpandFill = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Red);

this.splitContainerAdv2.HotExpandLine = System.Drawing.Color.DeepPink;

this.splitContainerAdv2.HotGripDark = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.MistyRose);

this.splitContainerAdv2.HotGripLight = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Purple);

{% endhighlight %}


{% highlight vbnet %}




Me.splitContainerAdv2.HotBackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.Color.SandyBrown, System.Drawing.Color.AntiqueWhite) 

Me.splitContainerAdv2.HotExpandFill = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Red) 

Me.splitContainerAdv2.HotExpandLine = System.Drawing.Color.DeepPink 

Me.splitContainerAdv2.HotGripDark = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.MistyRose) 

Me.splitContainerAdv2.HotGripLight = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.Purple)
{% endhighlight %}


![](SplitContainerAdv-Images/Overview_img399.jpeg) 
