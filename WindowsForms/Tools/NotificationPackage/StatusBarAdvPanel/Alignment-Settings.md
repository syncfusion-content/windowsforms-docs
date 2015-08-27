---
layout: post
title: Alignment-Settings
description: alignment settings
platform: windowsforms
control: Notification Package 
documentation: ug
---

# Alignment Settings

This section discusses the alignment settings of the StatusBarAdvPanel control.

The contents of the StatusBarAdvPanel can be aligned using the property given below.

_Table_ _674_: _Property Table_

<table>
<tr>
<td>
StatusBarAdvPanel Property</td><td>
Description</td></tr>
<tr>
<td>
Alignment</td><td>
Indicates the alignment type of the text and icon of the panel. The options included are as follows.Left,Right andCenter.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdvPanel1.Alignment = System.Windows.Forms.HorizontalAlignment.Left;

{% endhighlight %}

{% highlight vbnet %}

Me.statusBarAdvPanel1.Alignment = System.Windows.Forms.HorizontalAlignment.Left

{% endhighlight %}

![](Overview_images/Overview_img91.jpeg) 


### HAlign

The horizontal alignment of the StatusBarAdvPanels in the StatusBarAdv control can be customized using the property given below.

_Table_ _675_: _Property Table_

<table>
<tr>
<td>
StatusBarAdvPanel Property</td><td>
Description</td></tr>
<tr>
<td>
HAlign</td><td>
Indicates the horizontal alignment in the FlowLayout. It includes the options given below.Left,Right,Center andJustify.The 'Justify' option will expand the panel to occupy any extra spaces in the control.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdvPanel1.HAlign = Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Left;

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdvPanel1.HAlign = Syncfusion.Windows.Forms.Tools.HorzFlowAlign.Left;

{% endhighlight %}

![](Overview_images/Overview_img92.jpeg) 



