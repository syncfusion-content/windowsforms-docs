---
layout: post
title: Border Settings | WindowsForms | Syncfusion
description: border settings
platform: WindowsForms
control: Tools
documentation: ug
---


# Border Settings

Color and Styles can be applied to the border of the IntegerTextBox control as discussed below.



<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows:
RaisedOuter,
SunkenOuter,
RaisedInner,
SunkenInner,
Raised,
Etched,
Bump,
Sunken,
Adjust and
Flat.
The default value is set to 'Sunken'.</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the 2D border.</td></tr>
<tr>
<td>
BorderSides</td><td>
Indicates the border sides of the panel. The options are as follows.
Left,
Top,
Right,
Bottom,
Middle and All.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the edit control should have a border. The options included are given below:
FixedSingle,
Fixed3D and None.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;

this.integerTextBox1.BorderColor = System.Drawing.Color.Red;

this.integerTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All;

this.integerTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{%endhighlight%}




{%highlight vbnet%}
Me.integerTextBox1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump

Me.integerTextBox1.BorderColor = System.Drawing.Color.Red

Me.integerTextBox1.BorderSides = System.Windows.Forms.Border3DSide.All

Me.integerTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{%endhighlight%}

![](Overview_images/Overview_img458.png) 


A sample which demonstrates the Border Settings of IntegerTextBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_
