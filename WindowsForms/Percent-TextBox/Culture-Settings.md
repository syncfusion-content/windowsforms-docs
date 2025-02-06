---
layout: post
title: Culture Settings in Windows Forms Percent TextBox control | Syncfusion®
description: Learn about Culture Settings support in Syncfusion® Windows Forms Percent TextBox control and more details.
platform: windowsforms
control: Editors Package
documentation: ug
---

# Culture Settings in Windows Forms Percent TextBox

Users can set the culture of the percent text box control using the [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Culture), [CurrentCultureRefresh](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_CurrentCultureRefresh), [SpecialCultureValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SpecialCultureValue), and [UseUserOverride](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_UseUserOverride) properties.

{% tabs %}
{% highlight C# %}
this.percentTextBox1.Culture = new System.Globalization.CultureInfo("ar-JO");
this.percentTextBox1.CurrentCultureRefresh = true;
this.percentTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;
this.percentTextBox1.UseUserOverride = true;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.Culture = New System.Globalization.CultureInfo("ar-JO")
Me.percentTextBox1.CurrentCultureRefresh = True
Me.percentTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None
Me.percentTextBox1.UseUserOverride = True
{% endhighlight %}
{% endtabs %}

![Percent text box culture support](PercentTextBox-Images/Overview_img468.png) 

N> The [RefreshCulture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RefreshCulture) method can be used to refresh and reapply the culture specific settings.

A sample which demonstrates the Culture Settings of the PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo
