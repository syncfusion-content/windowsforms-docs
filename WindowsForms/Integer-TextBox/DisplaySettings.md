---
layout: post
title: Display Settings | WindowsForms | Syncfusion
description: display settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Display Settings

This section discusses the display settings of the IntegerTextBox control.

The IntegerTextBox provides a list of properties to set the display characteristics associated with the integer value.

* [NumberGroupSeparator](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberGroupSeparator.html)
* [NumberGroupSizes](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberGroupSizes.html)
* [NumberNegativePattern](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberNegativePattern.html)
* [NegativeSign](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NegativeSign.html)


The grouping size of the number digits can be set using the Int32 Collection Editor which will be displayed on selecting the [NumberGroupSizes](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberGroupSizes.html) property in the property grid.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.NumberGroupSeparator = "/";
this.integerTextBox1.NumberGroupSizes = new int[] { 5 };
this.integerTextBox1.NumberNegativePattern = 2;
this.integerTextBox1.NegativeSign = "-";
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.NumberGroupSeparator = "/"
Me.integerTextBox1.NumberGroupSizes = New Integer() {5}
Me.integerTextBox1.NumberNegativePattern = 2
Me.integerTextBox1.NegativeSign = "-"
{% endhighlight %}
{% endtabs %}

![Display setting](Overview_images/Overview_img442.png) 


A Sample which demonstrates the Display Settings of IntegerTextBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

## Value settings

The various values of the IntegerTextBox control and their settings are given below.

* [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~IntegerValue.html)
* [DefaultValue](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~DefaultValue.html)
* [BindableValue](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~BindableValue.html)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.IntegerValue = ((long)(777));
this.integerTextBox1.DefaultValue = 0;
this.integerTextBox1.BindableValue = 777;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.IntegerValue = (CLng(777))
Me.integerTextBox1.DefaultValue = 0
Me.integerTextBox1.BindableValue = 777
{% endhighlight %}
{% endtabs %}

![Value setting](Overview_images/Overview_img443.png) 


## Null value settings

There are various settings that can be applied to the IntegerTextBox control when the value of the control is set to 'Null'. These settings are illustrated below.

* [NullString](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NullString.html)
* [NullFormat](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NullFormat.html)
* [IsNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~IsNull.html)
* [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~AllowNull.html)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.NullString = "Null Value";
this.integerTextBox1. AllowNull = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.NullString = "Null Value"
Me.integerTextBox1. AllowNull = True
{% endhighlight %}
{% endtabs %}

![Null value setting](Overview_images/Overview_img444.png) 


## Min and max value settings

The minimum and maximum values of the IntegerTextBox can be set using the below given properties.

* [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~MaxValue.html)
* [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~MinValue.html)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.MaxValue = 9223372036854775807;
this.integerTextBox1.MinValue = -9223372036854775808;
{% endhighlight %}
{% highlight  VB %}
Me.integerTextBox1.MaxValue = 9223372036854775807
Me.integerTextBox1.MinValue = -9223372036854775808
{% endhighlight %}
{% endtabs %}