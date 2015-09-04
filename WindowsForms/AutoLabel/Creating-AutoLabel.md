---
layout: post
title: Creating AutoLabel
description: Creating AutoLabel
platform: WindowsForms
control: AutoLabel
documentation: ug
---

# Creating AutoLabel

The AutoLabel control can be created in the following ways.

## Through Designer

The following steps illustrate how to create an AutoLabel control through designer.

* Create or open a Windows Forms project.
* Add an AutoLabel Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.

  ![](AutoLabel-Images/Overview_img5.jpg) 



* Set the desired properties for the control through theProperty grid.
* Run the application.

  ![](AutoLabel-Images/Overview_img6.jpg) 



See Also Through Code

## Through Code

The following steps illustrate how to create an AutoLabel control programmatically.

*  Create a C# or VB.NET application though Visual Studio.
*  Add the required assembly references.
*  Include the required namespace.

   ~~~ cs



		using Syncfusion.Windows.Forms.Tools;
		
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		Imports Syncfusion.Windows.Forms.Tools

   ~~~ 
   {:.prettyprint}

*  Declare the AutoLabel control.

   ~~~ cs

		private Syncfusion.Windows.Forms.Tools.AutoLabel autoLabel1;

		~~~
   {:.prettyprint}


   ~~~ vbnet



		Private autoLabel1 As Syncfusion.Windows.Forms.Tools.AutoLabel
   
   ~~~
   {:.prettyprint}


*  Initialize the control.

   ~~~ cs


		this.autoLabel1 = new Syncfusion.Windows.Forms.Tools.AutoLabel();

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		Me.autoLabel1 = New Syncfusion.Windows.Forms.Tools.AutoLabel()

   ~~~
   {:.prettyprint}

*  Set the properties for the AutoLabel control and add it to your form.

   ~~~ cs



		this.autoLabel1.Text = "autoLabel1";

		this.autoLabel1.BackColor = System.Drawing.Color.BurlyWood;

		this.autoLabel1.ForeColor = System.Drawing.Color.SaddleBrown;

		this.autoLabel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

		this.autoLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;



		// Add the AutoLabel control to the Form.

		this.Controls.Add(this.autoLabel1);
  
  ~~~
   {:.prettyprint}


   ~~~ vbnet



		Me.autoLabel1.Text = "autoLabel1"

		Me.autoLabel1.BackColor = System.Drawing.Color.BurlyWood

		Me.autoLabel1.ForeColor = System.Drawing.Color.SaddleBrown

		Me.autoLabel1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0)))

		Me.autoLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter



		' Add the AutoLabel control to the Form.

		Me.Controls.Add(Me.autoLabel1)

   ~~~
   {:.prettyprint}

*  Run the application.

  ![](AutoLabel-Images/Overview_img6.jpg)

