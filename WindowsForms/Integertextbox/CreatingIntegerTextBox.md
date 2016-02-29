---
layout: post
title: Creating IntegerTextBox | Windows Forms | Syncfusion
description: creating integertextbox
platform: windowsforms
control: Tools
documentation: ug
---


# Creating IntegerTextBox


This section will give a step by step procedure to design an IntegerTextBox control through designer and also through programmatical approach.

## Through Designer

1. Create or open a Windows Forms project.
2. Click on the IntegerTextBox Control in the toolbox and add it to the form by dragging and dropping it onto the form or double clicking the control.
   
   ![](Overview_images/Overview_img439.png) 



3. Run the application. The IntegerTextBox that allows you to enter only integer values, will be displayed as given below.

   ![](Overview_images/Overview_img440.png) 
   
   

## Through Programmatical Approach

The IntegerTextBox control can be created programmatically through code as detailed below.

1. Include the required namespace.
   
   ~~~ cs
		using Syncfusion.Windows.Forms.Tools;
   ~~~
   {:.prettyprint}
   
   ~~~vbnet
		Imports Syncfusion.Windows.Forms.Tools
   ~~~
   {:.prettyprint}



2. Create an instance of the IntegerTextBox control.
   
   ~~~ cs
   
	   // Create IntegerTextBox control.
	   private Syncfusion.Windows.Forms.Tools.IntegerTextBox integerTextBox1;
	   this.integerTextBox1=new Syncfusion.Windows.Forms.Tools.IntegerTextBox();
   
   ~~~
   {:.prettyprint}
   
   ~~~vbnet
	   ' Create IntegerTextBox control.
	   Private integerTextBox1 As Syncfusion.Windows.Forms.Tools.IntegerTextBox
	   Me.integerTextBox1 = New Syncfusion.Windows.Forms.Tools.IntegerTextBox()
	   ~~~
   {:.prettyprint}



3. Specify its value and size.
   
   ~~~ cs
	   this.integerTextBox1.IntegerValue = ((long)(7));
	   this.integerTextBox1.Size = new System.Drawing.Size(144, 20);
   ~~~
   {:.prettyprint}
   
   
   ~~~vbnet
	   Me.integerTextBox1.IntegerValue = (CLng(7))
	   Me.integerTextBox1.Size = New System.Drawing.Size(144, 20)
   ~~~
   {:.prettyprint}



4. Add the IntegerTextBox control to the form.
   
   ~~~ cs
		this.Controls.Add(this.integerTextBox1);
   ~~~
   {:.prettyprint}
   
   ~~~vbnet
   
		Me.Controls.Add(Me.integerTextBox1)
   ~~~
   {:.prettyprint}



![](Overview_images/Overview_img441.png) 
