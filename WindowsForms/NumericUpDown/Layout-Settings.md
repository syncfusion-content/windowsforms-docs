---
layout: post
title: Layout Settings in Windows Forms NumericUpdown | Syncfusion®
description: Layout settings in Windows Forms NumericUpdown enable configuring minimum and maximum control sizes to support flexible layout design.
platform: WindowsForms
control: NumericUpdown
documentation: ug
---

# Layout Settings in Windows Forms NumericUpdown

The layout settings of the NumericUpdown control are discussed in this section.

The size of the NumericUpdown control can be set according to the needs of the user using the properties discussed below.

<table>
<tr>
<th>
NumericUpdown Properties</th><th>
Description</th></tr>
<tr>
<td>
MaximumSize</td><td>
Gets / sets the maximum size for the control.</td></tr>
<tr>
<td>
MinimumSize</td><td>
Gets / sets the minimum size for the control.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.numericUpDownExt1.MaximumSize = new System.Drawing.Size(60, 50);
this.numericUpDownExt1.MinimumSize = new System.Drawing.Size(60, 50);

{% endhighlight %}

{% highlight vb %}

Me.numericUpDownExt1.MaximumSize = New System.Drawing.Size(60, 50)
Me.numericUpDownExt1.MinimumSize = New System.Drawing.Size(60, 50)

{% endhighlight %}
{% endtabs %}

![Layout-Settings_img1](Layout-Settings_images/Layout-Settings_img1.png)
