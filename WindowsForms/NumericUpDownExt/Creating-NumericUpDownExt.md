---
layout: post
title: Creating-NumericUpDownExt | WindowsForms | Syncfusion
description: creating numericupdownext
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Creating NumericUpDownExt

This section will give a step-by-step procedure to design a NumericUpDownExt control through designer and also through programmatical approach.

## Through Designer

1. Create or open a Windows Forms project.
2. Click on the NumericUpDownExt Control in the toolbox and add it to the form by dragging and dropping it onto the form or double clicking the control.



   ![](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img1.png)



3. Run the application. The NumericUpDownExt will allow you to display numeric values by clicking on the up and down buttons.

   ![](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img2.png)



## Through Programmatical Approach

1. Declare an instance of the NumericUpDownExt control.

   ~~~ cs



		private Syncfusion.Windows.Forms.Tools.NumericUpDownExt numericUpDownExt1;

   ~~~
   {:.prettyprint }


   ~~~ vbnet

		Private numericUpDownExt1 As Syncfusion.Windows.Forms.Tools.NumericUpDownExt

   ~~~
   {:.prettyprint }


2. Initialize the control.

   ~~~ cs



		this.numericUpDownExt1 = new Syncfusion.Windows.Forms.Tools.NumericUpDownExt();

   ~~~
   {:.prettyprint }

   ~~~ vbnet


		Me.numericUpDownExt1 = New Syncfusion.Windows.Forms.Tools.NumericUpDownExt()

   ~~~
   {:.prettyprint }


3. Set the properties of the NumericUpDownExt control.

   ~~~ cs



		this.numericUpDownExt1.Location = new System.Drawing.Point(70, 29);

		this.numericUpDownExt1.Name = "numericUpDownExt1";

		this.numericUpDownExt1.Size = new System.Drawing.Size(84, 20);


   ~~~
   {:.prettyprint }


   ~~~ vbnet

		Me.numericUpDownExt1.Location = New System.Drawing.Point(70, 29)

		Me.numericUpDownExt1.Name = "numericUpDownExt1"

		Me.numericUpDownExt1.Size = New System.Drawing.Size(84, 20)

   ~~~
   {:.prettyprint }


4. Add the control to the form.

   ~~~ cs



		this.Controls.Add(this.numericUpDownExt1);


   ~~~
   {:.prettyprint }

   ~~~ vbnet


		Me.Controls.Add(Me.numericUpDownExt1)

   ~~~
   {:.prettyprint }


5. Run the application. You will be able to see the NumericUpDownExt control in your form.

![](Creating-NumericUpDownExt_images/Creating-NumericUpDownExt_img3.png)







