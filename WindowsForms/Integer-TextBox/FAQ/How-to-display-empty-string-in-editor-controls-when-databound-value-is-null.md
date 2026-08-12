---
layout: post
title: Show empty string in Windows Forms Integer TextBox | Syncfusion®
description: Learn how to display an empty string in Syncfusion Windows Forms IntegerTextBox when the databound value is null using AllowNull and NullString properties.
platform: windowsforms
control: Tools
documentation: ug
---

# Show empty string in Windows Forms Integer TextBox

We can display empty string when data bound value is null. For this we need to bind the editor controls (like IntegerTextBox, DoubleTextBox, etc.,) to BindableValue property and also we need to set [AllowNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_AllowNull) to true and [NullString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_NullString) property to empty string.

Find the code snippet below, which illustrates the same.

{% tabs %}
{% highlight C# %}
this.integerTextBox1.NullString = "";
this.integerTextBox1.AllowNull = true;
this.integerTextBox1.DataBindings.Add("BindableValue", boundView, "IntegerField");
{% endhighlight %}
{% highlight VB %}
Me.integerTextBox1.NullString = ""
Me.integerTextBox1. AllowNull = True
Me.integerTextBox1.DataBindings.Add("BindableValue", boundView, "IntegerField")
{% endhighlight %}
{% endtabs %}
