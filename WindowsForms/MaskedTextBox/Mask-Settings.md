---
layout: post
title: Mask Settings | WindowsForms | Syncfusion®
description: Learn here about how to set the different Mask settings to the Syncfusion® Windows Forms MaskedEditControl.
platform: WindowsForms
control: MaskedEditBox
documentation: ug
---
# Mask Settings in MaskedEditBox

This section deals with the mask settings of MaskedEditBox control.

The format or behavior for the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control is defined through the property given below.



<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
Mask</td><td>
Specifies the mask string for the MaskedEditBox control.</td></tr>
</table>


The [Mask](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_Mask) is a string that is composed of literal characters and mask characters.

Literal characters give visual cues about the type of data being used. Mask characters are the placeholders for the data input. For example, a US telephone number can be represented by the following mask.

(###) - ### #### Extent ####

In the above Mask, all the non # characters are Literal characters and the #’s are Mask characters.

The MaskedEditBox control supports the following masks.



<table>
<tr>
<th>
Mask Characters</th><th>
Description</th></tr>
<tr>
<td>
#</td><td>
Digit placeholder.</td></tr>
<tr>
<td>
.</td><td>
Decimal placeholder. The actual character used is the one specified as the decimal placeholder in your international settings. This character is treated as a literal for masking purposes.</td></tr>
<tr>
<td>
,</td><td>
Thousands separator. The actual character used is the one specified as the thousands separator in your international settings. This character is treated as a literal for masking purposes.</td></tr>
<tr>
<td>
:</td><td>
Time separator. The actual character used is the one specified as the time separator in your international settings. This character is treated as a literal for masking purposes.</td></tr>
<tr>
<td>
/</td><td>
Date separator. The actual character used is the one specified as the date separator in your international settings. This character is treated as a literal for masking purposes.</td></tr>
<tr>
<td>
\</td><td>
Treat the next character in the mask string as a literal. This allows you to include the "#", "&", "A", and "?" characters in the mask. This character is treated as a literal for masking purposes.</td></tr>
<tr>
<td>
;</td><td>
Character placeholder. Valid values for this placeholder are ANSI characters in the following ranges: 32-126 and 128-255.</td></tr>
<tr>
<td>
></td><td>
Convert all the characters that follow to uppercase.</td></tr>
<tr>
<td>
<</td><td>
Convert all the characters that follow to lowercase.</td></tr>
<tr>
<td>
A</td><td>
Alphanumeric character placeholder (entry required). For example: a - z, A - Z, or 0 - 9.</td></tr>
<tr>
<td>
a</td><td>
Alphanumeric character placeholder (entry optional).</td></tr>
<tr>
<td>
9</td><td>
Digit placeholder (entry optional). For example: 0 - 9.</td></tr>
<tr>
<td>
C</td><td>
Character or space placeholder (entry optional). This operates exactly like the "&" placeholder and ensures compatibility with Microsoft Access.</td></tr>
<tr>
<td>
?</td><td>
Letter placeholder. For example: a - z or A - Z.</td></tr>
<tr>
<td>
Literal</td><td>
All other symbols are displayed as literals; that is, as themselves.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.Mask = "##-##-####";

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.Mask = "##-##-####"

{% endhighlight %}

{% endtabs %}

![Set the mask value to WF MaskedEditBox](MaskedEditBox-images/MarkedEditBox-img5.png)

