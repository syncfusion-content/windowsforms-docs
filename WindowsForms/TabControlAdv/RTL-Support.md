---
layout: post
title: RTL-Support | WindowsForms | Syncfusion
description: rtl support
platform: WindowsForms
control: TabControlAdv 
documentation: ug
---


# RTL Support

TabControlAdv allows the TabItems to be drawn from right to left. This can be done by setting the `RightToLeft` property to Yes.

This property aligns the Tabs and the text from right to left which proves to be helpful for the Right-To-Left languages.

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Specifies to draw the tabs and the text from right to left. The default value is No.</td></tr>
</table>

![](RTL-Support_images/RTL-Support_img1.jpeg)

## Rotating Tabs

`RotateTabsWhenRTL` property can be used to rotate the tabs which are aligned to the left and right of the TabPages. This specifies whether a tab should be drawn from left to right or from right to left. The default value is False.

When the RightToLeft mode is activated and `RotateTabsWhenRTL` property is enabled, tab rotation is allowed.

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RotateTabsWhenRTL</td><td>
Gets / sets the value that decides whether the tabs can be rotated, when the RightToLeft mode is activated.</td></tr>
</table>


![](RTL-Support_images/RTL-Support_img2.jpeg)

{% tabs %}

{% highlight c# %}


this.tabControlAdv1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

this.tabControlAdv1.RotateTabsWhenRTL = true;

{% endhighlight %}

{% highlight vbnet %}


Me.tabControlAdv1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

Me.tabControlAdv1.RotateTabsWhenRTL = True

{% endhighlight %}

{% endtabs %}


## Rotating Text

`RotateTextWhenVertical` property can be used to rotate the text of the TabItems which are aligned to the left and right of the TabPages. This displays the tabs horizontally and provides better user readability.

<table>
<tr>
<th>
TabControlAdv Property</th><th>
Description</th></tr>
<tr>
<td>
RotateTextWhenVertical</td><td>
Specifies to rotate the text along with the tab to draw the text horizontally.</td></tr>
</table>


![](RTL-Support_images/RTL-Support_img3.jpeg)

{% tabs %}

{% highlight c# %}

this.tabControlAdv1.RotateTextWhenVertical = true;

{% endhighlight %}

{% highlight vbnet %}

Me.tabControlAdv1.RotateTextWhenVertical = True

{% endhighlight %}

{% endtabs %}

