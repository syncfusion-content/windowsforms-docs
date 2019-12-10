---
layout: post
title: Banner Text Support | WindowsForms | Syncfusion
description: banner text support
platform: WindowsForms
control: Tools
documentation: ug
---

# Banner Text Support

The IntegerTextBox control can display banner text in the text field, at run time. A [BannerTextProvider](/windowsforms/bannertextprovider/overview) should be available for this purpose. Also, we need to set [AllowNull](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~AllowNull.html), [NullString](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.NumberTextBoxBase~NullString.html) and [Text](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.IntegerTextBox~Text.html) properties as below, to make this feature effective.

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
