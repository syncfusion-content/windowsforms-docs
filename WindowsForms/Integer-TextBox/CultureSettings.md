---
layout: post
title: Culture Settings in Windows Forms IntegerTextBox | Syncfusion®
description: Learn about Culture Settings support in Syncfusion Windows Forms IntegerTextBox (Integertextbox) control and more details.
platform: windowsforms
control: IntegerTextBox
documentation: ug
---

# Culture Settings in WinForms Integer TextBox

You can set the culture of the WinForms Integer TextBox control using the following properties:

* [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Culture) - Sets the culture used for formatting and parsing.
* [CurrentCultureRefresh](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_CurrentCultureRefresh) - When `true`, the control refreshes whenever the current culture changes.
* [SpecialCultureValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SpecialCultureValue) - Specifies how the control behaves for neutral cultures that do not define number format information.
* [UseUserOverride](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_UseUserOverride) - When `true`, uses the user's regional overrides for number formatting.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.Culture = new System.Globalization.CultureInfo("ar-SA");
this.integerTextBox1.CurrentCultureRefresh = true;
this.integerTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;
this.integerTextBox1.UseUserOverride = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.Culture = New System.Globalization.CultureInfo("ar-SA")
Me.integerTextBox1.CurrentCultureRefresh = True
Me.integerTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None
Me.integerTextBox1.UseUserOverride = True
{% endhighlight %}
{% endtabs %}

![WinForms Integer TextBox showing the ar-SA culture format](Overview_images/Overview_img445.png)

>**NOTE**: The [RefreshCulture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RefreshCulture) method can be used to refresh and reapply the culture-specific settings.

A sample that demonstrates the Culture Settings of the WinForms Integer TextBox control is available at the following sample installation path:

`%LOCALAPPDATA%\Syncfusion\EssentialStudio\<Version Number>\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS`
