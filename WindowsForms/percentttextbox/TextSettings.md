---
layout: post
title: Text Settings | WindowsForms | Syncfusion
description: Text Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Text Settings

This section discusses the text settings of the PercentTextBox control.

The text associated with the PercentTextBox control can be set and customized using the below given settings.

<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Text</td><td>
Specifies the text associated with the control.</td></tr>
<tr>
<td>
CharacterCasing</td><td>
Gets / sets the case of character as they are typed.It includes the below given options.{{ 'Normal,' | markdownify }}{{ 'Upper and' | markdownify }}{{ 'Lower.' | markdownify }}</td></tr>
<tr>
<td>
TextAlign</td><td>
Indicates how the text should be aligned for edit controls.</td></tr>
<tr>
<td>
SelectedText</td><td>
Gets / sets the selected text in the PercentTextBox.</td></tr>
<tr>
<td>
SelectAllOnFocus</td><td>
Specifies if the text should be selected when the control gets the focus.</td></tr>
<tr>
<td>
SwitchModeOnFocus</td><td>
Indicates whether the PercentTextBox should allow editing in numeric mode, when it receives focus.</td></tr>
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

this.percentTextBox1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
this.percentTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
this.percentTextBox1.SelectedText = "34";
this.percentTextBox1.SelectAllOnFocus = true;
this.percentTextBox1.SwitchModeOnFocus = true;
this.percentTextBox1.HideSelection = true;
this.percentTextBox1.ClipText = "34";
this.percentTextBox1.DrawActiveWhenDisabled = true;

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
Me.percentTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
Me.percentTextBox1.SelectedText = "34"
Me.percentTextBox1.SelectAllOnFocus = true
Me.percentTextBox1.SwitchModeOnFocus = True
Me.percentTextBox1.HideSelection = True
Me.percentTextBox1.ClipText = "34"
Me.percentTextBox1.DrawActiveWhenDisabled = True

{% endhighlight %}
{% endtabs %}

![](PercentTextBox-Images/Overview_img470.png) 

 ![](PercentTextBox-Images/Overview_img471.png)

 ![](PercentTextBox-Images/Overview_img472.png) 

The methods associated with the above properties are given below.

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
AppendText</td><td>
Appends text to the current text of a textbox.</td></tr>
<tr>
<td>
ResetText</td><td>
Resets the Text property to its default value.</td></tr>
<tr>
<td>
OnCharacterCasingChanged</td><td>
Raises the CharacterCasingChanged event.</td></tr>
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

Multiline Text Settings

The text settings of the PercentTextBox control can be customized to display multiline text using the below given properties.

<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Multiline</td><td>
Controls whether the text of the edit control can span more than one line.</td></tr>
<tr>
<td>
Lines</td><td>
The lines of text in a multiline edit, as an array of string values.</td></tr>
<tr>
<td>
WordWrap</td><td>
Indicates if lines are automatically word-wrapped for multiline edit controls.</td></tr>
<tr>
<td>
ScrollBars</td><td>
Indicates, for multiline edit controls, which scrollbars will be shown for this control.It includes the below given options.{{ 'None,' | markdownify }}{{ 'Horizontal,' | markdownify }}{{ 'Vertical and' | markdownify }}{{ 'Both.' | markdownify }}</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.percentTextBox1.Multiline = true;
this.percentTextBox1.WordWrap = true;
this.percentTextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.Multiline = True
Me.percentTextBox1.WordWrap = True
Me.percentTextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical

{% endhighlight %}
{% endtabs %}

 ![](PercentTextBox-Images/Overview_img473.png)

 ![](PercentTextBox-Images/Overview_img474.png) 

 ![](PercentTextBox-Images/Overview_img475.png) 

## Clip mode

The formatting for the text can be enabled or disabled using the property given below.

<table>
<tr>
<th>
PercentTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
ClipMode</td><td>
Determines whether to include or exclude the literal characters in the input mask when doing a copy command.It includes the below given options.{{ 'IncludeFormatting and' | markdownify }}{{ 'ExcludeFormatting.' | markdownify }}</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.percentTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting;

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting

{% endhighlight %}
{% endtabs %}

## Formatted text

Formatted text can be displayed using the below given property.

<table>
<tr>
<th>
PercentTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
FormattedText</td><td>
Returns the formatted text with the formatting.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.percentTextBox1.FormattedText = "Hello";

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.FormattedText = "Hello"

{% endhighlight %}
{% endtabs %}

## RightToLeft

The text can be displayed from right to left for RTL languages using this property.

<table>
<tr>
<th>
PercentTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
RightToLeft</td><td>
Indicates whether the component should draw right-to-left for RTL languages. The default value is set to 'False'.</td></tr>
</table>

N> The RightToLeft property will be automatically set to 'True' for RTL languages.

{% tabs %}
{% highlight C# %}

this.percentTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{% endhighlight %}
{% endtabs %}

 ![](PercentTextBox-Images/Overview_img477.png) 

N> The ResetRightToLeft() method can be used to reset the RightToLeft property to it's default value.

## OverflowIndicatorToolTipText

The tooltip that should be displayed when an overflow of text occurs can be set using the below given properties.

<table>
<tr>
<th>
PercentTextBox Properties</th><th>
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

{% tabs %}
{% highlight C# %}

this.percentTextBox1.OverflowIndicatorToolTipText = "Overflow";
this.percentTextBox1.ShowOverflowIndicator = true;
this.percentTextBox1.ShowOverflowIndicatorToolTip = true;

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.OverflowIndicatorToolTipText = "Overflow"
Me.percentTextBox1.ShowOverflowIndicator = True
Me.percentTextBox1.ShowOverflowIndicatorToolTip = True

{% endhighlight %}
{% endtabs %}

 ![](PercentTextBox-Images/Overview_img479.png) 

## Banner text support

The PercentTextBox control can display banner text in the text field, at run time. A BannerTextProvider Component should be available for this purpose. Also, We need to set AllowNull, NullString and Text properties as below to make this feature effective.

{% tabs %}
{% highlight C# %}

this.percentTextBox1.AllowNull = true;
this.percentTextBox1.NullString = "";
this.percentTextBox1.Text = "";

{% endhighlight %}

{% highlight vb %}

Me.percentTextBox1.AllowNull = True
Me.percentTextBox1.NullString = ""
Me.percentTextBox1.Text = ""

{% endhighlight %}
{% endtabs %}

A sample which demonstrates the Text, Text Align and Overflow Indicator features of the PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo