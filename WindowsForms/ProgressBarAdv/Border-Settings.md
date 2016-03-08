---
layout: post
title: Border-Settings | Windows Forms | Syncfusion
description: border settings
platform: windowsforms
control: ProgressBarAdv
documentation: ug
---

# Border Settings

This section discusses the border settings of the ProgressBarAdv control.

_Table_ _613_: _Property Table_

<table>
<tr>
<th>
ProgressBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Determines the style of the 3D border. It includes the following options.{{ '_RaisedOuter,_' | markdownify }}{{ '_SunkenOuter,_' | markdownify }}{{ '_RaisedInner,_' | markdownify }}{{ '_Raised,_' | markdownify }}{{ '_Etched,_' | markdownify }}{{ '_SunkenInner,_' | markdownify }}{{ '_Bump,_' | markdownify }}{{ '_Sunken,_' | markdownify }}{{ '_Adjust and_'  | markdownify }}{{ '_Flat._' | markdownify }}</td></tr>
<tr>
<td>
BorderColor</td><td>
Indicates the color of the border.This will be applied to the control only when the BorderStyle property is set to 'FixedSingle'.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Determines the style of the 2D border. The options included are as follows.Dashed, Dotted, Solid, Inset,Outset andNone.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Determines the style of the border. It includes the following options.FixedSingle,Fixed3D andNone.</td></tr>
</table>

{% highlight c# %}

this.progressBarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedOuter;

this.progressBarAdv1.BorderColor = System.Drawing.Color.Black;

this.progressBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed;

this.progressBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}

{% highlight vbnet %}

Me.progressBarAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedOuter 

Me.progressBarAdv1.BorderColor = System.Drawing.Color.Black 

Me.progressBarAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dashed 

Me.progressBarAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

{% endhighlight %}

![](Overview_images/Overview_img23.jpeg) 


