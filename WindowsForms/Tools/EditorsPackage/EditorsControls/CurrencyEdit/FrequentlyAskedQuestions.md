---
layout: post
title: Overview
description: overview
platform: windowsforms
control: Editors Package
documentation: ug
---

# Frequently Asked Questions

## How to Change the Calculator layout using CalcPopup property

Sometimes we may be in need of a calculator with Windows standard layout. By changing the CalcPopup property, we can do the same. Include this code fragment in the FormLoad event.

{%highlight c#%}



// Changes the layout of the calculator.

PopupCalculator pc=new Popupcalculator();

pc.LayoutType=CalculatorLayoutTypes.WindowsStandard;

pc.ParentControl=currencyEdit1;

currencyEdit1.CalcPopup=pc;


{%endhighlight%}


{%highlight vbnet%}

' Changes the layout of the calculator.

Dim pc As PopupCalculator = New Popupcalculator()

pc.LayoutType=CalculatorLayoutTypes.WindowsStandard

pc.ParentControl=currencyEdit1

currencyEdit1.CalcPopup=pc

{%endhighlight%}