---
layout: post
title: Tab Text in Windows Forms ColorUI control | Syncfusion®
description: Learn about Tab Text support in Syncfusion® Windows Forms ColorUI control, its features, and more details.
platform: WindowsForms
control: ColorUI 
documentation: ug
---
# Tab Text in Windows Forms ColorUI

The default tab text of the ColorGroups can be set using the below properties.

<table>
<tr>
<th>
ColorUIControl Properties</th><th>
Description</th></tr>
<tr>
<td>
CustomTabName</td><td>
Set the text displayed on the custom colors tab. The tab name can be reset using ResetCustomTabName() method.</td></tr>
<tr>
<td>
StandardTabName</td><td>
Set the text displayed on the Standard colors tab.The tab name can be reset using ResetStandardTabName() method.</td></tr>
<tr>
<td>
SystemTabName</td><td>
Set the text displayed on the System colors tab.The tab name can be reset using ResetSystemTabName() method.</td></tr>
<tr>
<td>
UserTabName</td><td>
Set the text displayed on the User colors tab.The tab name can be reset using ResetUserTabName() method.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.colorUIControl1.StandardTabName = "Web Layout";
this.colorUIControl1.SystemTabName = "System Colors";
this.colorUIControl1.UserTabName = "User Defined";
this.colorUIControl1.CustomTabName = "Palettes";

{% endhighlight  %}

{% highlight vb %}

Me.colorUIControl1.StandardTabName = "Web Layout"
Me.colorUIControl1.SystemTabName = "System Colors"
Me.colorUIControl1.UserTabName = "User Defined"
Me.colorUIControl1.CustomTabName = "Palettes"

{% endhighlight  %}
{% endtabs %}

![Overview_img234](ColorUI_images/Overview_img234.jpeg)

N> We can also change the font style of the tab text using ColorUIControl.Font property.
