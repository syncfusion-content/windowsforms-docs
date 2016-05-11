---
layout: post
title: Alignment-Settings | WindowsForms | Syncfusion
description: alignment settings
platform: WindowsForms
control: StatusBarAdv
documentation: ug
---

# Alignment Settings

The panels and child controls that are added to the StatusBarAdv control can be aligned according to the needs of the user using the property given below.

Property Table

<table>
<tr>
<th>
StatusBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Alignment</td><td>
Determines the alignment of the panels. The options included are given below.Center,Near,Far andChildConstraints.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdv1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Center;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdv1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.Center

{% endhighlight %}

![](Overview_images/Overview_img73.jpeg) 



If the Alignment property is set to 'ChildConstraints', the positioning and resizing of the panels and child controls can be set by calling the SetHAlign() method.

Method Table

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
SetHAlign</td><td>
Sets the horizontal alignment options for the control.</td></tr>
</table>


The parameters discussed for the SetHAlign() method are as follows.

Parameter Table

<table>
<tr>
<th>
Parameters</th><th>
Description</th></tr>
<tr>
<td>
control</td><td>
The control whose HAlign has to be set.</td></tr>
<tr>
<td>
align</td><td>
Represents the alignment option to be set for the specified control. It includes the options given below.Center,Left,Right andJustify.The 'Justify' option will expand the panel to occupy any extra spaces in the control.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdv1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints;



// Sets the horizontal alignment using the SetHAlign() method.

this.statusBarAdv1.SetHAlign(this.statusBarAdvPanel1, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify);

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdv1.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints



' Sets the horizontal alignment using the SetHAlign() method.

Me.statusBarAdv1.SetHAlign(Me.statusBarAdvPanel1, Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Justify)

{% endhighlight %}

![](Overview_images/Overview_img74.jpeg) 


N> The panels can be aligned using the HAlign property of the StatusBarAdvPanel control. See Alignment Settings topic under StatusBarAdvPanel.

