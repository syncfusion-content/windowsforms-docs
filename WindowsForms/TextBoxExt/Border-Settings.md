---
layout: post
title: Border-Settings
description: border settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Border Settings

The border settings of the TextBoxExt control are discussed in this section.

Color and Styles can be applied to the border of the TextBoxExt control as discussed below.

Table 375 : Property Table

<table>
<tr>
<th>
TextBoxExt Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows:{{ '_RaisedOuter,_' | markdownify }}{{ '_SunkenOuter,_' | markdownify }}{{ '_RaisedInner,_' | markdownify }}{{ '_SunkenInner,_' | markdownify }}{{ '_Raised,_' | markdownify }}{{ '_Etched,_' | markdownify }}{{ '_Bump,_' | markdownify }}{{ '_Sunken,_' | markdownify }}{{ '_Adjust and_' | markdownify }}{{ '_Flat._' | markdownify }}The default value is set to 'Sunken'.</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the 2D border.</td></tr>
<tr>
<td>
BorderSides</td><td>
Indicates the border sides of the panel. The options included are as follows:{{ '_Left,_' | markdownify }}{{ '_Top,_' | markdownify }}{{ '_Right,_' | markdownify }}{{ '_Bottom,_' | markdownify }}{{ '_Middle and_' | markdownify }}{{ '_All._' | markdownify }}</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the edit control should have a border. The options included are given below:{{ '_FixedSingle,_' | markdownify }}{{ '_Fixed3D and_' | markdownify }}{{ '_None._' | markdownify }}</td></tr>
</table>


{% highlight c# %}



this.textBoxExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised;

this.textBoxExt1.BorderColor = System.Drawing.Color.Orchid

this.textBoxExt1.BorderSides = System.Windows.Forms.Border3DSide.All;

this.textBoxExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}

{% highlight vbnet %}



Me.textBoxExt1.Border3DStyle = System.Windows.Forms.Border3DStyle.Raised

Me.textBoxExt1.BorderColor = System.Drawing.Color.Orchid

Me.textBoxExt1.BorderSides = System.Windows.Forms.Border3DSide.All

Me.textBoxExt1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

{% endhighlight %}

![](Border-Settings_images/Border-Settings_img1.png)



A sample which demonstrates the Border Settings of TextBoxExt control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

