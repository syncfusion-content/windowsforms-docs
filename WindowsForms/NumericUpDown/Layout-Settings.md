---
layout: post
title: Layout Settings in Windows Forms NumericUpDown control | Syncfusion
description: Learn about Layout Settings support in Syncfusion Windows Forms NumericUpDown (NumericUpDownExt) control and more details.
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Layout Settings in Windows Forms NumericUpDown (NumericUpDownExt)

The layout settings of the NumericUpDownExt control are discussed in this section.

The size of the NumericUpDownExt control can be set according to the needs of the user using the properties discussed below.

<table>
<tr>
<th>
NumericUpDownExt Properties</th><th>
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
