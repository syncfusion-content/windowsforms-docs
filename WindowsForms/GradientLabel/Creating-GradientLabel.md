---
layout: post
title: Creating GradientLabel
description: Creating GradientLabel
platform: WindowsForms
control: Editors Package
documentation: ug
---




# Creating GradientLabel

The GradientLabel control can be created in the following ways.

## Through Designer

To create a GradientLabel control through designer,

* Create or open a Windows Forms project.
* Add a GradientLabel Control from the toolbox onto the form by dragging and dropping it on the form or double clicking the control.

  ![](GradientLabel-Images/Overview_img600.jpeg) 



* Set the desired properties for the control through theProperty grid.
* Run the application.

  ![](GradientLabel-Images/Overview_img601.jpeg) 



> See Also
>
> [Through Code](#through-code)

## Through Code

GradientLabel can be created programmatically as detailed below.

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

*  Declare the GradientLabel control.

   ~~~ cs



		private Syncfusion.Windows.Forms.Tools.GradientLabel gradientLabel1;
   ~~~
   {:.prettyprint}


   ~~~ vbnet


		Private gradientLabel1 As Syncfusion.Windows.Forms.Tools.GradientLabel

   ~~~
   {:.prettyprint}

*  Initialize the control.

   ~~~ cs



		this.gradientLabel1 = new Syncfusion.Windows.Forms.Tools.GradientLabel();

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		Me.gradientLabel1 = New Syncfusion.Windows.Forms.Tools.GradientLabel()
   ~~~
   {:.prettyprint}


*  Set the properties for the GradientLabel control and add it to your form.

   ~~~ cs



		this.gradientLabel1.BorderStyle = System.Windows.Forms.Border3DStyle.Sunken;

		this.gradientLabel1.ForeColor = System.Drawing.SystemColors.Info;

		this.gradientLabel1.Text = "Syncfusion Control";



		// Add the GradientLabel control to the Form.

		this.Controls.Add(this.gradientLabel1);
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		Me.gradientLabel1.BorderStyle = System.Windows.Forms.Border3DStyle.Sunken

		Me.gradientLabel1.ForeColor = System.Drawing.SystemColors.Info

		Me.gradientLabel1.Text = "Syncfusion Control"



		' Add the GradientLabel control to the Form.

		Me.Controls.Add(Me.gradientLabel1)

   ~~~
   {:.prettyprint}

* Run the application.

  ![](GradientLabel-Images/Overview_img602.jpeg) 
