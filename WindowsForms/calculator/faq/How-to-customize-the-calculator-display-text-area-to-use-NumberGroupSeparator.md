---
layout: post
title: Customize the calculator display text | WindowsForms | Syncfusion®
description: how to customize the calculator display text area to use numbergroupseparator
platform: windowsforms
control: Calculator control
documentation: ug
---

# How to Customize the Calculator Display Text Area to Use NumberGroupSeparator

The [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) by default does not allow the use of NumberGroupSeparator like in DoubleTextBox. 

![Number group](Overview_images/Overview_img129.jpeg) 

So to achieve this we need to derive the [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) and override the CreateCalculatorDisplayBox() method.

{% tabs %}
{% highlight c# %}

private CalculatorAdv calculatorControl1;
this.calculatorControl1 = new CalculatorAdv();
public class CalculatorAdv : Syncfusion.Windows.Forms.Tools.CalculatorControl
{
    public CalculatorAdv()
    {
    }
    protected override void CreateCalculatorDisplayBox()
    {
        Syncfusion.Windows.Forms.Tools.DoubleTextBox dtb = new Syncfusion.Windows.Forms.Tools.DoubleTextBox();
        dtb.NumberGroupSeparator = ",";
        this.textCalculatorBox = dtb; //Changing the TextBox to DoubleTextBox
    }
}

{% endhighlight %}

{% highlight vb %}

Private calculatorControl1 As CalculatorAdv
Me.calculatorControl1 = New CalculatorAdv() 
Public Class CalculatorAdv
Inherits Syncfusion.Windows.Forms.Tools.CalculatorControl
Public Sub New()
End Sub
Protected Overloads Overrides Sub CreateCalculatorDisplayBox()
Dim dtb As New Syncfusion.Windows.Forms.Tools.DoubleTextBox()
dtb.NumberGroupSeparator = ","
Me.textCalculatorBox = dtb
'Changing the TextBox to DoubleTextBox 
End Sub
End Class

{% endhighlight %}
{% endtabs %}

![Number group separator](Overview_images/Overview_img130.jpeg) 
