---
layout: post
title: Culture Settings | WindowsForms | Syncfusion
description: culture settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Culture Settings
Users can set the culture of the integer text box control using the [Culture](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~Culture.html), [CurrentCultureRefresh](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~CurrentCultureRefresh.html), [SpecialCultureValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~SpecialCultureValue.html), and [UseUserOverride](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~UseUserOverride.html) properties.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.Culture = new System.Globalization.CultureInfo("ar-SA");
this.integerTextBox1.CurrentCultureRefresh = true;
this.integerTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;
this.integerTextBox1.UseUserOverride = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.Culture = New System.Globalization.CultureInfo("ar-SA")
Me.integerTextBox1.CurrentCultureRefresh = True
Me.integerTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None
Me.integerTextBox1.UseUserOverride = True
{% endhighlight %}
{% endtabs %}

![Culture support](Overview_images/Overview_img445.png) 

N> The [RefreshCulture](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~RefreshCulture.html) method can be used to refresh and reapply the culture specific settings.

A Sample which demonstrates the Culture Settings of the IntegerTextBox control is available in the below sample installation path.

…\System Drive:\Users\Username\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS