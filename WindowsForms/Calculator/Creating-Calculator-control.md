---
layout: post
title: Creating-Calculator-control
description: creating calculator control
platform: windowsforms
control: Calculator
documentation: ug
---

# Creating Calculator control

The Calculator control can be available to the designer by just dragging-and-dropping the Calculator control from the toolbox onto the form. 

![](Overview_images/Overview_img111.jpeg) 



It can be created programmatically using the below steps.

1. Include the required namespace.

   ~~~ cs

        using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.pretty-print }

2. Declare and create an instance of the Calculator control class.

   ~~~ cs

        private Syncfusion.Windows.Forms.Tools.CalculatorControl calculatorControl1;

		// Create an instance of the Calculator control
		
		this.calculatorControl1 = new CalculatorControl();

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Private calculatorControl1 As Syncfusion.Windows.Forms.Tools.CalculatorControl

		' Create an instance of the Calculator control

		Me.calculatorControl1 = New CalculatorControl()

   ~~~
   {:.pretty-print }

3. As the final step, add the Calculator control to the form as follows.

   ~~~ cs

        // Add the CalculatorControl control to the form.

		this.Controls.Add(this.calculatorControl1);

		this.calculatorControl1.Visible=true;

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        ' Add the CalculatorControl control to the form.

		Me.Controls.Add(Me.calculatorControl1)

		Me.calculatorControl1.Visible=True

   ~~~
   {:.pretty-print }

![](Overview_images/Overview_img112.jpeg) 



