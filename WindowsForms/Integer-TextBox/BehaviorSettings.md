---
layout: post
title: Behavior Settings | WindowsForms | Syncfusion
description: behavior settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Behavior Settings

The behavior settings of the IntegerTextBox control are discussed below.

## Negative key settings

The integer value of the IntegerTextBox can be reset or changed to a negative value using the properties given below.

* [DeleteSelectionOnNegative](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumericTextBox~DeleteSelectionOnNegative.html)
* [NegativeInputPendingOnSelectAll](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NegativeInputPendingOnSelectAll.html)

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

The [AllowLeadingZeros](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~AllowLeadingZeros.html) property can be used to include zeros before the beginning value of the integer value of the control.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.AllowLeadingZeros = true;
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.AllowLeadingZeros = True
{% endhighlight %}
{% endtabs %}

![AllowLeadingZeros](Overview_images/Overview_img457.png) 