---
layout: post
title: Size
description: Size
platform: WindowsForms
control: AutoLabel
documentation: ug
---


# Size

This section illustrates the size settings of the AutoLabel control.

The AutoLabel control can be resized using the below given property.

<table>
<tr>
<th>
AutoLabel Property</th><th>
Description</th></tr>
<tr>
<td>
AutoSize</td><td>
Enables automatic resizing based on font size.</td></tr>
</table>

N> This is valid only for label controls that do not wrap text.


{% highlight c# %}

this.autoLabel1.AutoSize = true;

{% endhighlight %}



{% highlight vbnet %}

Me.autoLabel1.AutoSize = True

{% endhighlight %}