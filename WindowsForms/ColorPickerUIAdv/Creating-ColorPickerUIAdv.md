---
layout: post
title: Creating ColorPickerUI Adv
description: creating colorpickerui adv
platform: windowsforms
control: ColorPickerUIAdv
documentation: ug
---
# Creating ColorPickerUI Adv

This section will help you to get started with using the ColorPickerUIAdv control.

The ColorPickerUIAdv can be easily created in the designer, by dragging-and-dropping from the toolbox on to the windows application form.

![](ColorPickerUIAdv_Images/Overview_img252.jpeg) 



It can be added programmatically by performing the following steps.

1. Include the namespace for the Tools Package.


   ~~~ cs


				using Syncfusion.Windows.Forms.Tools;
   ~~~ 
   {:.prettyprint}




   ~~~ vbnet

				Imports Syncfusion.Windows.Forms.Tools
   ~~~
   {:.prettyprint}


2. Create an instance of ColorPickerUIAdv and add it to the Windows Form.



   ~~~ cs

					private Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv colorPickerUIAdv1;

					ColorPickerUIAdv cpa = new ColorPickerUIAdv();

					cpa.Size = new Size(200, 180);

					this.Controls.Add(cpa);
   ~~~
   {:.prettyprint}



   ~~~ vbnet


					Private colorPickerUIAdv1 As Syncfusion.Windows.Forms.Tools.ColorPickerUIAdv 

					Private cpa As ColorPickerUIadv = New ColorPickerUIadv()

					Private cpa.Size = New Size(200, 180)

					Me.Controls.Add(cpa)
   ~~~
   {:.prettyprint}
   

   ![](ColorPickerUIAdv_Images/Overview_img253.jpeg) 

   {:.prettyprint}

