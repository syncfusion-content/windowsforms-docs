---
layout: post
title: Scroll-Settings
description: scroll settings
platform: WindowsForms
control: WizardPackage 
documentation: ug
---

# Scroll Settings

XPTaskPane Enables vertical scrolling for the pages using VerticalScroll property. On mouse hovering over the scroll bar, the taskpage automatically moves and show the hidden contents. Scrolling speed can be fixed using ScrollSpeed property.

_Table_ _976_: Property Table

<table>
<tr>
<th>
XPTaskPane Property</th><th>
Description</th></tr>
<tr>
<td>
ScrollSpeed</td><td>
Specifies the scrolling speed. Default value is 10.</td></tr>
<tr>
<td>
VerticalScroll</td><td>
Enables scroll buttons that occupy vertical space instead of default horizontal space.</td></tr>
</table>


{% highlight c# %}



this.xpTaskPane1.ScrollSpeed= 20;

this.xpTaskPane1.VerticalScroll = true;

{% endhighlight %}

{% highlight vbnet %}



Me.xpTaskPane1.ScrollSpeed = 20

Me.xpTaskPane1.VerticalScroll = True

{% endhighlight %}

![](Scroll-Settings_images/Scroll-Settings_img1.jpeg)



