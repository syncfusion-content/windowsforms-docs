---
layout: post
title: BarItem Text
description: baritem text
platform: windowsforms
control: Menus Package 
documentation: ug
---
# BarItem Text

Text for a bar item can be edited through Text property. Alignment of text can be specified in TextAlignment property.

_Table484: Property Table_

<table>
<tr>
<th>
ParentBarItem Property</th><th>
Description</th></tr>
<tr>
<td>
Text</td><td>
Sets text for the Bar item.</td></tr>
<tr>
<td>
TextAlignment</td><td>
Sets the text alignment. Options are,{{ '_Near (Default)_' | markdownify }}{{ '_Far_' | markdownify }}{{ '_Center_' | markdownify }}</td></tr>
</table>




{% highlight c# %}

this.barItem2.Text = "Center";

this.barItem2.TextAlignment = Syncfusion.Windows.Forms.Tools.XPMenus.TextAlignment.Center;




{% endhighlight  %}
{% highlight vbnet %}


Me.barItem2.Text = "Center"

Me.barItem2.TextAlignment = Syncfusion.Windows.Forms.Tools.XPMenus.TextAlignment.Center

{% endhighlight  %}

![](Overview_images/Overview_img75.jpeg)



> Note: We can also change the text color for the Baritems using_ MenuColors.SelTextColor _property.

See Also

Types of Bar Items