---
layout: post
title: Overview | WindowsForms | Syncfusion
description: overview
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Creating FontComboBox

To use a FontComboBox control in your application, all you need to do is drag and drop the FontComboBox control from the controls toolbox onto your form. 

![](Overview_images/Overview_img583.jpeg)


It can be created programmatically as follows.

1. Include the required namespace. 
   
   ~~~ cs
   
		using Syncfusion.Windows.Forms.Tools;
   
   ~~~
   {:.prettyprint}
   
   ~~~vbnet
   
		Imports Syncfusion.Windows.Forms.Tools
   
   ~~~
   {:.prettyprint}



2. Create an instance of FontComboBox control. Specify its size and finally add that instance to that Form.
   
   ~~~ cs
   
		   private Syncfusion.Windows.Forms.Tools.FontComboBox fontComboBox1;
		   
		   this.fontComboBox1=new Syncfusion.Windows.Forms.Tools.FontComboBox();
		   
		   this.fontComboBox1.Size = new System.Drawing.Size(152, 21);
		   
		   this.Controls.Add(this.fontComboBox1);
		   
   ~~~
   {:.prettyprint}
   
   
   ~~~vbnet
   
	   Private fontComboBox1 As Syncfusion.Windows.Forms.Tools.FontComboBox
	   
	   Me.fontComboBox1 = New Syncfusion.Windows.Forms.Tools.FontComboBox()
	   
	   Me.fontComboBox1.Size = New System.Drawing.Size(152, 21)
	   
	   Me.Controls.Add(Me.fontComboBox1)
   
   ~~~
   {:.prettyprint}



![](Overview_images/Overview_img584.jpeg) 