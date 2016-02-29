---
layout: post
title: Creating-Currency-TextBox | Windows Forms | Syncfusion
description: creating currency textbox
platform: windowsforms
control: CurrencyTextbox
documentation: ug
---

# Creating Currency TextBox


CurrencyTextBox provides full support for the windows forms designer. Just drag and drop CurrencyTextBox from the toolbox, onto the form.

![](Overview_images/Overview_img489.png) 



It can be created programmatically as follows.

1. Include the required namespace.

   ~~~ cs

        using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }

2. Create an instance of the CurrencyTextBox. Add that instance to the Form.

   ~~~ cs

        private Syncfusion.Windows.Forms.Tools.CurrencyTextBox currencyTextBox1;

		this.currencyTextBox2=new Syncfusion.Windows.Forms.Tools.CurrencyTextBox();

		this.Controls.Add(this.currencyTextBox1);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        Private currencyTextBox1 As Syncfusion.Windows.Forms.Tools.CurrencyTextBox

		Me.currencyTextBox2 = New Syncfusion.Windows.Forms.Tools.CurrencyTextBox()

		Me.Controls.Add(Me.currencyTextBox1)

   ~~~
   {:.prettyprint }