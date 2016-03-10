---
layout: post
title: Scroll Support | WindowsForms | Syncfusion
description: Scroll Support
platform: WindowsForms
control: Editors Package
documentation: ug
---


# Scroll Support

We can enable scrollbars automatically for the PopupContainer control, when its items are shown beyond its size by setting AutoScroll to true. When AutoScroll is enabled for the control, we can set the margin and logical size for the autoscroll region by AutoScrollMargin and AutoScrollMinSize properties.

Property Table

<table>
<tr>
<th>
PopupControlContainer  Properties</th><th>
Description</th></tr>
<tr>
<td>
AutoScroll</td><td>
It indicates whether Scrollbars will automatically appear if  controls are placed outside the form's client area.</td></tr>
<tr>
<td>
AutoScrollMargin</td><td>
It sets margin around the controls during AutoScroll.</td></tr>
<tr>
<td>
AutoScrollMinSize</td><td>
It sets the minimum logical size for the AutoScroll region.</td></tr>
</table>




{% highlight C# %}


this.popupControlContainer1.AutoScroll = true;

this.popupControlContainer1.AutoScrollMargin = new System.Drawing.Size(2, 2);

this.popupControlContainer1.AutoScrollMinSize = new System.Drawing.Size(3, 3);

{% endhighlight %}




{% highlight vbnet %}


Me.popupControlContainer1.AutoScroll = True

Me.popupControlContainer1.AutoScrollMargin = New System.Drawing.Size(2, 2)

Me.popupControlContainer1.AutoScrollMinSize = New System.Drawing.Size(3, 3)
{% endhighlight %}