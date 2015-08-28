---
layout: post
title: Paint Style
description: paint style
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Paint Style

The MenuItem can be displayed as a TextOnly, ImageOnly or Image and Text using PaintStyle property.

![](Overview_images/Overview_img67.jpeg) 



_Table481: Property Table_

<table>
<tr>
<th>
BarItem Property</th><th>
Description</th></tr>
<tr>
<td>
PaintStyle</td><td>
Indicates the painting style of the bar item.{{ '_Default_' | markdownify }} - Displays the style of it parents. In case of MainMenu, only text will be drawn, in other toolbars only image and in Dropdown menu, image and text will be drawn.{{ '_TextOnly_' | markdownify }} - Displays only Text.{{ '_TextOnlyInMenus_' | markdownify }} - Image will be ignored when the BarItem is in a drop down menu.{{ '_ImageAndText_' | markdownify }} - Both Image and Text will be drawn.</td></tr>
</table>




{% highlight c# %}

this.barItem4.PaintStyle = PaintStyle.ImageAndText;

{% endhighlight  %}
{% highlight vbnet %}





Me.barItem4.PaintStyle = PaintStyle.ImageAndText
{% endhighlight  %}


![](Overview_images/Overview_img68.jpeg) 



![](Overview_images/Overview_img69.jpeg) 



See Also

Types of Bar Items
