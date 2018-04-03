---
layout: post
title: Alignment | WindowsForms | Syncfusion
description: alignment
platform: WindowsForms
control: TabControlAdv 
documentation: ug
---

# Alignment

Alignment of the tabs can be set through the below properties.

<table>
<tr>
<th>
TabControlAdv property</th><th>
Description</th></tr>
<tr>
<td>
Alignment</td><td>
Specifies the alignment of tab items with respect to the tab pages. The options include:Top,Bottom,Left,Right</td></tr>
<tr>
<td>
VerticalAlignment</td><td>
Specifies whether the tabs are aligned to the Top, Bottom, or based on the RightToLeft property when aligned vertically.</td></tr>
<tr>
<td>
TabGap</td><td>
Specifies the space between the tab items.</td></tr>
<tr>
<td>
Top</td><td>
Gets/sets the distance, in pixels, between the top edge of the control and the top edge of the container's client area.</td></tr>
<tr>
<td>
Right</td><td>
Gets/sets the distance, in pixels, between the right edge of the control and the left edge of the container's client area.</td></tr>
</table>


![](Styles-Settings_images/Styles-Settings_img5.jpeg)

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.Alignment = System.Windows.Forms.TabAlignment.Left;

this.tabControlAdv1.TabGap = 2;

{% endhighlight %}

{% highlight VB %}



Me.tabControlAdv1.Alignment = System.Windows.Forms.TabAlignment.Left

Me.tabControlAdv1.TabGap = 2

{% endhighlight %}

{% endtabs %}


## Text alignment

The below properties deals with alignment of the text in the TabControlAdv:

<table>
<tr>
<th>
TabPageAdv Property</th><th>
Description</th></tr>
<tr>
<td>
TextAlignment</td><td>
Specifies horizontal alignment for the text of the tab item.</td></tr>
<tr>
<td>
TextLineAlignment</td><td>
Specifies vertical alignment for the text of the tab item.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.tabControlAdv1.TextAlignment = System.Drawing.StringAlignment.Far;

this.tabControlAdv1.TextLineAlignment = System.Drawing.StringAlignment.Near;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.TextAlignment = System.Drawing.StringAlignment.Far

Me.tabControlAdv1.TextLineAlignment = System.Drawing.StringAlignment.Near

{% endhighlight %}

{% endtabs %}


## Multiline support

Multiple level of tabs can be created by setting the `Multiline` property of the TabControlAdv to true, which places the tabs in more than one line. This allows the tabs to be arranged in multiple lines when the tabs exceed the width of the control, with all the TabItems in view.

The TabItem's text can be placed in more than one line by setting the `MultilineText` property.

The `KeepSelectedTabInFrontRow` property will bring the selected tab to the front row (applicable only in the case of multiline tabs).

<table>
<tr>
<th>
TabControlAdv property</th><th>
Description</th></tr>
<tr>
<td>
Multiline</td><td>
Allows the tabs to be arranged in multiple lines when the tabs exceed the width of the control, with all the TabItems in view.</td></tr>
<tr>
<td>
MultilineText</td><td>
Allows the tab item's text to be placed in more than one line.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.tabControlAdv1.Multiline = true;

this.tabControlAdv1.MultilineText = true;

this.tabControlAdv1.KeepSelectedTabInFrontRow = true;

{% endhighlight %}

{% highlight VB %}



Me.tabControlAdv1.Multiline = True

Me.tabControlAdv1.MultilineText = True

Me.tabControlAdv1.KeepSelectedTabInFrontRow = True

{% endhighlight %}

{% endtabs %}

![](TabControlAdv_images/TabControlAdv_img5.jpeg)


## RTL support

TabControlAdv allows the TabItems to be drawn from right to left. This can be done by setting the `RightToLeft` property to Yes.

This property aligns the tabs and the text from right to left which proves to be helpful for the Right-To-Left languages.

<table>
<tr>
<th>
TabControlAdv property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Specifies to draw the tabs and the text from right to left. The default value is No.</td></tr>
</table>

![](RTL-Support_images/RTL-Support_img1.jpeg)

### Rotating tabs

The `RotateTabsWhenRTL` property can be used to rotate the tabs which are aligned to the left and right of the TabPages. This specifies whether a tab should be drawn from left to right or from right to left. The default value is False.

When the RightToLeft mode is activated and `RotateTabsWhenRTL` property is enabled, tab rotation is allowed.

<table>
<tr>
<th>
TabControlAdv property</th><th>
Description</th></tr>
<tr>
<td>
RotateTabsWhenRTL</td><td>
Gets/sets the value that decides whether the tabs can be rotated, when the RightToLeft mode is activated.</td></tr>
</table>


![](RTL-Support_images/RTL-Support_img2.jpeg)

{% tabs %}

{% highlight C# %}


this.tabControlAdv1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

this.tabControlAdv1.RotateTabsWhenRTL = true;

{% endhighlight %}

{% highlight VB %}


Me.tabControlAdv1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

Me.tabControlAdv1.RotateTabsWhenRTL = True

{% endhighlight %}

{% endtabs %}


### Rotating text

The `RotateTextWhenVertical` property can be used to rotate the text of the TabItems which are aligned to the left and right of the TabPages. This displays the tabs horizontally and provides better user readability.

<table>
<tr>
<th>
TabControlAdv property</th><th>
Description</th></tr>
<tr>
<td>
RotateTextWhenVertical</td><td>
Specifies to rotate the text along with the tab to draw the text horizontally.</td></tr>
</table>


![](RTL-Support_images/RTL-Support_img3.jpeg)

{% tabs %}

{% highlight C# %}

this.tabControlAdv1.RotateTextWhenVertical = true;

{% endhighlight %}

{% highlight VB %}

Me.tabControlAdv1.RotateTextWhenVertical = True

{% endhighlight %}

{% endtabs %}