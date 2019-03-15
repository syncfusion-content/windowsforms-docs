---
layout: post
title: Culture Settings | WindowsForms | Syncfusion
description: Culture Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Culture Settings

Users can set the culture of the percent text box control using the [Culture](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~Culture.html), [CurrentCultureRefresh](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~CurrentCultureRefresh.html), [SpecialCultureValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~SpecialCultureValue.html), and [UseUserOverride](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~UseUserOverride.html) properties.

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

N> The [RefreshCulture](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~RefreshCulture.html) method can be used to refresh and reapply the culture specific settings.

A sample which demonstrates the Culture Settings of the PercentTextBox control is available in the below sample installation path.

…\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo