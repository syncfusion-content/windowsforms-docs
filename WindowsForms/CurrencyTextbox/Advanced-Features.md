---
layout: post
title: Advanced-Features | WindowsForms | Syncfusion
description: advanced features
platform: WindowsForms
control: CurrencyTextbox
documentation: ug
---

# Advanced Features

## Clipboard Support

The CurrencyTextBox control also provides support for clipboard operations that are compatible with currency data. TheClipMode property specifies if formatting characters are to be copied to the clipboard.


<table>
<tr>
<th>
{{ '**CurrencyTextBox Property**' | markdownify }}</th><th>
{{ '**Description**' | markdownify }}</th></tr>
<tr>
<td>
ClipMode</td><td>
Specifies whether to include or exclude literal characters in input mask while doing copy command. The options are,{{ 'ExcludeFormatting and' | markdownify }}{{ 'IncludeFormatting.' | markdownify }}</td></tr>
</table>


{% highlight c# %}



this.currencyTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.ExcludeFormatting;

{% endhighlight %}

{% highlight vbnet %}



Me.currencyTextBox1.ClipMode = Syncfusion.Windows.Forms.Tools.CurrencyClipModes.ExcludeFormatting

{% endhighlight %}

![](Overview_images/Overview_img504.png) 



## Overflow Indicator

You can display an indicator in the textbox, when the currency value is displayed, beyond its boundaries. We can also display tooltip for the overflow indicator. The tooltip text is specified in OverflowIndicatorToolTipText.Set ShowOverflowIndicatorproperty to true to enable this feature. Set ShowOverflowIndicatorToolTip property to true to display the tooltip text.

{% highlight c# %}

this.currencyTextBox1.OverflowIndicatorToolTipText = "Overflow";

this.currencyTextBox1.ShowOverflowIndicator = true;

this.currencyTextBox1.ShowOverflowIndicatorToolTip = true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.OverflowIndicatorToolTipText = "Overflow"

Me.currencyTextBox1.ShowOverflowIndicator = True

Me.currencyTextBox1.ShowOverflowIndicatorToolTip = True

{% endhighlight %}

![](Overview_images/Overview_img505.png) 



## Globalization

The CurrencyTextBox class is globalization aware and uses System.Globalization.CultureInfo for locale-specific information. You can set the control's culture to any installed culture through its culture property.


<table>
<tr>
<th>
{{ '**CurrencyTextBox Properties**' | markdownify }}</th><th>
{{ '**Description**' | markdownify }}</th></tr>
<tr>
<td>
Culture</td><td>
It sets the culture that is used for formatting the numeric display.</td></tr>
<tr>
<td>
CurrentCultureRefresh</td><td>
Specifies whether the culture property is to be refreshed when the culture changes.</td></tr>
<tr>
<td>
SpecialCultureValue</td><td>
It sets the mode for the cultures. The options includes:{{ 'None,' | markdownify }}{{ 'CurrentCulture (default),' | markdownify }}{{ 'InstalledCulture, '| markdownify }}{{ 'UICulture. '| markdownify }}</td></tr>
</table>


![](Overview_images/Overview_img506.png) 



{% highlight c# %}



this.currencyTextBox1.Culture = new System.Globalization.CultureInfo("ar-SA");

this.currencyTextBox1.CurrentCultureRefresh = true;

this.currencyTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;

{% endhighlight %}

{% highlight vbnet %}



Me.currencyTextBox1.Culture = New System.Globalization.CultureInfo("ar-SA")

Me.currencyTextBox1.CurrentCultureRefresh = True

Me.currencyTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None

{% endhighlight %}

### User Override for Culture


<table>
<tr>
<td>
{{ '**CurrencyTextBox Properties**' | markdownify }}</td><td>
{{ '**Description**' | markdownify }}</td></tr>
<tr>
<td>
UseUserOverride</td><td>
Specifies if the NumberFormatInfo used for formatting will use the User overrides for the culture.</td></tr>
</table>


{% highlight c# %}



this.currencyTextBox1.UseUserOverride = false;

this.currencyTextBox1.Culture = new CultureInfo(CultureInfo.CurrentUICulture.LCID,this.currencyTextBox1.UseUserOverride);

{% endhighlight %}

{% highlight vbnet %}



Me.currencyTextBox1.UseUserOverride = False

Me.currencyTextBox1.Culture = New CultureInfo(CultureInfo.CurrentUICulture.LCID,Me.currencyTextBox1.UseUserOverride)

{% endhighlight %}

### Culture name

The culture name can be displayed in the different format according to the specified culture value. Refer the following table in detail.



<table>
<tr>
<td>
{{ '**CurrencyTextBox.Culture Properties**' | markdownify }}</td><td>
{{ '**Description**' | markdownify }}</td></tr>
<tr>
<td>
DisplayName</td><td>
Gets the culture name in the format "&lt;language full&gt;(&lt;country/region full&gt;)" in the language of the localized version of the .NET framework.</td></tr>
<tr>
<td>
EnglishName</td><td>
Gets the culture name in the format "&lt;language full&gt;(&lt;country/region full&gt;)" in english.</td></tr>
<tr>
<td>
NativeName</td><td>
Gets the culture name in the format "&lt;language full&gt;(&lt;country/region full&gt;)" in the language that the culture is set to display.</td></tr>
<tr>
<td>
ThreeLetterWindowsLanguageName</td><td>
Gets the three letter code for the language as specified in the windows API.</td></tr>
</table>


The following figure illustrates this when the culture is 'en-US'.

{% highlight c# %}



this.label11.Text = this.currencyTextBox1.Culture.DisplayName;

this.label12.Text  = this.currencyTextBox1.Culture.EnglishName;

this.label13.Text  = this.currencyTextBox1.Culture.NativeName;

this.label14.Text  = this.currencyTextBox1.Culture.ThreeLetterWindowsLanguageName;

{% endhighlight %}

{% highlight vbnet %}



Me.label11.Text = Me.currencyTextBox1.Culture.DisplayName

Me.label12.Text = Me.currencyTextBox1.Culture.EnglishName

Me.label13.Text = Me.currencyTextBox1.Culture.NativeName

Me.label14.Text = Me.currencyTextBox1.Culture.ThreeLetterWindowsLanguageName

{% endhighlight %}

![](Overview_images/Overview_img507.png) 


