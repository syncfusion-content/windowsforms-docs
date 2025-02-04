---
layout: post
title: Behavior Settings | WindowsForms | Syncfusion®
description: Learn here about the Syncfusion® Windows Forms MaskedEditBox control behavior settings and its features.
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Behavior Settings in MaskedEditBox

The behavior settings of the MaskedEditBox control are discussed below.

### Prompt and padding character settings

The [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control allows you to add prompt characters in the input.

<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
AllowPrompt</td><td>
Specifies if the prompt character can be allowed to be entered as an input character.</td></tr>
<tr>
<td>
PaddingCharacter</td><td>
Specifies the character that will be used instead of mask characters when the mask position has not been filled when the text property is used.</td></tr>
<tr>
<td>
PaddingCharacterInt</td><td>
Gets / sets the integer version of the padding character.</td></tr>
<tr>
<td>
Prompt Character</td><td>
Gets / sets the character that will be used instead of the mask characters when the mask position has not been filled.</td></tr>
<tr>
<td>
PromptCharacterInt</td><td>
Gets / sets the integer version of the PromptCharacter.</td></tr>
<tr>
<td>
PassivePromptCharacter</td><td>
Gets / sets the character that will be used instead of the mask characters when the mask position has not been filled (when the control does not have the focus).</td></tr>
<tr>
<td>
PassivePromptCharacterInt</td><td>
Gets / sets the integer version of the PassivePromptCharacter.</td></tr>
</table>


{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.AllowPrompt = true;
this.maskedEditBox.PaddingCharacterInt = 0;
this.maskedEditBox1.PromptCharacterInt = 37;
this.maskedEditBox1.PassivePromptCharacterInt = 47;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.AllowPrompt = True
Me.maskedEditBox.PaddingCharacterInt = 0
Me.maskedEditBox1.PromptCharacterInt = 37
Me.maskedEditBox1.PassivePromptCharacterInt = 47

{% endhighlight %}

{% endtabs %}

N> We can trim the additional spaces present in the mask by setting the PaddingCharacterInt property to '0'.

### MaxLength

The maximum length of the text can be set using the property given below.


<table>
<tr>
<td>
MaskedEditBox Property</td><td>
Description</td></tr>
<tr>
<td>
MaxLength</td><td>
Specifies the maximum number of characters that can be entered into the edit control. The default value is set to '32767'.</td></tr>
</table>

{%tabs %}

{% highlight C# %}  

this.maskedEditBox1.MaxLength = 32800;               

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.MaxLength = 32800

{% endhighlight %}

{% endtabs %}

### ReadOnly

The ReadOnly mode can be enabled for the MaskedEditBox control using the below given property.

<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
ReadOnly</td><td>
Specifies whether the text in the edit control can be changed or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.ReadOnly = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.ReadOnly = True

{% endhighlight %}

{% endtabs %}
