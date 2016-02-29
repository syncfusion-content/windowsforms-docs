---
layout: post
title: Creating MaskedEditBox | Windows Forms | Syncfusion
description: Creating MaskedEditBox
platform: windowsforms
control: MaskedEditBox
documentation: ug
---
# Creating MaskedEditBox

## Through Designer

The MaskedEditBox control provides full support for the Windows Forms designer. You can use the MaskedEditBox through the 
designer by following the below given steps.

1. Drag and drop the MaskedEditBox control onto your form from the controls toolbox.

   ![](MaskedEditBox-images/MarkedEditBox-img2.png)



2. Set the MaskedEditBox.Mask property for the control. This property controls the behavior of the control at run time. If no 
   mask is specified, the control will behave the same as a standard Windows Forms TextBox control.

   ![](MaskedEditBox-images/MarkedEditBox-img3.png)


Examples of some common masks are,



<table>
<tr>
<th>
Mask</th><th>
Usage</th></tr>
<tr>
<td>
###-##-####</td><td>
US Social security number mask (the # symbol allows numeric entry only in that position and the - symbol is literal); Example 222-22-2222.</td></tr>
<tr>
<td>
(###) ### ####</td><td>
US Telephone number mask; Example (919) 481 1974.</td></tr>
<tr>
<td>
##/##/####</td><td>
Short date mask; Example 04/14/2005.</td></tr>
<tr>
<td>
##:##</td><td>
Short time mask; Example 12:24.</td></tr>
<tr>
<td>
>?<????????????</td><td>
First name or last name; The first letter is uppercase and the other letters are all lowercase; Example: Syncfusion.</td></tr>
</table>


## Through Code

The MaskedEditBox control can be used programmatically through code as detailed below.

1. Include the required namespace.

   ~~~ cs 

		using Syncfusion.Windows.Forms.Tools;

   ~~~ 
   {:.prettyprint}



   ~~~  vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint}

2. Create an instance of the MaskedEditBox control.

   ~~~ cs

		private Syncfusion.Windows.Forms.Tools.MaskedEditBox maskedEditBox1;

		this.maskedEditBox1=new MaskedEditBox();

   ~~~
   {:.prettyprint}



   ~~~ vbnet

		Private maskedEditBox1 As Syncfusion.Windows.Forms.Tools.MaskedEditBox

		Me.maskedEditBox1 = New MaskedEditBox()

   ~~~
   {:.prettyprint}
   
3. Set MaskedEditBox.Mask property.

   ~~~ cs

		// The mask string.

		this.maskedEditBox1.Mask = ">?<????????????";

		this.maskedEditBox1.Location = new System.Drawing.Point(70, 29);

   ~~~
   {:.prettyprint}



   ~~~ vbnet

		' The mask string.

		Me.maskedEditBox1.Mask = ">?<????????????"

		Me.maskedEditBox1.Location = New System.Drawing.Point(70, 29);

   ~~~
   {:.prettyprint}

4. Add the MaskedEditBox control to the form.

   ~~~ cs

		this.Controls.Add(this.maskedEditBox1);

   ~~~
   {:.prettyprint}



   ~~~ vbnet

			Me.Controls.Add(Me.maskedEditBox1)

   ~~~
   {:.prettyprint}


![](MaskedEditBox-images/MarkedEditBox-img4.png)

