---
layout: post
title: Layout Settings
description: Concepts and Features
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Layout Settings

The layout settings of the MaskedEditBox control are discussed in this section.

The size of the MaskedEditBox control can be set according to the needs of the user using the properties discussed below.

_Table_ _347__: Property Table_

<table>
<tr>
<td>
MaskedEditBox Properties</td><td>
Description</td></tr>
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

this.maskedEditBox1.MaximumSize = new System.Drawing.Size(150, 20);

this.maskedEditBox1.MinimumSize = new System.Drawing.Size(150, 20);

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.MaximumSize = New System.Drawing.Size(150, 20)

Me.maskedEditBox1.MinimumSize = New System.Drawing.Size(150, 20)

{% endhighlight %}

![](MaskedEditBox-images/MarkedEditBox-img18.png)

