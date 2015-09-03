---
layout: post
title: Creating FontListBox
description: Creating FontListBox
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Creating FontListBox

To use a FontListBox control in your application, all you need to do is drag and drop the FontListBox control from the toolbox onto your form.

 ![](Overview_images/Overview_img577.jpeg) 

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



2. Create an instances of FontListBox control. Specify its size and finally add that instance to that Form.
   
   ~~~ cs
	   private Syncfusion.Windows.Forms.Tools.FontListBox fontListBox1;
	   
	   this.fontListBox1=new Syncfusion.Windows.Forms.Tools.FontListBox();
	   
	   this.fontListBox1.Size = new System.Drawing.Size(152, 94);
	   
	   this.Controls.Add(this.fontListBox1);
	   
   ~~~
   {:.prettyprint}
   
   
   ~~~vbnet
   
		   Private fontListBox1 As Syncfusion.Windows.Forms.Tools.FontListBox
		   
		   Me.fontListBox1 = New Syncfusion.Windows.Forms.Tools.FontListBox()
		   
		   Me.fontListBox1.Size = New System.Drawing.Size(152, 21)
		   
		   Me.Controls.Add(Me.fontListBox1)
		   
   ~~~
   {:.prettyprint}



![](Overview_images/Overview_img578.jpeg) 