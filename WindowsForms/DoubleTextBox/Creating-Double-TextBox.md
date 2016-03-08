---
layout: post
title: Creating Double TextBox | Windows Forms | Syncfusion
description: creating double textbox
platform: windowsforms
control: DoubleTextBox
documentation: ug
---
# Creating Double TextBox

To use a DoubleTextBox control in your application, all you need to do is drag and drop the DoubleTextBox control from the 
controls toolbox onto your form.


![](DoubleTextBox-images/DoubleTextBox_img2.png)
 

It can be created programmatically as follows.

1. Add Shared.Base, Shared.Windows, Tools.Base and Tools.Windows assembly references and include the required namespace.

   ~~~ cs    

		using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.prettyprint }




   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }


 
2. Create an instance of the DoubleTextBox. Add that instance to the Form.

   ~~~ cs 

		this.doubleTextBox1=new Syncfusion.Windows.Forms.Tools.DoubleTextBox();

		this.Controls.Add(this.doubleTextBox1);
 
   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.doubleTextBox1 = New Syncfusion.Windows.Forms.Tools.DoubleTextBox()

		Me.Controls.Add(Me.doubleTextBox1)

   ~~~
   {:.prettyprint }


 
![](DoubleTextBox-images/DoubleTextBox_img3.png)






