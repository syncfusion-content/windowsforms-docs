---
layout: post
title: Applying Themes in Windows-Forms MaskedTextBox Control | Syncfusion®
description: Learn here all about Applying Themes feature of Syncfusion® Windows Forms MaskedTextBox (MaskedEditBox) control and more.
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Applying Themes in Windows Forms MaskedTextBox (MaskedEditBox)

Themes can be applied to the MaskedEditBox control using the property given below.



<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether or not to use XP themes when BorderStyle property is set to 'Fixed3D'.</td></tr>
</table>


N> Refer_ [Border Settings](/windowsforms/maskededitbox/border-settings) _topic to know about the BorderStyle property.

{% tabs %}

{% highlight C# %} 

this.maskedEditBox1.ThemesEnabled = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.ThemesEnabled = true

{% endhighlight %}

{% endtabs %}

![Theme applied in Masked TextBox](MaskedEditBox-images/MarkedEditBox-img19.png)


