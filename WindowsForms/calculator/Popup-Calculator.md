---
layout: post
title: Popup-CalculatorControl | WindowsForms | Syncfusion
description: Learn here all about the Syncfusion Essential Studio Windows Forms popup calculatorControl, its elements, and more.
platform: WindowsForms
control: Calculator
documentation: ug
---

# Pop-Up CalculatorControl

The [PopupCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PopupCalculator.html) class can be used to display a popup [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html). This class can be created programmatically. 

The [PopupCalculator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PopupCalculator.html) control lets you embed a [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) object to a button for example. Drop the button onto the form and add the following code snippet.

{% tabs %}
{% highlight C# %}

private Syncfusion.Windows.Forms.Tools.PopupCalculator popupCalculator1;
private void buttonAdv1_Click(object sender, EventArgs e)
{

// Create the Popup Calculator.
    popupCalculator1 = new Syncfusion.Windows.Forms.Tools.PopupCalculator();

// The control that will act as the Popup's parent.
    this.popupCalculator1.ParentControl = this.button1;

// Set the alignment.
    this.popupCalculator1.PopupCalculatorAlignment = Syncfusion.Windows.Forms.Tools.CalculatorPopupAlignment.Right;

// Display the Calculator control.
    this.popupCalculator1.DisplayCalculator(Point.Empty);

//Sets the size of the calculator
    this.popupCalculator1.Size = this.calculatorControl1.Size;
}

{% endhighlight %}

{% highlight VB %}

Private popupCalculator1 As Syncfusion.Windows.Forms.Tools.PopupCalculator
Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As EventArgs)

' Create the Popup Calculator. 
popupCalculator1 = New Syncfusion.Windows.Forms.Tools.PopupCalculator()

' The control that will act as the Popup's parent. 
Me.popupCalculator1.ParentControl = Me.button1

' Set the alignment. 
Me.popupCalculator1.PopupCalculatorAlignment = Syncfusion.Windows.Forms.Tools.CalculatorPopupAlignment.Right

' Display the Calculator control. 
Me.popupCalculator1.DisplayCalculator(Point.Empty)

'Sets the size of the calculator 
Me.popupCalculator1.Size = Me.calculatorControl1.Size
End Sub

{% endhighlight %}
{% endtabs %}

![PopupCalculator control created programmatically](Overview_images/Overview_img126.jpeg)
