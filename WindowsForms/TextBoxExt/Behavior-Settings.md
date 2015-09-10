---
layout: post
title: Behavior-Settings | WindowsForms | Syncfusion
description: behavior settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Behavior Settings

The behavior settings of the TextBoxExt control are discussed below.

## MaxLength

The maximum length of the text can be set using the property given below.

Table 373 : Property Table

<table>
<tr>
<th>
TextBoxExt Property</th><th>
Description</th></tr>
<tr>
<td>
MaxLength</td><td>
Specifies the maximum number of characters that can be entered into the edit control. The default value is set to '32767'.</td></tr>
</table>


{% highlight c# %}



this.textBoxExt1.MaxLength = 32800;               

{% endhighlight %}

{% highlight vbnet %}

Me.textBoxExt1.MaxLength = 32800

{% endhighlight %}

### ReadOnly

The ReadOnly mode can be enabled for the TextBoxExt control using the below given property.

Table 374 : Property Table

<table>
<tr>
<th>
TextBoxExt Property</th><th>
Description</th></tr>
<tr>
<td>
ReadOnly</td><td>
Specifies whether the text in the edit control can be changed or not.</td></tr>
</table>


{% highlight c# %}

this.textBoxExt1.ReadOnly = true;

{% endhighlight %}

{% highlight vbnet %}

Me.textBoxExt1.ReadOnly = True

{% endhighlight %}

A sample which demonstrates the ReadOnly mode of TextBoxExt control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

