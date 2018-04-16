---
layout: post
title: Banner Text Support | WindowsForms | Syncfusion
description: banner text support
platform: WindowsForms
control: Tools
documentation: ug
---

# Banner Text Support

The IntegerTextBox control can display banner text in the text field, at run time. A [BannerTextProvider](/windowsforms/bannertextprovider/overview) should be available for this purpose. Also, we need to set AllowNull, NullString and Text properties as below, to make this feature effective.

{% tabs %}

{% highlight C# %}

this.integerTextBox1.AllowNull = true;
this.integerTextBox1.NullString = "";
this.integerTextBox1.Text = "";

{% endhighlight %}

{% highlight VB %}

Me.integerTextBox1.AllowNull = True
Me.integerTextBox1.NullString = ""
Me.integerTextBox1.Text = ""

{% endhighlight %}
{% endtabs %}
