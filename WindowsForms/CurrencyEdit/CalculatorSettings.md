---
layout: post
title: Calculator Settings | Windows Forms | Syncfusion
description: calculator settings
platform: windowsforms
control: CurrencyEdit
documentation: ug
---

# Calculator Settings

A CurrencyEdit control has a text field and a Calculator button, pressing which will open a Calculator control. The below image illustrates the same.

 ![](Overview_images/Overview_img416.png) 



The properties which controls the behavior of the Calculator button is as follows.


<table>
<tr>
<th>
CurrencyEdit Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowCalculator</td><td>
Specifies whether calculator button is to be displayed. By default it is True.</td></tr>
<tr>
<td>
CalculatorButton</td><td>
Provides properties to customize the calculator button. 
See {{ '[ButtonEdit](http://help.syncfusion.com/windowsforms/buttonedit/buttoneditevents#click-event)'| markdownify}}  control user guide to know about the settings.</td></tr>
<tr>
<td>
CalculatorLayoutType</td><td>
Specifies the LayoutType for the Calculator control. The layout types are,
Financial (default) <br/>and WindowStandard<br/>.</td></tr>
<tr>
<td>
PopupCalculatorAlignment</td><td>
It sets the alignment of the popup calculator with respect to the ButtonEdit control. The options are,
Right(default) and <br/>Left<br/>.</td></tr>
<tr>
<td>
CloseAction</td><td>
Specifies the action that will close the popup calculator. After performing calculations in the popup calculator, we may press '=' to close the popup calculator. This is called closed action. We can select any operator instead of '=' to close the popup calculator. The options are,
Calcdigit0...Calcdigit9,<br/>
CalcOperatorNone,<br/>
CalcOperatorMultiply,<br/>
CalcOperatorPlus,<br/>
CalcOperatorMinus,<br/>
CalcOperatorDivide,<br/>
CalcOperatorPercent,<br/>
CalcOperatorEquals (default),<br/>
CalcOperatorSqrt,<br/>
CalcOperatorSign,<br/>
CalcOperatorMemoryClear,<br/>
CalcOperatorMemoryRecall,<br/>
CalcOperatorMemoryStore,<br/>
CalcOperatorMemoryPlus,<br/>
CalcSpecialClear,<br/>
CalcSpecialClearEntry,<br/>
CalcSpecialDecimal and<br/>
CalcSpecialBackspace.<br/></td></tr>
</table>


{% highlight c# %}



this.currencyEdit1.CalculatorLayoutType = Syncfusion.Windows.Forms.Tools.CalculatorLayoutTypes.WindowsStandard;

this.currencyEdit1.CloseAction = Syncfusion.Windows.Forms.Tools.CalcActions.CalcOperatorEquals;

this.currencyEdit1.PopupCalculatorAlignment = Syncfusion.Windows.Forms.Tools.CalculatorPopupAlignment.Left;

this.currencyEdit1.ShowCalculator = true;

this.currencyEdit1.TransferFromCalculator = true;

this.currencyEdit1.TransferToCalculator = true;

{% endhighlight %}





{% highlight vbnet %}



Me.currencyEdit1.CalculatorLayoutType = Syncfusion.Windows.Forms.Tools.CalculatorLayoutTypes.WindowsStandard

Me.currencyEdit1.CloseAction = Syncfusion.Windows.Forms.Tools.CalcActions.CalcOperatorEquals

Me.currencyEdit1.PopupCalculatorAlignment = Syncfusion.Windows.Forms.Tools.CalculatorPopupAlignment.Left

Me.currencyEdit1.ShowCalculator = True

Me.currencyEdit1.TransferFromCalculator = True

Me.currencyEdit1.TransferToCalculator = True

{% endhighlight %}