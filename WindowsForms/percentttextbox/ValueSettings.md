---
layout: post
title: Value Settings | WindowsForms | Syncfusion
description: Value Settings
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Value Settings

The various values of the PercentTextBox control and their settings are given below.

* [PercentValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~PercentValue.html)
* [DefaultValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~DefaultValue.html)
* [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BindableValue.html)
* [BindablePercentValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~BindablePercentValue.html)
* [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~DoubleValue.html)

{% tabs %}
{% highlight C# %}
this.percentTextBox1.PercentValue = 5;
this.percentTextBox1.DefaultValue = 0;
this.percentTextBox1.BindableValue = 0.05;
this.percentTextBox1.BindablePercentValue = 5;
this.percentTextBox1.DoubleValue = 0.05;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.PercentValue = 5
Me.percentTextBox1.DefaultValue = 0
Me.percentTextBox1.BindableValue = 0.05
Me.percentTextBox1.BindablePercentValue = 5
Me.percentTextBox1.DoubleValue = 0.05
{% endhighlight %}
{% endtabs %}

![Percent text box value](PercentTextBox-Images/Overview_img466.png) 

## Null value settings

There are various settings that can be applied to the PercentTextBox control, when the value of the control is set to 'Null'. These settings are illustrated below.

* [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~AllowNull.html)
* [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NullString.html)
* [NullFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NullFormat.html)

{% tabs %}
{% highlight C# %}
this.percentTextBox1.NullString = "Null Value";
this.percentTextBox1.AllowNull = true;
{% endhighlight %}
{% highlight vb %}
Me.percentTextBox1.NullString = "Null Value"
Me.percentTextBox1.AllowNull = True
{% endhighlight %}
{% endtabs %}

![Null value](PercentTextBox-Images/Overview_img467.png) 

## Min and max value settings

The minimum and maximum values of the IntegerTextBox can be set using the below given properties.

* [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~MaxValue.html)
* [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~MinValue.html)
* [EnforceMinMaxDuringValidating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~EnforceMinMaxDuringValidating.html)

{% tabs %}
{% highlight C# %}
this.percentTextBox1.MaxValue = 6;
this.percentTextBox1.MinValue = -6;
this.percentTextBox1.EnforceMinMaxDuringValidating = true;
{% endhighlight %}
{% highlight VB %}
Me.percentTextBox1.MaxValue = 6
Me.percentTextBox1.MinValue = -6
Me.percentTextBox1.EnforceMinMaxDuringValidating = True
{% endhighlight %}
{% endtabs %}

The methods associated with the above properties are given below.

* [ResetMaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~ResetMaxValue.html)
* [ResetMinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.PercentTextBox~ResetMinValue.html)