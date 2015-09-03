---
layout: post
title: Creating-TextBoxExt
description: creating textboxext
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Creating TextBoxExt

This section will give a step-by-step procedure to design a TextBoxExt control through designer and also through programmatical approach.

## Through Designer

1. Create or open a Windows Forms project.
2. Click on the TextBoxExt Control in the toolbox and add it to the form by dragging and dropping it onto the form or double clicking the control.

   ![](Creating-TextBoxExt_images/Creating-TextBoxExt_img1.png)



3. Run the application. The TextBoxExt displayed will allow you to enter text.

   ![](Creating-TextBoxExt_images/Creating-TextBoxExt_img2.png)



### Through Programmatical Approach

1. Declare an instance of the TextBoxExt control.

   ~~~ cs



		private Syncfusion.Windows.Forms.Tools.TextBoxExt textBoxExt1;

   ~~~
   {:.prettyprint }

   ~~~ vbnet


		Private textBoxExt1 As Syncfusion.Windows.Forms.Tools.TextBoxExt

   ~~~
   {:.prettyprint }


2. Initialize the control.

   ~~~ cs



		this.textBoxExt1 = new Syncfusion.Windows.Forms.Tools.TextBoxExt();

		Me.textBoxExt1 = New Syncfusion.Windows.Forms.Tools.TextBoxExt()

   ~~~
   {:.prettyprint }


3. Add the control to the form.

   ~~~ cs



		this.Controls.Add(this.textBoxExt1);


		Me.Controls.Add(Me.textBoxExt1)

   ~~~
   {:.prettyprint }


4. Run the application. You will be able to see the TextBoxExt control in your form. After creating the TextBoxExt you can use it just like using the Windows Forms' TextBox control.

![](Creating-TextBoxExt_images/Creating-TextBoxExt_img3.png)



