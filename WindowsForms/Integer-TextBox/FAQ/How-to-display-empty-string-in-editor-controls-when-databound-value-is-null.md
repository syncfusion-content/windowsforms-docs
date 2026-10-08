---
layout: post
title: How to Show Empty String in IntegerTextBox | Syncfusion®
description: Learn how to show an empty string when the databound value is null in Syncfusion Windows Forms IntegerTextBox control, its elements and more details.
platform: windowsforms
control: IntegerTextBox
documentation: ug
---

# How to Show Empty String in WinForms Integer TextBox

We can display an empty string when a data-bound value is `null`. For this, the editor control (such as `IntegerTextBox`, `DoubleTextBox`, and so on) must be bound to the `BindableValue` property, and the [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_AllowNull) property must be set to `true` while the [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullString) property is set to an empty string.

The following code snippet illustrates this:

{% tabs %}
{% highlight C# %}
this.integerTextBox1.NullString = "";
this.integerTextBox1.AllowNull = true;
this.integerTextBox1.DataBindings.Add("BindableValue", boundView, "IntegerField");
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.NullString = ""
Me.integerTextBox1.AllowNull = True
Me.integerTextBox1.DataBindings.Add("BindableValue", boundView, "IntegerField")
{% endhighlight %}
{% endtabs %}
