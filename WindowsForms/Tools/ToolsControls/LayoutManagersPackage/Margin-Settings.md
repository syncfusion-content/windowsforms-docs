---
layout: post
title: Margin Settings
description: margin settings
control: Layout Managers Package
documentation: ug
---
# Margin Settings

The margin settings that are common to all the Layout Managers are discussed below.

The layout bounds will also be adjusted to include some margin space along the borders according to the values specified in the properties given below. The default values of these properties are set to 'Zero'.

_Table428: Property Table_

<table>
<tr>
<th>
LayoutManager Properties</th><th>
Description</th></tr>
<tr>
<td>
TopMargin</td><td>
Gets / sets the top margin between the client rectangle and the layout rectangle.</td></tr>
<tr>
<td>
HorzNearMargin</td><td>
Gets / sets the left margin between the client rectangle and the layout rectangle.</td></tr>
<tr>
<td>
HorzFarMargin</td><td>
Gets / sets the right margin between the client rectangle and the layout rectangle.</td></tr>
<tr>
<td>
BottonMargin</td><td>
Gets / sets the bottom margin between the client rectangle and the layout rectangle.</td></tr>
</table>


{% highlight c# %}



this.borderLayout1.TopMargin = 20;

this.borderLayout1.HorzFarMargin = 20;

this.borderLayout1.HorzNearMargin = 20;

this.borderLayout1.BottomMargin = 20;







Me.borderLayout1.TopMargin = 20

Me.borderLayout1.HorzFarMargin = 20

Me.borderLayout1.HorzNearMargin = 20

Me.borderLayout1.BottomMargin = 20

{% endhighlight  %}
![](Overview_images/Overview_img11.jpeg) | markdownify }



See Also

Configuring BorderLayout, Configuring FlowLayout, Configuring GridLayout

