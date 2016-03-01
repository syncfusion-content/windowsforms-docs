---
layout: post
title: How-to-customize-the-calculator-display-text-area-to-use-NumberGroupSeparator | Windows Forms | Syncfusion
description: how to customize the calculator display text area to use numbergroupseparator
platform: windowsforms
control: Editors Package
documentation: ug
---


# How to customize the calculator display text area to use NumberGroupSeparator?

The calculator control by default does not allow the use of NumberGroupSeparator like in DoubleTextBox. 

![](Overview_images/Overview_img129.jpeg) 



So to achieve this we need to derive the CalculatorControl and override the CreateCalculatorDisplayBox() method.

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

{% highlight vbnet %}



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

![](Overview_images/Overview_img130.jpeg) 



