---
layout: post
title: Simulate a particular button | WindowsForms | Syncfusion®
description: how to simulate a particular button in the calculator?
platform: windowsforms
control: Editors Package
documentation: ug
---

# How to Simulate a Particular Button in the Calculator

We can use [Calculator.ButtonAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_ButtonAction_Syncfusion_Windows_Forms_Tools_CalcActions_) method for this. When the user clicks the button, the [ButtonAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_ButtonAction_Syncfusion_Windows_Forms_Tools_CalcActions_) method of the Calculator control will call back the action of the particular button (in this example it is "=" button) and displays the result in the textbox area, using [CalcActions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalcActions.html) Enumerator. This enumerator has all the actions that can be assigned to the calculator buttons including digits and arithmetic operators also.

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
