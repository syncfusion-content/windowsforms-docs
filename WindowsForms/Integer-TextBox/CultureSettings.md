---
layout: post
title: Culture Settings in Windows Forms Integer TextBox control | Syncfusion®
description: Learn about Culture Settings support in Syncfusion® Windows Forms Integer TextBox (Integertextbox) control and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Culture Settings in Windows Forms Integer TextBox (Integertextbox)
Users can set the culture of the integer text box control using the [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_Culture), [CurrentCultureRefresh](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_CurrentCultureRefresh), [SpecialCultureValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SpecialCultureValue), and [UseUserOverride](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_UseUserOverride) properties.

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

N> The [RefreshCulture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RefreshCulture) method can be used to refresh and reapply the culture specific settings.

A Sample which demonstrates the Culture Settings of the IntegerTextBox control is available in the below sample installation path.

…\System Drive:\Users\Username\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Editor Controls\Editor Controls\CS
