---
layout: post
title: Text Settings in Windows Forms Percent TextBox control | Syncfusion®
description: Learn about Text Settings support in Syncfusion® Windows Forms Percent TextBox control and more details.
platform: windowsforms
control: Editors Package
documentation: ug
---

# Text Settings in Windows Forms Percent TextBox

This section discusses the text settings of the PercentTextBox control.

The text associated with the PercentTextBox control can be set and customized using the below given settings.

* [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_Text)
* [CharacterCasing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_CharacterCasing)
* [TextAlign](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_TextAlign)
* [SelectedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SelectedText)
* [SelectAllOnFocus](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SelectAllOnFocus)
* [SwitchModeOnFocus](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_SwitchModeOnFocus)
* [HideSelection](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.hideselection?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_HideSelection)
* [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_ClipText)
* [DrawActiveWhenDisabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_DrawActiveWhenDisabled)

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

![PercentTextBox text support](PercentTextBox-Images/Overview_img470.png) 

![PercentTextBox value](PercentTextBox-Images/Overview_img471.png)

![PercentTextBox focus value](PercentTextBox-Images/Overview_img472.png) 

The methods associated with the above properties are given below.

* [AppendText](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.appendtext?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_AppendText_System_String_)
* [ResetText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_ResetText)
* [OnCharacterCasingChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_OnCharacterCasingChanged_System_EventArgs_)
* [GetClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_GetClipText)
* [Cut](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Cut)
* [Copy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Copy)
* [Delete](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Delete)
* [Paste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_Paste)
* [SelectAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SelectAll)

## Multiline Text Settings

The text settings of the PercentTextBox control can be customized to display multiline text using the below given properties.

* [Multiline](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.multiline?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_Multiline)
* [Lines](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.lines?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_Lines)
* [WordWrap](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.wordwrap?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_WordWrap)
* [ScrollBars](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.scrollbars?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_ScrollBars)

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

![Percent text box multi line support](PercentTextBox-Images/Overview_img473.png)

![word wrap](PercentTextBox-Images/Overview_img474.png) 

![scroll bar support](PercentTextBox-Images/Overview_img475.png) 

## Clip mode

The formatting for the text can be enabled or disabled using the [ClipMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipMode) property.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting;
{% endhighlight %}
{% highlight VB %}
Me.percentTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting
{% endhighlight %}
{% endtabs %}

## Formatted text

Formatted text can be displayed using the [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_FormattedText) property.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.FormattedText = "Hello";
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.FormattedText = "Hello"
{% endhighlight %}
{% endtabs %}

## RightToLeft

The text can be displayed from right to left for RTL languages using the [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property.

N> The [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property will be automatically set to 'True' for RTL languages.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
{% endhighlight %}
{% endtabs %}

![Percent text box right to left](PercentTextBox-Images/Overview_img477.png) 

N> The [ResetRightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ResetRightToLeft) method can be used to reset the [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property to it's default value.

## OverflowIndicatorToolTipText

The tooltip that should be displayed when an overflow of text occurs can be set using the below given properties.

* [OverflowIndicatorToolTipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_OverflowIndicatorToolTipText)
* [ShowOverflowIndicator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ShowOverflowIndicator)
* [ShowOverflowIndicatorToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ShowOverflowIndicatorToolTip)

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

![Percent text box tool tip support](PercentTextBox-Images/Overview_img479.png) 

## Banner text support

The PercentTextBox control can display banner text in the text field, at run time. A BannerTextProvider Component should be available for this purpose. Also, We need to set [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_AllowNull), [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullString) and [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_Text) properties as below to make this feature effective.

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
