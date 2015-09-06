---
layout: post
title: Position
description: Position
platform: WindowsForms
control: AutoLabel
documentation: ug
---
# Position

The AutoLabel control can be positioned relative to the top, left, bottom or right of the labeled control. You can do this using the below given property.

Table 387: Property Table

<table>
<tr>
<th>
AutoLabel Property</th><th>
Description</th></tr>
<tr>
<td>
Position</td><td>
Specifies the relative position of the control and the AutoLabel.The options included are as follows.{{ 'Custom,' | markdownify }}{{ 'Left,' | markdownify }}{{ 'Left and' | markdownify }}{{ 'Top.' | markdownify }}</td></tr>
</table>


When the Position property is set to 'Custom', you can drag the label to the required position using the mouse.



{% highlight C# %}


this.autoLabel1.Position = Syncfusion.Windows.Forms.Tools.AutoLabelPosition.Top;

{% endhighlight %}



{% highlight vbnet %}



Me.autoLabel1.Position = Syncfusion.Windows.Forms.Tools.AutoLabelPosition.Top

{% endhighlight %}


 ![](AutoLabel-Images/Overview_img1.jpg)

 ![](AutoLabel-Images/Overview_img2.jpg) 
