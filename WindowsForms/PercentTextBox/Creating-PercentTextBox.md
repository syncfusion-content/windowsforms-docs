---
layout: post
title: Creating PercentTextBox
description: Creating PercentTextBox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Creating PercentTextBox


This section will give a step-by-step procedure to design a PercentTextBox control through designer and also through programmatical approach.

## Through Designer

1. Create or open a Windows Forms project.
2. Click on the PercentTextBox Control in the toolbox and add it to the form by dragging-and-dropping it onto the form or double-clicking the control.
   ![](PercentTextBox-Images/Overview_img462.png)


3. Run the application. The PercentTextBox will allow you to enter the percent value, which will be displayed as given below.
   ![](PercentTextBox-Images/Overview_img463.png) 



## Through Programmatical Approach

1. Declare an instance of the PercentTextBox control.

   ~~~ cs



		private Syncfusion.Windows.Forms.Tools.PercentTextBox percentTextBox1;
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		Private percentTextBox1 As Syncfusion.Windows.Forms.Tools.PercentTextBox

   ~~~
   {:.prettyprint}

2. Initialize the control.

   ~~~ cs



		this.percentTextBox1 = new Syncfusion.Windows.Forms.Tools.PercentTextBox();

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		Me.percentTextBox1 = New Syncfusion.Windows.Forms.Tools.PercentTextBox()

   ~~~
   {:.prettyprint}

3. Set the properties of the PercentTextBox control.

   ~~~ cs



		this.percentTextBox1.Location = new System.Drawing.Point(65, 29);

		this.percentTextBox1.Name = "percentTextBox1";

		this.percentTextBox1.Size = new System.Drawing.Size(84, 20);

		this.percentTextBox1.PercentValue = 5;
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		Me.percentTextBox1.Location = New System.Drawing.Point(65, 29)

		Me.percentTextBox1.Name = "numericUpDownExt1"

		Me.percentTextBox1.Size = New System.Drawing.Size(84, 20)

		Me.percentTextBox1.PercentValue = 5
   ~~~
   {:.prettyprint}


4. Add the control to the form.

   ~~~ cs



		this.Controls.Add(this.percentTextBox1);

   ~~~
   {:.prettyprint}

   ~~~ vbnet

		Me.Controls.Add(Me.percentTextBox1)
   ~~~
   {:.prettyprint}


5. Run the application.

   ![](PercentTextBox-Images/Overview_img464.png) 

