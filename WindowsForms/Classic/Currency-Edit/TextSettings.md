---
layout: post
title: Text Settings in Windows Forms ContextMenuStrip control | Syncfusion
description: Learn about Text Settings support in Syncfusion Windows Forms CurrencyEdit control and more details.
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---

# Text Settings in Windows Forms CurrencyEdit

The below properties will let you control the behavior of the text in the [CurrencyEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html) control.

* [ShowTextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_ShowTextBox)
* [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_Text)
* [TextBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_TextBox)
* [TextAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html#Syncfusion_Windows_Forms_Tools_ButtonEdit_TextAlign)
* [TransferFromCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_TransferFromCalculator)
* [TransferToCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_TransferToCalculator)
* [DecimalValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_DecimalValue)

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


N> Enabling [CurrencyEdit.UseVisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html#Syncfusion_Windows_Forms_Tools_ButtonEdit_UseVisualStyle) property and by setting visual style for control using [CurrencyEdit.ButtonStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ButtonEdit.html#Syncfusion_Windows_Forms_Tools_ButtonEdit_ButtonStyle) property, we can change the appearance of the calculator button.
