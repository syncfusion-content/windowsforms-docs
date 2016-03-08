---
layout: post
title: ComboBoxAdv-Concepts-and-features | Windows Forms | Syncfusion
description: comboboxadv concepts and features
platform: windowsforms
control: ComboBoxAdv
documentation: ug
---

# ComboBoxAdv

ComboBoxAdv control has a textbox, that is the edit portion of the control, and a dropdown.

## TextBox

ComboBoxAdv control has properties that change the appearance and behavior of the textbox or the edit portion of the control.

### Text Appearance

The following properties customize the text in the ComboBoxAdv control.


<table>
<tr>
<th>
ComboBoxAdv TextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Text</td><td>
Sets text for the textbox. The text can be set to null to clear the text in the textbox.</td></tr>
<tr>
<td>
TextAlign</td><td>
Sets the alignment of the text in the textbox.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the fore color for the text entered in the edit portion of the control.</td></tr>
</table>


{% highlight c# %}

//TextBox appearance properties. 

this.comboBoxAdv1.TextBox.Text = "Simple text in ComboBoxAdv";

this.comboBoxAdv1.TextBox.TextAlign = HorizontalAlignment.Center;

this.comboBoxAdv1.TextBox.ForeColor = Color.Red;

{% endhighlight %}



{% highlight vbnet %}

'TextBox appearance properties.   

Me.comboBoxAdv1.TextBox.Text = "Simple text in ComboBoxAdv"

Me.comboBoxAdv1.TextBox.TextAlign = HorizontalAlignment.Center

Me.comboBoxAdv1.TextBox.ForeColor = Color.Red

{% endhighlight %}

### Text selection

The selection of text during runtime can be controlled through the following properties.


<table>
<tr>
<th>
ComboBoxAdv TextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
SelectedText</td><td>
Sets the currently selected text at runtime.</td></tr>
<tr>
<td>
SelectionLength</td><td>
Sets the number of characters selected in textbox.</td></tr>
<tr>
<td>
SelectionStart</td><td>
Sets the starting point of the text selection.</td></tr>
</table>


{% highlight c# %}

//Text selection properties

this.comboBoxAdv1.TextBox.SelectedText = "Combo";

this.comboBoxAdv1.TextBox.SelectionLength = 5;

this.comboBoxAdv1.TextBox.SelectionStart = 2;

{% endhighlight %}

{% highlight vbnet %}

'Text selection properties

Me.comboBoxAdv1.TextBox.SelectedText = "Combo"

Me.comboBoxAdv1.TextBox.SelectionLength = 5

Me.comboBoxAdv1.TextBox.SelectionStart = 2

{% endhighlight %}

### ReadOnly Settings

The following properties deal with read-only settings for the ComboBoxAdv control. 


<table>
<tr>
<th>
ComboBoxAdv TextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
ReadOnly</td><td>
Specifies whether the control can be made read-only. By default it is set to false.</td></tr>
<tr>
<td>
DropDownStyle</td><td>
Specifies the dropdown style of the ComboBoxAdv control. Based on its options, it specifies whether the text in the control is editable or not. The styles are,Simple - The text portion is editable. The list portion is always visible.DropDown (default style) - The text portion is editable. Clicking the arrow button displays the list portion.DropDownList - The text portion is not editable. Clicking the arrow button displays the list portion.</td></tr>
</table>


{% highlight c# %}

//Read only settings

this.comboBoxAdv1.ReadOnly = true;

this.comboBoxAdv1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.Simple;

{% endhighlight %}

{% highlight vbnet %}

'Read only settings

Me.comboBoxAdv1.ReadOnly = True

Me.comboBoxAdv1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.Simple

{% endhighlight %}

### Behavior Settings

The following properties control the behavior of the text typed in the Textbox. 


<table>
<tr>
<th>
ComboBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
NumberOnly</td><td>
Specifies whether you can enter only numbers in the edit portion of the ComboBoxAdv.</td></tr>
<tr>
<td>
CharacterCasing</td><td>
Specifies the case of the characters that are entered in the textbox. The options are, Normal - Characters are left unchanged,UpperCase - Changes the case of the characters to UPPERCASE andLowerCase  - Changes the case of the characters to LOWERCASE.</td></tr>
<tr>
<td>
TextBox.HideSelection</td><td>
When it is set to false, it highlights the selected text in the edit portion, even if the control losses focus.</td></tr>
<tr>
<td>
TextBox.WordWrap</td><td>
Indicates whether the textbox automatically wraps words to the beginning of the next line. Note that the multiline property should be set to true, to make the word wrap feature effective.</td></tr>
<tr>
<td>
AllowNewText</td><td>
Indicates whether you are allowed to enter new text at run time.</td></tr>
<tr>
<td>
MaxLength</td><td>
Specifies the maximum number of characters allowed in the edit portion of the ComboBoxAdv control. Default (32767).</td></tr>
</table>


{% highlight c# %}

//TextBox behavior settings

this.comboBoxAdv1.NumberOnly = true;

this.comboBoxAdv1.CharacterCasing = CharacterCasing.Upper;

this.comboBoxAdv1.TextBox.HideSelection = false;

this.comboBoxAdv1.TextBox.WordWrap = true;

this.comboBoxAdv1.AllowNewText = true;

this.comboBoxAdv1.MaxLength = 32766;

{% endhighlight %}

{% highlight vbnet %}

'TextBox behavior settings

Me.comboBoxAdv1.NumberOnly = True

Me.comboBoxAdv1.CharacterCasing = CharacterCasing.Upper

Me.comboBoxAdv1.TextBox.HideSelection = False

Me.comboBoxAdv1.TextBox.WordWrap = True

Me.comboBoxAdv1.AllowNewText = True

Me.comboBoxAdv1.MaxLength = 32766

{% endhighlight %}

### Banner Text Support

You can set banner text for the ComboBoxAdv control. Refer to [BannerTextProvider Component](http://help.syncfusion.com/ug/windows%20forms/documents/bannertextsupport.htm) topic for more details.



![](Overview_images/Overview_img299.png)



## DropDown Settings

Dropdown for the ComboBoxAdv control can be customized using the folllowing properties.


<table>
<tr>
<th>
ComboBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DropDownWidth</td><td>
Specifies the width of the dropdown. Default value is 100.</td></tr>
<tr>
<td>
IntegralHeight</td><td>
Indicates whether the list portion has complete items only, that is when this property is set to true, it displays only those items that are fully visible in terms of height.</td></tr>
<tr>
<td>
MaxDropDownItems</td><td>
Maximum number of entries that can be displayed in the dropdown. Set image for the dropdown items. Refer Image Settings topic.</td></tr>
<tr>
<td>
Sorted</td><td>
When set to true, it sorts the dropdown items in the alphabetical order.</td></tr>
</table>


{% highlight c# %}

//DropDown settings

this.comboBoxAdv1.DropDownWidth = 200;

this.comboBoxAdv1.IntegralHeight = true;

this.comboBoxAdv1.MaxDropDownItems = 5;

this.comboBoxAdv1.Sorted = true;

{% endhighlight %}

{% highlight vbnet %}

'DropDown settings

Me.comboBoxAdv1.DropDownWidth = 200

Me.comboBoxAdv1.IntegralHeight = True

Me.comboBoxAdv1.MaxDropDownItems = 5

Me.comboBoxAdv1.Sorted = True

{% endhighlight %}

![](Overview_images/Overview_img300.png) 



N> Data for the dropdown can be set using Items property. 

Refer [Data Settings](/windowsforms/ComboBoxAdv/Data-Settings) for details. To know about different dropdown styles available for the control, see [ReadOnly Settings](#readonly-settings) section in TextBox topic.

