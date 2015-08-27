---
layout: post
title: Header Settings 
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# Header Settings 

This section lists the properties used for customizing the header of the XPTaskBar Box.

The Header of the XPTaskBar Box contains the Collapse button and text. The header text can be changed using the Text property of the XPTaskBar Box. The other properties are discussed below.

_Table_ _581__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
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
Figure 1007: Header Settings Illustrated


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