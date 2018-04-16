---
layout: post
title: Scroll-Settings | WindowsForms | Syncfusion
description: scroll settings
platform: WindowsForms
control: Wizard
documentation: ug
---

# Scroll settings

XPTaskPane Enables vertical scrolling for the pages using VerticalScroll property. On mouse hovering over the scroll bar, the task page automatically moves and show the hidden contents. Scrolling speed can be fixed using ScrollSpeed property.

Property table

<table>
<tr>
<th>
XPTaskPane property</th><th>
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

{% tabs %}

{% highlight C# %}



this.xpTaskPane1.ScrollSpeed= 20;

this.xpTaskPane1.VerticalScroll = true;

{% endhighlight %}

{% highlight VB %}



Me.xpTaskPane1.ScrollSpeed = 20

Me.xpTaskPane1.VerticalScroll = True

{% endhighlight %}

{% endtabs %}

![](Scroll-Settings_images/Scroll-Settings_img1.jpeg)



