---
layout: post
title: Creating ColorUIControl
description: creating coloruicontrol
platform: windowsforms
control: ColorUI 
documentation: ug
---

# Creating ColorUIControl

ColorUIControl can be added through designer by just dragging-and-dropping it from thetoolbox onto the Windows Form Designer. 

![](ColorUI_images/Overview_img226.jpeg)



It can also be created programmatically as discussed below.

1. Include the required namespace.



   ~~~ cs

             using Syncfusion.Windows.Forms.Tools;
   ~~~
   {:.prettyprint}




   ~~~ vbnet

             Imports Syncfusion.Windows.Forms.Tools
   ~~~
   {:.prettyprint}


2. Create an instance of the ColorUIControl control class. Specify its size and add it to the form.



   ~~~ cs

					// Declaring and Initializing the control

					private Syncfusion.Windows.Forms.ColorUIControl colorUIControl1;

					this.colorUIControl1=new Syncfusion.Windows.Forms.ColorUIControl();

					//Specify the size for the control

					this.colorUIControl1.Size = new System.Drawing.Size(200, 136);



					Adding ColorUIControl to the form

					this.Controls.Add(this.colorUIControl1);

   ~~~
	{:.prettyprint}

   ~~~ vbnet



					' Declaring and Initializing the control

					Private colorUIControl1 As Syncfusion.Windows.Forms.ColorUIControl

					Me.colorUIControl1 = New Syncfusion.Windows.Forms.ColorUIControl()



					'Specify the size for the control

					Me.colorUIControl1.Size = New System.Drawing.Size(200, 136)



					' Adding ColorUIControl to the form

					Me.Controls.Add(Me.colorUIControl1)
   ~~~
   {:.prettyprint}


   ![](ColorUI_images/Overview_img227.jpeg)


See also

Concepts and Features