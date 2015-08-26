---
layout: post
title: Creating-Currency-TextBox
description: creating currency textbox
platform: windowsforms
control: Editors Package
documentation: ug
---

# Creating Currency TextBox


CurrencyTextBox provides full support for the windows forms designer. Just drag and drop CurrencyTextBox from the toolbox, onto the form.

![http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/Images/Editor_CurrencyTB_Icon.png](Overview_images/Overview_img489.png) 



It can be created programmatically as follows.

1. Include the required namespace.

   ~~~ c#

        using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.pretty-print }

2. Create an instance of the CurrencyTextBox. Add that instance to the Form.

   ~~~ c#

        private Syncfusion.Windows.Forms.Tools.CurrencyTextBox currencyTextBox1;

		this.currencyTextBox2=new Syncfusion.Windows.Forms.Tools.CurrencyTextBox();

		this.Controls.Add(this.currencyTextBox1);

   ~~~
   {:.pretty-print }

   ~~~ vbnet

        Private currencyTextBox1 As Syncfusion.Windows.Forms.Tools.CurrencyTextBox

		Me.currencyTextBox2 = New Syncfusion.Windows.Forms.Tools.CurrencyTextBox()

		Me.Controls.Add(Me.currencyTextBox1)

   ~~~
   {:.pretty-print }