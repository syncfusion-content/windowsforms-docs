---
layout: post
title: Border-Settings
description: border settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Border Settings

Color and Styles can be applied to the border of the CheckBoxAdv as discussed below.

Table 401: Property Table

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows.{{ '_RaisedOuter,_' | markdownify }}{{ '_SunkenOuter,_' | markdownify }}{{ '_RaisedInner,_' | markdownify }}{{ '_SunkenInner,_' | markdownify }}{{ '_Raised,_' | markdownify }}{{ '_Etched,_' | markdownify }}{{ '_Bump,_' | markdownify }}{{ '_Sunken,_' | markdownify }}{{ '_Adjust and_' | markdownify }}{{ '_Flat_' | markdownify }}.The default value is set to 'Sunken'.</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the 2D border.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Indicates the 2D border style. The options included are as follows.{{ '_Dotted,_' | markdownify }}{{ '_Dashed,_' | markdownify }}{{ '_Solid,_' | markdownify }}{{ '_Inset,_' | markdownify }}{{ '_Outset and_' | markdownify }}{{ '_None._' | markdownify }}The BorderStyle property should be set to 'FixedSingle'.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the panel should have a border. The options included are given below.{{ '_FixedSingle,_' | markdownify }}{{ '_Fixed3D and_' | markdownify }}{{ '_None._' | markdownify }}</td></tr>
<tr>
<td>
HotBorderColor</td><td>
Specifies the color of the FixedSingle border when MouseOver.</td></tr>
</table>


{% highlight c# %}



this.checkBoxAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;

this.checkBoxAdv1.BorderColor = System.Drawing.Color.Red;

this.checkBoxAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;

this.checkBoxAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;



// BorderStyle must be set to 'FixedSingle'.

this.checkBoxAdv1.HotBorderColor = System.Drawing.Color.Blue;

{% endhighlight %}

{% highlight vbnet %}



Me.checkBoxAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump

Me.checkBoxAdv1.BorderColor = System.Drawing.Color.Red

Me.checkBoxAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted

Me.checkBoxAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle



' BorderStyle must be set to 'FixedSingle'.

Me.checkBoxAdv1.HotBorderColor = System.Drawing.Color.Blue

{% endhighlight %}

![](Overview_images/Overview_img618.jpeg)



![](Overview_images/Overview_img619.jpeg)


A Sample which demonstrates the Border Settings of CheckBoxAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_