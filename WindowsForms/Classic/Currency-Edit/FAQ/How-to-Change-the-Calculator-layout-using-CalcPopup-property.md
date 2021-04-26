---
layout: post
title: Calculator layout | CurrencyEdit | WindowsForms | Syncfusion
description: Learn about How to change the Calculator Layout using CalcPopup Property support in Syncfusion Windows Forms CurrencyEdit control and more details.
platform: WindowsForms
control: Editors Package
documentation: ug
---


# Calculator Layout using CalcPopup Property in WinForms CurrencyEdit

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
