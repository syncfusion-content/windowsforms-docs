---
layout: post
title: Calculator layout | CurrencyEdit | WindowsForms | Syncfusion
description: This section describes how to change the calculator layout using calcpopup property
platform: WindowsForms
control: Editors Package
documentation: ug
---


# How to Change the Calculator layout using CalcPopup property

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
