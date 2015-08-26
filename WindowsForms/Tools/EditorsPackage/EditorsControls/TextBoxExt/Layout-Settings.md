---
layout: post
title: Layout-Settings
description: layout settings
platform: windowsforms
control: EditorsPackage
documentation: ug
---

## Layout Settings

The layout settings of the TextBoxExt control are discussed in this section.

The size of the TextBoxExt control can be set according to the needs of the user using the properties discussed below.

_Table_ _376_: Property Table

<table>
<tr>
<th>
TextBoxExt Properties</th><th>
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



this.textBoxExt1.MaximumSize = new System.Drawing.Size(150, 20);

this.textBoxExt1.MinimumSize = new System.Drawing.Size(150, 20);

{% endhighlight %}

{% highlight vbnet %}



Me.textBoxExt1.MaximumSize = New System.Drawing.Size(150, 20)

Me.textBoxExt1.MinimumSize = New System.Drawing.Size(150, 20)

{% endhighlight %}

![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/Editor_TBExt_Features3.png](Layout-Settings_images/Layout-Settings_img1.png)



