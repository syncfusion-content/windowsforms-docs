---
layout: post
title: Border-Settings | WindowsForms | Syncfusion
description: border settings
platform: WindowsForms
control: StatusBarAdv
documentation: ug
---

# Border Settings

This section illustrates the border settings available for the StatusBarAdv control.

The border settings for the StatusBarAdv control can be set through the properties listed below.

Property Table

<table>
<tr>
<th>
StatusBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows.RaisedOuter,SunkenOuter,RaisedInner,SunkenInner,Raised,Etched,Bump,Sunken,Adjust andFlat.</td></tr>
<tr>
<td>
BorderColor</td><td>
Indicates the color of the 2D border.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Indicates the 2D border style. The options included are as follows.Dotted,Dashed,Solid,Inset,Outset andNone.The BorderStyle property should be set to 'FixedSingle'.</td></tr>
<tr>
<td>
BorderSides</td><td>
Indicates the border sides of the control. The options included are given below.Left,Top,Right,Bottom,Middle andAll.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the panel should have a border. The options included are given below.FixedSingle,Fixed3D andNone.</td></tr>
</table>

N> The BorderColor and BorderSingle properties will have effect only when the BorderStyle property is set to 'FixedSingle'.

{% highlight c# %}



this.statusBarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedInner;

this.statusBarAdv1.BorderColor = System.Drawing.Color.DarkRed;

this.statusBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed;

this.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.statusBarAdv1.BorderSides = System.Windows.Forms.Border3DSide.All;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedInner

Me.statusBarAdv1.BorderColor = System.Drawing.Color.DarkRed

Me.statusBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed

Me.statusBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

Me.statusBarAdv1.BorderSides = System.Windows.Forms.Border3DSide.All

{% endhighlight %}

![](Overview_images/Overview_img68.jpeg)



N> The border of the StatusBarAdvPanels can also be set to enhance the look and feel of the panels. See Border Settings topic under StatusBarAdvPanel.

