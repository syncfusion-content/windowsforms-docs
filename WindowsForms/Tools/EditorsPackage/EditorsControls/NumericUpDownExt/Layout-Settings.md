---
layout: post
title: Layout-Settings
description: layout settings
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Layout Settings

The layout settings of the NumericUpDownExt control are discussed in this section.

The size of the NumericUpDownExt control can be set according to the needs of the user using the properties discussed below.

_Table_ _363_: _Property Table_

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


{% highlight c# %}



this.numericUpDownExt1.MaximumSize = new System.Drawing.Size(60, 50);

this.numericUpDownExt1.MinimumSize = new System.Drawing.Size(60, 50);

{% endhighlight %}

{% highlight vbnet %}



Me.numericUpDownExt1.MaximumSize = New System.Drawing.Size(60, 50)

Me.numericUpDownExt1.MinimumSize = New System.Drawing.Size(60, 50)

{% endhighlight %}

![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/Editor_NumericUpDownExt_Features10.png](Layout-Settings_images/Layout-Settings_img1.png)



