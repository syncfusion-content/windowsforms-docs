---
layout: post
title: Number Settings | DoubleTextBox | WindowsForms | Syncfusion
description: This section describes how to set the double text box control value ranges, banner text and its culture support.
platform: WindowsForms
control: DoubleTextBox
documentation: ug
---
# Number Settings

The below table lists the properties which illustrates the number settings for the DoubleTextBox.

* [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.DoubleTextBox~DoubleValue.html)
* [NumberDecimalDigits](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberDecimalDigits.html)
* [NumberDecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberDecimalSeparator.html)
* [NumberGroupSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberGroupSeparator.html)
* [NumberGroupSizes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberGroupSizes.html)
* [NumberNegativePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~NumberNegativePattern.html)

{% tabs %}
{% highlight C# %}  
this.doubleTextBox1.NumberDecimalDigits = 3;
this.doubleTextBox1.NumberDecimalSeparator = "-";
this.doubleTextBox1.NumberGroupSeparator = ";";
this.doubleTextBox1.NumberGroupSizes = new int[] {4};
this.doubleTextBox1.NumberNegativePattern = 2;
{% endhighlight %}
{% highlight VB %} 
Me.doubleTextBox1.AllowNull = True
Me.doubleTextBox1.NullString = ""
Me.doubleTextBox1.Text = ""
Me.doubleTextBox1.NumberDecimalDigits = 3
Me.doubleTextBox1.NumberDecimalSeparator = "-"
Me.doubleTextBox1.NumberGroupSeparator = ";"
Me.doubleTextBox1.CurrencyGroupSizes = New Integer() {3}
Me.doubleTextBox1.NumberNegativePattern = 2
{% endhighlight %} 
{% endtabs %}

## DoubleTextBox Value

The maximum and minimum value of the editable field in DoubleTextBox control can be specified using the below properties.

* [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.DoubleTextBox~MaxValue.html)
* [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.DoubleTextBox~MinValue.html)

{% tabs %}
{% highlight C# %}  
this.doubleTextBox1.MaxValue = 25;
this.doubleTextBox1.MinValue = 4;
{% endhighlight %}
{% highlight VB %} 
Me.doubleTextBox1.MaxValue = 25
Me.doubleTextBox1.MinValue = 4
{% endhighlight %}
{% endtabs %}

## Banner Text Support

We can set banner text for the DoubleTextBox control. Refer [BannerTextProvider Component](/windowsforms/integertextbox/bannertextsupport) topic for more details.

We need to do the below settings to make Banner text feature available for the control.

{% tabs %}
{% highlight C# %}  
this.doubleTextBox1.AllowNull = true;
this.doubleTextBox1.NullString = "";
this.doubleTextBox1.Text = "";
{% endhighlight %}
{% highlight VB %} 
Me.doubleTextBox1.AllowNull = True
Me.doubleTextBox1.NullString = ""
Me.doubleTextBox1.Text = ""
{% endhighlight %}
{% endtabs %}

![Double textbox with banner text](DoubleTextBox-images/DoubleTextBox_img4.png)

## Culture Setting

Users can set the culture of the double text box control using the [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~Culture.html), [CurrentCultureRefresh](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~CurrentCultureRefresh.html), [SpecialCultureValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~SpecialCultureValue.html), and [UseUserOverride](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~UseUserOverride.html) properties.

{% tabs %}
{% highlight C# %}  
this.doubleTextBox1.Culture = new System.Globalization.CultureInfo("ar-SA");
this.doubleTextBox1.CurrentCultureRefresh = true;
this. doubleTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None;
this.doubleTextBox1.UseUserOverride = true;
{% endhighlight %}
{% highlight VB %} 
Me.doubleTextBox1.Culture = New System.Globalization.CultureInfo("ar-SA")
Me.doubleTextBox1.CurrentCultureRefresh = True
Me.doubleTextBox1.SpecialCultureValue = Syncfusion.Windows.Forms.Tools.SpecialCultureValues.None
Me.doubleTextBox1.UseUserOverride = True
{% endhighlight %}
{% endtabs %}

![Double textbox culture](DoubleTextBox-images/DoubleTextBox-Culture.png)
