---
layout: post
title: Appearance-Settings | WindowsForms | Syncfusion
description: appearance settings
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Appearance Settings

## Background settings

The background settings of the TextBoxExt control are discussed below.

### Background color

The background color of the control can be set using the property given below.

Property Table

<table>
<tr>
<th>
TextBoxExt Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Specifies the background color of the component.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.textBoxExt1.BackColor = System.Drawing.Color.Moccasin;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.BackColor = System.Drawing.Color.Moccasin

{% endhighlight %}
{% endtabs %}

![](Appearance-Settings_images/Appearance-Settings_img1.png)

## Foreground settings

The foreground settings of the TextBoxExt control are discussed below.

### Foreground color

The foreground color of the control can be set using the property given below.

Property Table

<table>
<tr>
<th>
TextBoxExt Property</th><th>
Description</th></tr>
<tr>
<td>
ForeColor</td><td>
Gets / sets the foreground color of the spin box (also known as an up-down control).</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.textBoxExt1.ForeColor = System.Drawing.Color.LightSeaGreen;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.ForeColor = System.Drawing.Color.LightSeaGreen

{% endhighlight %}
{% endtabs %}

![](Appearance-Settings_images/Appearance-Settings_img2.png)

## Visual style

Visual styles for the TextBoxExt can be specified using TextBoxExt.Style property. The various styles are,

* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray
* Metro
* Office2010
* Office2007 
* Default

{% tabs %}
{% highlight c# %}

this.textBoxExt1.Style = TextBoxExt.theme.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.Style = TextBoxExt.theme.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![](Appearance-Settings_images/Appearance-Settings_img3.png) 

