---
layout: post
title: Padding | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: XPTaskBar
documentation: ug
--- 
# Padding

## Padding Settings for XPTaskBar

The interior spacing of the XPTaskBar control can be specified by setting the DockPadding property to integer values.

The horizontal and vertical padding can be specified using the HorizontalPadding and VerticalPadding properties. The default value of the both is 'Zero'.

_Table 589: Property Table_

<table>
<tr>
<th>
XPTaskBar Property</th><th>
Description</th></tr>
<tr>
<td>
DockPadding</td><td>
Specifies dock padding settings for all edges of the control.</td></tr>
<tr>
<td>
HorizontalPadding</td><td>
Specifies horizontal spacing between the layout taskbar.</td></tr>
<tr>
<td>
VerticalPadding</td><td>
Specifies vertical spacing between the layout taskbar.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBar1.DockPadding.All = 10;

this.xpTaskBar1.HorizontalPadding = 3;

this.xpTaskBar1.VerticalPadding = 3;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.DockPadding.All = 10

Me.xpTaskBar1.HorizontalPadding = 3

Me.xpTaskBar1.VerticalPadding = 3

{% endhighlight %}



 ![](Overview_images/Overview_img113.jpeg) 

### Padding Settings for XPTaskBar Box Header

Padding provides spacing between the text of the header and it's borders. Horizontal and vertical padding can be set using the PADX and PADY properties.

_Table 590: Property Table_

<table>
<tr>
<th>
XPTaskBar Box Property</th><th>
Description</th></tr>
<tr>
<td>
PADX</td><td>
It sets horizontal padding provided in pixels between the text of the header and header's left and right borders. The default value is '5'.</td></tr>
<tr>
<td>
PADY</td><td>
It sets vertical padding provided in pixels between the text of the header and header's top and bottom borders. The default value is '5'.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBarBox1.PADX = 7;

this.xpTaskBarBox1.PADY = 7;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBarBox1.PADX = 7

Me.xpTaskBarBox1.PADY = 7

{% endhighlight %}



The following figure displays the XPTaskBar Box with padding settings.

 ![](Overview_images/Overview_img114.jpeg) 
