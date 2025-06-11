---
layout: post
title: Display Settings in Windows Forms Integer TextBox control | Syncfusion®
description: Learn about Display Settings support in Syncfusion® Windows Forms Integer TextBox (Integertextbox) control and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Display Settings in Windows Forms Integer TextBox (Integertextbox)

This section discusses the display settings of the IntegerTextBox control.

The IntegerTextBox provides a list of properties to set the display characteristics associated with the integer value.

* [NumberGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberGroupSeparator)
* [NumberGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberGroupSizes)
* [NumberNegativePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberNegativePattern)
* [NegativeSign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeSign)


The grouping size of the number digits can be set using the Int32 Collection Editor which will be displayed on selecting the [NumberGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_NumberGroupSizes) property in the property grid.

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

* [IntegerValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_IntegerValue)
* [DefaultValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_DefaultValue)
* [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue)

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

* [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullString)
* [NullFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullFormat)
* [IsNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_IsNull)
* [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_AllowNull)

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

* [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_MaxValue)
* [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_MinValue)

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
