---
layout: post
title: Alignment-Settings | WindowsForms | Syncfusion
description: alignment settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Alignment Settings

This section discusses the alignment settings of the RadioButtonAdv.

## Text Alignment

Text in the RadioButtonAdv can be aligned to the desired location as given below.

Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TextContentAlignment</td><td>
Indicates the alignment of the text. The default value is set to 'MiddleLeft'.The options included are as follows.{{ '_TopLeft,_' | markdownify }} {{ '_TopCenter,_' | markdownify }} {{ '_TopRight,_' | markdownify }} {{ '_MiddleLeft,_' | markdownify }} {{ '_MiddleCenter,_' | markdownify }} {{ '_MiddleRight,_' | markdownify }} {{ '_BottomLeft,_' | markdownify }} {{ '_BottomCenter and_' | markdownify }} {{ '_BottomRight._' | markdownify }} WrapText property must be set to 'False'. Refer Text Settings.</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter;

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.TextContentAlignment = System.Drawing.ContentAlignment.MiddleCenter

{% endhighlight %}

![](Overview_images/Overview_img634.jpeg) 


## RadioButton Alignment

The RadioButton itself can be aligned to any desired location that can be chosen from the options given in the following property.

Property Table

<table>
<tr>
<th>
RadioButtonAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
CheckAlign</td><td>
Indicates the alignment of the RadioButton. The default value is set to 'MiddleLeft'.The options included are as follows.{{ '_TopLeft,_' | markdownify }} {{ '_TopCenter,_' | markdownify }} {{ '_TopRight,_' | markdownify }} {{ '_MiddleLeft,_' | markdownify }} {{ '_MiddleCenter,_' | markdownify }} {{ '_MiddleRight,_' | markdownify }} {{ '_BottomLeft,_' | markdownify }} {{ '_BottomCenter and_' | markdownify }} {{ '_BottomRight._' | markdownify }}</td></tr>
</table>


{% highlight c# %}



this.radioButtonAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;

{% endhighlight %}

{% highlight vbnet %}



Me.radioButtonAdv1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight

{% endhighlight %}

![](Overview_images/Overview_img635.jpeg)


A Sample which demonstrates the Text and RadioButton Alignment features of CheckBoxAdv is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{%seealso%}

Text Settings, RadioButtonAdv Settings

{%endseealso%}