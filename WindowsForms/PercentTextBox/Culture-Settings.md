---
layout: post
title: Culture Settings | Windows Forms | Syncfusion
description: Culture Settings
platform: windowsforms
control: Editors Package
documentation: ug
---

# Culture Settings

This section discusses the Culture settings of the PercentTextBox control.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
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
Gets / sets the mode for the cultures.It includes the below given options.{{ 'None,' | markdownify }}{{ 'CurrentCulture,' | markdownify }}{{ 'UICulture and' | markdownify }}{{ 'InstalledCulture.' | markdownify }}</td></tr>
<tr>
<td>
UseUserOverride</td><td>
Specifies if the NumberFormatInfo used for formatting will use the User Overrides for the culture. The default value is set to 'True'.</td></tr>
</table>



{% highlight C# %}



this.percentTextBox1.Culture = new System.Globalization.CultureInfo("ar-JO");

this.percentTextBox1.CurrentCultureRefresh = true;

this.percentTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;

this.percentTextBox1.UseUserOverride = true;
{% endhighlight %}



{% highlight vbnet %}


Me.percentTextBox1.Culture = New System.Globalization.CultureInfo("ar-JO")

Me.percentTextBox1.CurrentCultureRefresh = True

Me.percentTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None

Me.percentTextBox1.UseUserOverride = True

{% endhighlight %}

![](PercentTextBox-Images/Overview_img468.png) 




N> The RefreshCulture() method can be used to refresh and reapply the culture specific settings.

A sample which demonstrates the Culture Settings of the PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo