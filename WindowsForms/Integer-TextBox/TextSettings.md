---
layout: post
title: Text Settings in Windows Forms Integer TextBox control | Syncfusion®
description: Learn about Text Settings support in Syncfusion® Windows Forms Integer TextBox (Integertextbox) control and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Text Settings in Windows Forms Integer TextBox (Integertextbox)

This section discusses the text settings of the IntegerTextBox control.

The text associated with the IntegerTextBox control can be set and customized using the below given settings.

* [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_Text)
* [TextAlign](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_TextAlign)
* [SelectedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SelectedText)
* [SelectAllOnFocus](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SelectAllOnFocus)
* [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipText)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
this.integerTextBox1.SelectedText = "-12345678";
this.integerTextBox1.SelectAllOnFocus = true;
this.integerTextBox1.ClipText = "12";
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
Me.integerTextBox1.SelectedText = "-12345678"
Me.integerTextBox1.SelectAllOnFocus = true
Me.integerTextBox1.ClipText = "12"
{% endhighlight %}
{% endtabs %}

![Text Settings](Overview_images/Overview_img447.png) 

![Text Settings](Overview_images/Overview_img448.png) 

The methods associated with the above properties are given below.

* [GetClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_GetClipText)
* [Cut](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Cut)
* [Copy](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Copy)
* [Delete](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Delete)
* [Paste](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Paste)
* [SelectAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SelectAll)

## Clip mode

The formatting for the text can be enabled or disabled by using the [ClipMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipMode) property. 

{% tabs %}
{% highlight C# %}
this.integerTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.IncludeFormatting
{% endhighlight %}
{% endtabs %}

## Formatted text

Formatted text can be displayed using the [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_FormattedText) property.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.FormattedText = "Hello";
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.FormattedText = "Hello"
{% endhighlight %}
{% endtabs %}

## RightToLeft

The text can be displayed from right to left for RTL languages using the [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property.

N> The [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property will be automatically set to 'True' for RTL languages.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
{% endhighlight %}
{% endtabs %}

![Right to left support](Overview_images/Overview_img450.png) 


N> The [ResetRightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ResetRightToLeft) method can be used to reset the [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property to it's default value.

## OverflowIndicatorToolTipText

You can set the tooltip text using the below properties.

* [OverflowIndicatorToolTipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_OverflowIndicatorToolTipText)
* [ShowOverflowIndicator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ShowOverflowIndicator)
* [ShowOverflowIndicatorToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ShowOverflowIndicatorToolTip)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.OverflowIndicatorToolTipText = "Overflow";
this.integerTextBox1.ShowOverflowIndicator = true;
this.integerTextBox1.ShowOverflowIndicatorToolTip = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.OverflowIndicatorToolTipText = "Overflow"
Me.integerTextBox1.ShowOverflowIndicator = True
Me.integerTextBox1.ShowOverflowIndicatorToolTip = True
{% endhighlight %}
{% endtabs %}

![Over flow indicator tooltip text](Overview_images/Overview_img452.png)

A Sample which demonstrates the Text, Text Align and Overflow Indicator features of the IntegerTextBox control is available in the below sample installation path.

…\System Drive:\Users\Username\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS
