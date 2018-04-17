---
layout: post
title: Text-Settings | WindowsForms | Syncfusion
description: text settings
platform: WindowsForms
control: ProgressBarAdv
documentation: ug
---

# Text settings

The below are ProgressBarAdv properties to customize the text and its alignment.

Property table

<table>
<tr>
<th>
ProgressBarAdv property</th><th>
Description</th></tr>
<tr>
<td>
TextAlignment</td><td>
The text on the progress bar can be set to left, center and right.</td></tr>
<tr>
<td>
TextOrientation</td><td>
Indicates the property which decides the orientation of the text.</td></tr>
<tr>
<td>
TextShadow</td><td>
Indicates the visibility of the text shadow.</td></tr>
<tr>
<td>
TextStyle</td><td>
Indicates the style of the text.</td></tr>
<tr>
<td>
TextVisible</td><td>
Determines if the text of the ProgressBarAdv is visible.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.progressBarAdv1.TextOrientation = System.Windows.Forms.Orientation.Horizontal;

this.progressBarAdv1.TextAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Center;

this.progressBarAdv1.TextStyle = Syncfusion.Windows.Forms.Tools.ProgressBarTextStyles.Value;

this.progressBarAdv1.TextShadow = false;

this.progressBarAdv1.TextVisible = true;

{% endhighlight %}

{% highlight VB %}

Me.progressBarAdv1.TextOrientation = System.Windows.Forms.Orientation.Horizontal

Me.progressBarAdv1.TextAlignment = Syncfusion.Windows.Forms.Tools.TextAlignment.Center

Me.progressBarAdv1.TextStyle = Syncfusion.Windows.Forms.Tools.ProgressBarTextStyles.Value

Me.progressBarAdv1.TextShadow = False

Me.progressBarAdv1.TextVisible = True

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img24.jpeg)





 