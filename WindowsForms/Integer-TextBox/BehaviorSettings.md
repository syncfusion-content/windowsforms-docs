---
layout: post
title: Behavior Settings in Windows Forms IntegerTextBox | Syncfusion®
description: Learn about Behavior Settings support in Syncfusion Windows Forms IntegerTextBox control, its elements and more details.
platform: windowsforms
control: IntegerTextBox
documentation: ug
---

# Behavior Settings in WinForms Integer TextBox

The behavior settings of the WinForms Integer TextBox control are discussed below.

## Negative key settings

The integer value of the WinForms Integer TextBox can be reset or changed to a negative value using the following properties:

* [DeleteSelectionOnNegative](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_DeleteSelectionOnNegative) - When `true`, selecting the entire content and pressing the negative key deletes the current value before applying the negative sign.
* [NegativeInputPendingOnSelectAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeInputPendingOnSelectAll) - When `true`, the negative sign is held pending until the next digit is entered.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.DeleteSelectionOnNegative = true;
this.integerTextBox1.NegativeInputPendingOnSelectAll = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.DeleteSelectionOnNegative = True
Me.integerTextBox1.NegativeInputPendingOnSelectAll = True
{% endhighlight %}
{% endtabs %}

## AllowLeadingZeros

The [AllowLeadingZeros](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_AllowLeadingZeros) property can be used to include leading zeros in the integer value of the control.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.AllowLeadingZeros = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.AllowLeadingZeros = True
{% endhighlight %}
{% endtabs %}

![WinForms Integer TextBox with leading zeros enabled](Overview_images/Overview_img457.png) 
