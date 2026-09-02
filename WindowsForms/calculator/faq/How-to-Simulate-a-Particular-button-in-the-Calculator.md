---
layout: post
title: How to Simulate a Button in Windows Forms Calculator | Syncfusion®
description: Learn how to simulate a Button in Syncfusion Windows Forms Calculator control, its elements and more details.
platform: windowsforms
control: Calculator
documentation: ug
---

# How to Simulate a Button in WinForms Calculator

We can use [Calculator.ButtonAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_ButtonAction_Syncfusion_Windows_Forms_Tools_CalcActions_) method for this. When the user clicks the button, the [ButtonAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_ButtonAction_Syncfusion_Windows_Forms_Tools_CalcActions_) method of the WinForms Calculator control will call back the action of the particular button (in this example it is "=" button) and displays the result in the textbox area, using [CalcActions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalcActions.html) Enumerator. This enumerator has all the actions that can be assigned to the WinForms Calculator buttons including digits and arithmetic operators also.

{% tabs %}
{% highlight C# %}

private void buttonAdv1_Click(object sender, EventArgs e)
{

//Performing the "=" button action
this.calculatorControl1.ButtonAction(Syncfusion.Windows.Forms.Tools.CalcActions.CalcOperatorEquals);
}

{% endhighlight %}

{% highlight VB %}

Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As System.EventArgs) 

'Performing the "=" button action
Me.calculatorControl1.ButtonAction(Syncfusion.Windows.Forms.Tools.CalcActions.CalcOperatorEquals) 
End Sub

{% endhighlight %}
{% endtabs %}
