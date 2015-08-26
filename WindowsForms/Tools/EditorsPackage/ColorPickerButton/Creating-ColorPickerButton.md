---
layout: post
title: Creating ColorPickerButton
description: creating colorpickerbutton
platform: windowsforms
control: ColorPickerButton
documentation: ug
---
# Creating ColorPickerButton


ColorPickerButton is available to the designer by just dragging-and-dropping the ColorPickerButton from the toolbox onto the form. 

![](ColorPickerButton_images/Overview_img247.jpeg) 



It can be created programmatically as discussed below. 

1. Include the required namespace.





             using Syncfusion.Windows.Forms.Tools;







             Imports Syncfusion.Windows.Forms.Tools



2. Create an instance of the ColorPickerButton control class and add it to the form.





					private Syncfusion.Windows.Forms.ColorPickerButton colorPickerButton1;

					this.colorPickerButton2 = new Syncfusion.Windows.Forms.ColorPickerButton();

					this.colorPickerButton1.Text = "Select a Color";

					this.Controls.Add(this.colorPickerButton1);







					Private colorPickerButton1 As Syncfusion.Windows.Forms.ColorPickerButton

					Me.colorPickerButton2 = New Syncfusion.Windows.Forms.ColorPickerButton()

					Me.colorPickerButton1.Text = "Select a Color"

					Me.Controls.Add(Me.colorPickerButton1)



3. Clicking this button at runtime will display the ColorUIControl.

   ![](ColorPickerButton_images/Overview_img248.jpeg) 


   {:.prettyprint}
   
See Also

Appearance and Behavior Settings