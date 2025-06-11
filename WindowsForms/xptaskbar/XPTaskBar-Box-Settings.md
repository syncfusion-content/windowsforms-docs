---
layout: post
title: XPTaskBar Box Settings in Windows Forms xptaskbar control | Syncfusion®
description: Learn about XPTaskBar Box Settings support in Syncfusion® Windows Forms xptaskbar (XPTaskBar) control and more details.
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# XPTaskBar Box Settings in Windows Forms xp taskbar (XPTaskBar)

This section discusses the appearance and behavior settings of the XPTaskBar Box.

## Header settings

This section lists the properties used for customizing the header of the XPTaskBar Box.

The Header of the XPTaskBar Box contains the Collapse button and text. The header text can be changed using the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBar.html#Syncfusion_Windows_Forms_Tools_XPTaskBar_Text) property of the XPTaskBar Box. The other properties are discussed below.

* [HeaderBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HeaderBackColor)
* [HeaderForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HeaderForeColor)
* [HeaderDirection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HeaderDirection)
* [HeaderFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HeaderFont)
* [HeaderTextAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HeaderTextAlign)
* [ClipHeaderText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_ClipHeaderText)

![Header settings](Overview_images/Overview_img106.jpeg)

{% tabs %}

{% highlight C# %}  

this.xpTaskBarBox1.HeaderBackColor = System.Drawing.Color.Bisque

this.xpTaskBarBox1.HeaderForeColor = System.Drawing.Color.Red;

this.xpTaskBarBox1.HeaderDirection = Syncfusion.Windows.Forms.Tools.XPTaskBarBox.HeaderDirectionFormat.RightToLeft;

this.xpTaskBarBox1.HeaderFont = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((System.Byte)(0)));

this.xpTaskBarBox1.HeaderTextAlign = System.Drawing.StringAlignment.Center;

this.xpTaskBarBox1.ClipHeaderText = true;

{% endhighlight %}

{% highlight VB %}

Me.xpTaskBarBox1.HeaderBackColor = System.Drawing.Color.Bisque

Me.xpTaskBarBox1.HeaderForeColor = System.Drawing.Color.Red

Me.xpTaskBarBox1.HeaderDirection = Syncfusion.Windows.Forms.Tools.XPTaskBarBox.HeaderDirectionFormat.RightToLeft

Me.xpTaskBarBox1.HeaderFont = New System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (CByte(0)))

Me.xpTaskBarBox1.HeaderTextAlign = System.Drawing.StringAlignment.Center

Me.xpTaskBarBox1.ClipHeaderText = True

{% endhighlight %}

{% endtabs %}

## Button settings

This section discusses the button settings of the XPTaskBar Box.

The collapsed button is used to expand or collapse the XPTaskBar Items. The following table lists the properties associated with collapsing or expanding the XPTaskBar Box.

* [Collapsed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_Collapsed)
* [ShowCollapseButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_ShowCollapseButton)
* [ToggleByButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_ToggleByButton)

{% tabs %}

{% highlight C# %}

this.xpTaskBarBox1.Collapsed = true;

this.xpTaskBarBox1.ShowCollapseButton = true;

this.xpTaskBarBox1.ToggleByButton = true;

{% endhighlight %}



{% highlight VB %} 

Me.xpTaskBarBox1.Collapsed = True

Me.xpTaskBarBox1.ShowCollapseButton = True

Me.xpTaskBarBox1.ToggleByButton = True

{% endhighlight %}

{% endtabs %}

![Button settings](Overview_images/Overview_img107.jpeg) 

The methods associated with the above properties are given below.

Methods table

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

## Animation settings

Animation during expanding/collapsing of the Taskbar items in an XPTaskBar can be controlled using the following properties.
Animation can also be enabled while adding or removing any TaskBar items.

* [AnimationDelay](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_AnimationDelay)
* [AnimationPositionsCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_AnimationPositionsCount)
* [UseAdditionalAnimation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_UseAdditionalAnimation)

{% tabs %}

{% highlight C# %}  

this.xpTaskBarBox1.AnimationDelay = 100;

this.xpTaskBarBox1.AnimationPositionsCount = 20;

this.xpTaskBarBox1.UseAdditionalAnimation = true;

{% endhighlight %}



{% highlight VB %}

Me.xpTaskBarBox1.AnimationDelay = 100

Me.xpTaskBarBox1.AnimationPositionsCount = 20

Me.xpTaskBarBox1.UseAdditionalAnimation = True

{% endhighlight %}

{% endtabs %}

 ![Animation settings](Overview_images/Overview_img108.jpeg) 


## Mouse hover settings

This section discusses the mouse hover settings of the XPTaskBar control.

The position of the mouse with respect to the control can be known using the properties given below.

* [HitTaskBoxArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HitTaskBoxArea)
* [HeaderHit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_HeaderHit)

{% tabs %}

{% highlight C# %}  

this.xpTaskBarBox1.HitTaskBoxArea= true;

this.xpTaskBarBox1.HeaderHit= true;

{% endhighlight %}



{% highlight VB %}

Me.xpTaskBarBox1.HitTaskBoxArea = True

Me.xpTaskBarBox1.HeaderHit = True

{% endhighlight %}

{% endtabs %}

## Integrating Child controls to the XPTaskBar box

To host multiple controls inside the XPTaskBar Boxes, we prefer the Panel control. We can set the panel's height using the [PreferredChildPanelHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_PreferredChildPanelHeight) property.

{% tabs %}

{% highlight C# %}

this.xpTaskBarBox1.PreferredChildPanelHeight = 35;

{% endhighlight %}

{% highlight VB %}

Me.xpTaskBarBox1.PreferredChildPanelHeight = 35

{% endhighlight %}

{% endtabs %}

![Integrating Child controls](Overview_images/Overview_img109.jpeg) 
PreferredChildPanelHeight = "35"
{:.caption}

## XPTaskBar- ToolTips

ToolTips can be provided for the TaskBar Items of the XPTaskBar Box. The interesting part is that tooltips can also be assigned for the disabled TaskBar Items.

The [ToolTipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarItem.html#Syncfusion_Windows_Forms_Tools_XPTaskBarItem_ToolTip) property of the XPTaskBar control can be used to set the text of the tooltip, while the tooltip can be displayed using the [ShowToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.XPTaskBarBox.html#Syncfusion_Windows_Forms_Tools_XPTaskBarBox_ShowToolTip) property.

{% tabs %}

{% highlight C# %}  

// Set the tooltip text for the XPTaskBar Item.

this.xpTaskBarBox1.Items[1].ToolTipText = "Header Image, Gradient Header Brush";

this.xpTaskBarBox1.ShowToolTip = true;

{% endhighlight %}




{% highlight VB %} 

' Set the tooltip text for the XPTaskBar Item.

Me.xpTaskBarBox1.Items(1).ToolTipText = "Header Image, Gradient Header Brush"

Me.xpTaskBarBox1.ShowToolTip = True

{% endhighlight %}

{% endtabs %}

![ToolTips](Overview_images/Overview_img110.jpeg)
