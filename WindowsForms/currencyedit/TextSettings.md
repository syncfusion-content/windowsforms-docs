---
layout: post
title: Text Settings | CurrencyEdit | WindowsForms | Syncfusion
description: text settings
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Text Settings

The below properties will let you control the behavior of the text in the [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) control.

* [ShowTextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~ShowTextBox.html)
* [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~Text.html)
* [TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~TextBox.html)
* [TextAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ButtonEdit~TextAlign.html)
* [TransferFromCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~TransferFromCalculator.html)
* [TransferToCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~TransferToCalculator.html)
* [DecimalValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CurrencyEdit~DecimalValue.html)

{% tabs %}
{% highlight C# %}
this.currencyEdit1.ShowTextBox = true;
this.currencyEdit1.Text = "$400.00";
this.currencyEdit1.TextAlign = HorizontalAlignment.Right;
this.currencyEdit1.TransferFromCalculator=true;
this.currencyEdit1.TransferToCalculator= false;
this.currencyEdit1.TextBox.DecimalValue = new decimal(new int[] {40000, 0, 0, 131072});
{% endhighlight %}
{% highlight VB %}
Me.currencyEdit1.ShowTextBox = True
Me.currencyEdit1.Text = "$400.00"
Me.currencyEdit1.TextAlign = HorizontalAlignment.Right
Me.currencyEdit1.TransferFromCalculator = True
Me.currencyEdit1.TransferToCalculator = False
Me.currencyEdit1.TextBox.DecimalValue = New Decimal(New Integer() {40000, 0, 0, 131072})
{% endhighlight %}
{% endtabs %}

![Text settings](Overview_images/Overview_img417.png) 


N> Enabling [CurrencyEdit.UseVisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ButtonEdit~UseVisualStyle.html) property and by setting visual style for control using [CurrencyEdit.ButtonStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ButtonEdit~ButtonStyle.html) property, we can change the appearance of the calculator button.
