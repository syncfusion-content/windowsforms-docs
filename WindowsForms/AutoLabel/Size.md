---
layout: post
title: Size
description: Size
platform: windowsforms
control: Editors Package
documentation: ug
---


# Size

This section illustrates the size settings of the AutoLabel control.

The AutoLabel control can be resized using the below given property.

Table 388: Property Table

<table>
<tr>
<td>
AutoLabel Property</td><td>
Description</td></tr>
<tr>
<td>
AutoSize</td><td>
Enables automatic resizing based on font size.</td></tr>
</table>

> Note: This is valid only for label controls that do not wrap text.


{% highlight C# %}



this.autoLabel1.AutoSize = true;

{% endhighlight %}



{% highlight vbnet %}




Me.autoLabel1.AutoSize = True
{% endhighlight %}