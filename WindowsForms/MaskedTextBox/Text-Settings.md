---
layout: post
title: Text Settings | WindowsForms | Syncfusion®
description: Learn here about how set the text values to the Syncfusion® Windows Forms MaskedEditControl and its features.
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Text Settings in MaskedEditBox

This section discusses the text settings of the MaskedEditBox control.

The text associated with the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control can be set and customized using the below given settings.



<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
CharacterCasing</td><td>
Gets or sets the case of character as they are typed.It includes the below given options:{{ '_Normal,_' | markdownify }}{{ '_Upper and_' | markdownify }}{{ '_Lower._' | markdownify }}</td></tr>
<tr>
<td>
TextAlign</td><td>
Indicates how the text should be aligned for edit controls.</td></tr>
<tr>
<td>
SelectedText</td><td>
Gets or sets the selected text in the MaskedEditBox.</td></tr>
<tr>
<td>
HideSelection</td><td>
Indicates that the selection should be hidden when the edit control loses focus.</td></tr>
<tr>
<td>
ClipText</td><td>
Returns the clipped text without the formatting.</td></tr>
<tr>
<td>
DrawActiveWhenDisabled</td><td>
Specifies if the text should be drawn active, even when disabled.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
this.maskedEditBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
this.maskedEditBox1.SelectedText = "34";
this.maskedEditBox1.HideSelection = true;
this.maskedEditBox1.ClipText = "34";
this.maskedEditBox1.DrawActiveWhenDisabled = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
Me.maskedEditBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
Me.maskedEditBox1.SelectedText = "34"
Me.maskedEditBox1.HideSelection = True
Me.maskedEditBox1.ClipText = "34"
Me.maskedEditBox1.DrawActiveWhenDisabled = True

{% endhighlight %}

{% endtabs %}

![Set the upper character casing text to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img12.png)

![Set the small character casing text to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img13.png)


The methods associated with the above properties are given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
AppendText</td><td>
Appends the text to the current text of a textbox.</td></tr>
<tr>
<td>
OnCharacterCasingChanged</td><td>
Raises the CharacterCasingChanged event.</td></tr>
<tr>
<td>
Cut</td><td>
Cuts the selected data to the clipboard.</td></tr>
<tr>
<td>
Copy</td><td>
Copies the content of the NumberTextBox to the clipboard. The ClipMode property dictates what gets copied.</td></tr>
<tr>
<td>
Paste</td><td>
Pastes the data in the clipboard into the NumberTextBox control.</td></tr>
<tr>
<td>
Select</td><td>
Selects a range of text in the TextBox.</td></tr>
</table>

## Clip mode

The formatting for the text can be enabled or disabled using the property given below.



<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
ClipMode</td><td>
Specifies the format of the text that will be returned by the MaskedEditBox control.It includes the below given options:{{ '_IncludeLiterals and_' | markdownify }}{{ '_ExcludeLiterals._' | markdownify }}</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.ClipMode = Syncfusion.Windows.Forms.Tools.ClipModes.IncludeLiterals;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.ClipMode = Syncfusion.Windows.Forms.Tools.ClipModes.IncludeLiterals

{% endhighlight %}

{% endtabs %}

## OverflowIndicatorToolTipText

The tooltip that should be displayed when an overflow of text occurs can be set using the below given properties.


<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
OverflowIndicatorToolTipText</td><td>
Specifies the overflow indicator tooltip text.</td></tr>
<tr>
<td>
ShowOverflowIndicator</td><td>
Gets or sets overflow indicator visibility.</td></tr>
<tr>
<td>
ShowOverflowIndicatorToolTip</td><td>
Gets or sets can show overflow indicator tooltip.</td></tr>
</table>

{% tabs %}

{% highlight C# %} 

this.maskedEditBox1.OverflowIndicatorToolTipText = "Text Overflow";
this.maskedEditBox1.ShowOverflowIndicator = true;
this.maskedEditBox1.ShowOverflowIndicatorToolTip = true;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.OverflowIndicatorToolTipText = " Text Overflow"
Me.maskedEditBox1.ShowOverflowIndicator = True
Me.maskedEditBox1.ShowOverflowIndicatorToolTip = True

{% endhighlight %}

{% endtabs %}

![Set the tooltip of overflow indicator to WF MaskedEditBox control](MaskedEditBox-images/MarkedEditBox-img14.png)

