---
layout: post
title: Creating  ButtonAdv
description: Creating  ButtonAdv
platform: WindowsForms
control: Editors Package
documentation: ug
---


# Creating  ButtonAdv


The ButtonAdv control can be made available through designer by just dragging and dropping the control from the toolbox onto the form. 

![](Overview_images/Overview_img111.jpeg)



It can be created programmatically by following the below steps.

1. Include the Tools Windows namespace to cs / vb file.
   
   ~~~ cs
   
   using Syncfusion.Windows.Forms.Tools;
   
   ~~~
   {:.prettyprint }
   
   ~~~ vbnet
   
   Imports Syncfusion.Windows.Forms.Tools
   
   ~~~
   {:.prettyprint }


2. Create an instance of ButtonAdv control and add it to the form.
   
   ~~~ cs
   private Syncfusion.Windows.Forms.ButtonAdv buttonAdv1;
   this.buttonAdv1 = new Syncfusion.Windows.Forms.ButtonAdv();
   this.Controls.Add(this.buttonAdv1);
   ~~~
   {:.prettyprint }

   ~~~ vbnet
   
   Private buttonAdv1 As Syncfusion.Windows.Forms.ButtonAdv
   Me.buttonAdv1 = New Syncfusion.Windows.Forms.ButtonAdv 
   Me.Controls.Add(Me.buttonAdv1)
   
   ~~~
   {:.prettyprint }


