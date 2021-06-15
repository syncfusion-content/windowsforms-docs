---
layout: post
title: Culture Settings in Windows-Forms MaskedTextBox Control | Syncfusion
description: Learn here all about culture settings feature of Syncfusion Windows Forms MaskedTextBox (MaskedEditBox) control and more.
platform: WindowsForms
control: MaskedEditBox
documentation: ug
---
# Culture Settings in Windows Forms MaskedTextBox (MaskedEditBox)

This section discusses the culture settings of the MaskedEditBox control.

<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Culture</td><td>
Gets / sets the culture that is to be used for formatting the numeric display.</td></tr>
<tr>
<td>
SpecialCultureValue</td><td>
Gets / sets the mode for the cultures.It includes the below given options:{{ '_None,_' | markdownify }}{{ '_CurrentCulture,_' | markdownify }}{{ '_UICulture and_' | markdownify }}{{ '_InstalledCulture._' | markdownify }}</td></tr>
<tr>
<td>
UseUserOverride</td><td>
Specifies if the NumberFormatInfo used for formatting will use the User Overrides for the culture. The default value is set to 'True'.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.Culture = new System.Globalization.CultureInfo("ar-SA");
this.maskedEditBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;
this.maskedEditBox1.UseUserOverride = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.Culture = New System.Globalization.CultureInfo("ar-SA")
Me.maskedEditBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None
Me.maskedEditBox1.UseUserOverride = True

{% endhighlight %}

{% endtabs %}

![Culture settings in Windows Forms MaskedTextBox](MaskedEditBox-images/MarkedEditBox-img11.png)

