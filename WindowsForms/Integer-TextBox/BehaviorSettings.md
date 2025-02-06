---
layout: post
title: Behavior Settings in Windows Forms Integer TextBox | Syncfusion®
description: Learn about Behavior Settings support in Syncfusion® Windows Forms Integer TextBox control, its elements and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Behavior Settings in Windows Forms Integer TextBox

The behavior settings of the IntegerTextBox control are discussed below.

## Negative key settings

The integer value of the IntegerTextBox can be reset or changed to a negative value using the properties given below.

* [DeleteSelectionOnNegative](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumericTextBox.html#Syncfusion_Windows_Forms_Tools_NumericTextBox_DeleteSelectionOnNegative)
* [NegativeInputPendingOnSelectAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NegativeInputPendingOnSelectAll)

{% tabs %}
{% highlight C# %}
this.integerTextBox1.DeleteSelectionOnNegative = true;
this.integerTextBox1.NegativeInputPendingOnSelectAll = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.DeleteSelectionOnNegative = True
Me.integerTextBox1.NegativeInputPendingOnSelectAll = True
{% endhighlight %}
{% endtabs %}

## AllowLeadingZeros

The [AllowLeadingZeros](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.IntegerTextBox.html#Syncfusion_Windows_Forms_Tools_IntegerTextBox_AllowLeadingZeros) property can be used to include zeros before the beginning value of the integer value of the control.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.AllowLeadingZeros = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.AllowLeadingZeros = True
{% endhighlight %}
{% endtabs %}

![AllowLeadingZeros](Overview_images/Overview_img457.png) 
