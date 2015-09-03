---
layout: post
title: Text Settings
description: Text Settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Text Settings

This section discusses the text settings of the IntegerTextBox control.

The text associated with the IntegerTextBox control can be set and customized using the below given settings.

Table 267 : Property Table

<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Text</td><td>
Specifies the text associated with the control.</td></tr>
<tr>
<td>
TextAlign</td><td>
Indicates how the text should be aligned for edit controls.</td></tr>
<tr>
<td>
SelectedText</td><td>
Gets / sets the selected text in the IntegerTextBox.</td></tr>
<tr>
<td>
SelectAllOnFocus</td><td>
Specifies if the text should be selected when the control gets the focus.</td></tr>
<tr>
<td>
ClipText</td><td>
Returns the clipped text without the formatting.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;

this.integerTextBox1.SelectedText = "-12345678";

this.integerTextBox1.SelectAllOnFocus = true;

this.integerTextBox1.ClipText = "12";

{%endhighlight%}

{%highlight vbnet%}

Me.integerTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center

Me.integerTextBox1.SelectedText = "-12345678"

Me.integerTextBox1.SelectAllOnFocus = true

Me.integerTextBox1.ClipText = "12"

{%endhighlight%}


 ![](Overview_images/Overview_img447.png) 


 ![](Overview_images/Overview_img448.png) 


The methods associated with the above properties are given below.

Table 268 : Methods Table

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
GetClipText</td><td>
Gets / sets the clipped text without the formatting.</td></tr>
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
Delete</td><td>
Deletes the current selection of the TextBox.</td></tr>
<tr>
<td>
Paste</td><td>
Pastes the data in the clipboard into the NumberTextBox control.</td></tr>
<tr>
<td>
SelectAll</td><td>
Selects all text in the TextBox.</td></tr>
</table>
Clip Mode

The formatting for the text can be enabled or disabled by using the property given below.

Table 269 : Property Table

<table>
<tr>
<th>
IntegerTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
ClipMode</td><td>
Determines whether to include or exclude the literal characters in the input mask when doing a copy command.It includes the below given options:
IncludeFormatting and ExcludeFormatting.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting;

{%endhighlight%}

{%highlight vbnet%}

Me.integerTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting

{%endhighlight%}

### Formatted Text

Formatted text can be displayed using the below given property.



<table>
<tr>
<th>
IntegerTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
FormattedText</td><td>
Returns the formatted text with the formatting.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.FormattedText = "Hello";

{%endhighlight%}



{%highlight vbnet%}



Me.integerTextBox1.FormattedText = "Hello"

{%endhighlight%}

### RightToLeft

The text can be displayed from right to left for RTL languages using this property.

Table 270 : Property Table

<table>
<tr>
<th>
IntegerTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Indicates whether the component should draw right-to-left for RTL languages. The default value is set to 'False'.</td></tr>
</table>



> Note: The RightToLeft property will be automatically set to 'True' for RTL languages.

{%highlight c#%}



this.integerTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{%endhighlight%}


{%highlight vbnet%}




Me.integerTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{%endhighlight%}

![](Overview_images/Overview_img450.png) 


 _Note: The ResetRightToLeft() method can be used to reset the RightToLeft property to it's default value._

### OverflowIndicatorToolTipText

Table 271 : Property Table

<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
OverflowIndicatorToolTipText</td><td>
Specifies the overflow indicator tooltip text.</td></tr>
<tr>
<td>
ShowOverflowIndicator</td><td>
Gets / sets overflow indicator visibility.</td></tr>
<tr>
<td>
ShowOverflowIndicatorToolTip</td><td>
Indicates whether to show the overflow indicator tooltip.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.OverflowIndicatorToolTipText = "Overflow";

this.integerTextBox1.ShowOverflowIndicator = true;

this.integerTextBox1.ShowOverflowIndicatorToolTip = true;

{%endhighlight%}


{%highlight vbnet%}
Me.integerTextBox1.OverflowIndicatorToolTipText = "Overflow"

Me.integerTextBox1.ShowOverflowIndicator = True

Me.integerTextBox1.ShowOverflowIndicatorToolTip = True

{%endhighlight%}

![](Overview_images/Overview_img452.png)

A Sample which demonstrates the Text, Text Align and Overflow Indicator features of the IntegerTextBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_