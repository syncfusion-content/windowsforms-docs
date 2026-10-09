---
layout: post
title: Applying Themes in Windows Forms MaskedTextBox | Syncfusion®
description: Applying themes in MaskedEditBox enables XP theme support and visual customization through theme-aware rendering options.
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Applying Themes in Windows Forms MaskedTextBox (MaskedEditBox)

Themes can be applied to the MaskedEditBox control using the property given below. The default value of `ThemesEnabled` is `false`.

<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether or not to use XP themes when the BorderStyle property is set to `Fixed3D`.</td></tr>
</table>


>**NOTE**:
Refer to the [Border Settings](https://help.syncfusion.com/windowsforms/maskedtextbox/border-settings) documentation for more information about the BorderStyle property.

{% tabs %}

{% highlight C# %} 

this.maskedEditBox1.ThemesEnabled = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.ThemesEnabled = true

{% endhighlight %}

{% endtabs %}

![Theme applied in Masked TextBox](MaskedEditBox-images/MarkedEditBox-img19.png)


