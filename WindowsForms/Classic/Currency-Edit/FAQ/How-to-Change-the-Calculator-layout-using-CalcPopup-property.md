---
layout: post
title: How to change calculator layout in Windows Forms CurrencyEdit | Syncfusion®
description: Learn how to change the calculator layout in Syncfusion® Windows Forms CurrencyEdit control using the CalcPopup property and Windows standard layout options.
platform: WindowsForms
control: CurrencyEdit
documentation: ug
---


# How to change calculator layout in Windows Forms CurrencyEdit

This page explains How to Change the Calculator layout using CalcPopup property and more details.

## How to Change the Calculator layout using CalcPopup property

Sometimes we may be in need of a calculator with Windows standard layout. By changing the [CalcPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CurrencyEdit.html#Syncfusion_Windows_Forms_Tools_CurrencyEdit_CalcPopup) property, we can do the same. Include this code fragment in the FormLoad event.

{% tabs %}
{% highlight C# %}
// Changes the layout of the calculator.
PopupCalculator pc=new PopupCalculator();
pc.LayoutType=CalculatorLayoutTypes.WindowsStandard;
pc.ParentControl=currencyEdit1;
currencyEdit1.CalcPopup=pc;
{% endhighlight %}
{% highlight VB %}
' Changes the layout of the calculator.
Dim pc As PopupCalculator = New PopupCalculator()
pc.LayoutType=CalculatorLayoutTypes.WindowsStandard
pc.ParentControl=currencyEdit1
currencyEdit1.CalcPopup=pc
{% endhighlight %}
{% endtabs %}
