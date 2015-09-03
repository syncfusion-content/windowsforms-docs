---
layout: post
title: Behavior Settings
description: Behavior Settings
platform: WindowsForms
control: MaskedEditBox
documentation: ug
--- 
# Behavior Settings

The behavior settings of the MaskedEditBox control are discussed below.

### Prompt and Padding Character Settings

MaskedEditBox control allows you to add prompt characters in the input.

Table 343 : Property Table

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
PrompCharacterInt</td><td>
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


{% highlight C# %}  

this.maskedEditBox1.AllowPrompt = true;

this.maskedEditBox.PaddingCharacterInt = 0;

this.maskedEditBox1.PromptCharacterInt = 37;

this.maskedEditBox1.PassivePromptCharacterInt = 47;

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.AllowPrompt = True

Me.maskedEditBox.PaddingCharacterInt = 0

Me.maskedEditBox1.PromptCharacterInt = 37

Me.maskedEditBox1.PassivePromptCharacterInt = 47

{% endhighlight %}


 _Note: We can trim the additional spaces present in the mask by setting the PaddingCharacterInt property to '0'._

### MaxLength

The maximum length of the text can be set using the property given below.



Table 344 : Property Table

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


{% highlight C# %}  

this.maskedEditBox1.MaxLength = 32800;               

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.MaxLength = 32800

{% endhighlight %}

### ReadOnly

The ReadOnly mode can be enabled for the MaskedEditBox control using the below given property.

Table 345 : Property Table

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


{% highlight C# %}  

this.maskedEditBox1.ReadOnly = true;

{% endhighlight %}




{% highlight vbnet %} 

Me.maskedEditBox1.ReadOnly = True

{% endhighlight %}