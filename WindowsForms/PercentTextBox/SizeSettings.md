---
layout: post
title: Size Settings
description: Size Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Size Settings

The size of the PercentTextBox control can be set according to the needs of the user using the properties discussed below.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
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



{% highlight C# %}




this.percentTextBox1.MaximumSize = new System.Drawing.Size(100, 25);

this.percentTextBox1.MinimumSize = new System.Drawing.Size(100, 25);
{% endhighlight %}





{% highlight vbnet %}

Me.percentTextBox1.MaximumSize = New System.Drawing.Size(100, 25)

Me.percentTextBox1.MinimumSize = New System.Drawing.Size(100, 25)

{% endhighlight %}

 ![](PercentTextBox-Images/Overview_img485.png) 
