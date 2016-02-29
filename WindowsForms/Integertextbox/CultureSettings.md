---
layout: post
title: Culture Settings | Windows Forms | Syncfusion
description: culture settings
platform: windowsforms
control: Tools
documentation: ug
---


# Culture Settings
This section discusses the culture settings of the IntegerTextBox control.



<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Culture</td><td>
Gets / sets the culture that is to be used for formatting the numeric display.</td></tr>
<tr>
<td>
CurrentCultureRefresh</td><td>
Indicates whether the Culture property is to be refreshed when the culture changes.</td></tr>
<tr>
<td>
SpecialCultureValue</td><td>
Gets / sets the mode for the cultures.It includes the below given options.
None,
CurrentCulture,
UICulture and
InstalledCulture.</td></tr>
<tr>
<td>
UseUserOverride</td><td>
Specifies if the NumberFormatInfo used for formatting will use the User Overrides for the culture. The default value is set to 'True'.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.Culture = new System.Globalization.CultureInfo("ar-SA");

this.integerTextBox1.CurrentCultureRefresh = true;

this.integerTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;

this.integerTextBox1.UseUserOverride = true;

{%endhighlight%}


{%highlight vbnet%}



Me.integerTextBox1.Culture = New System.Globalization.CultureInfo("ar-SA")

Me.integerTextBox1.CurrentCultureRefresh = True

Me.integerTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None

Me.integerTextBox1.UseUserOverride = True

{%endhighlight%}

![](Overview_images/Overview_img445.png) 


N> The RefreshCulture() method can be used to refresh and reapply the culture specific settings.

A Sample which demonstrates the Culture Settings of the IntegerTextBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_