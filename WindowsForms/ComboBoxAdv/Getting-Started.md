---
layout: post
title: Getting-Started | WindowsForms | Syncfusion
description: getting started
platform: WindowsForms
control: ComboBoxAdv
documentation: ug
---

# Getting Started


This section briefly describes how to design a ComboBoxAdv Control in a Windows Forms Application.

* Adding a ComboBoxAdv Control 
* Configuring the ComboBoxAdv Control


## Adding a ComboBoxAdv control

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drag and drop the ComboBoxAdv control in the Form from Toolbox.



![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxAdv in toolbox.png](Overview_images/Overview_img296.png) 



## Configuring the ComboBoxAdv control

The most commonly used settings of the TreeNavigator control can be configured either through Designer using the Smart tag or through the Properties window or through code.



![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxAdv smart tag.png](Overview_images/Overview_img297.png) 



To add ComboBoxAdv Control to a Windows Forms Application through code behind, follow the given steps.

1. Include the namespaces “Syncfusion.Windows.Forms” and “Syncfusion.Windows.Forms.Tools”.

   ~~~ cs

        //Namespaces.

		using Syncfusion.Windows.Forms.Tools;

		using Syncfusion.Windows.Forms;


   ~~~
   {:.prettyprint }


   ~~~ vbnet

        ‘Namespaces.

		Imports Syncfusion.Windows.Forms

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }

2. Create an instance of the TreeNavigator control and add it to the Form.


   ~~~ cs

        //Creates ComboBoxAdv instance.

		private Syncfusion.Windows.Forms.Tools.ComboBoxAdv comboBoxAdv1;

		this.comboBoxAdv1 = new ComboBoxAdv();
   ~~~
   {:.prettyprint }

   ~~~ vbnet

        'Creates ComboBoxAdv instance.

		Private comboBoxAdv1 As Syncfusion.Windows.Forms.Tools.ComboBoxAdv

		Me.comboBoxAdv1 = New ComboBoxAdv()

   ~~~
   {:.prettyprint }


3. Items can be added to ComboBoxAdv through String Collection Editor as it was done in Windows ComboBox control.


   ~~~ cs

        //Adding items to ComboBoxAdv

		this.comboBoxAdv1.Items.Add(100);

		this.comboBoxAdv1.Items.Add(200);

		this.comboBoxAdv1.Items.Add(300);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        'Adding items to ComboBoxAdv

		Me.comboBoxAdv1.Items.Add(100)

		Me.comboBoxAdv1.Items.Add(200)

		Me.comboBoxAdv1.Items.Add(300)

   ~~~
   {:.prettyprint }

4. Finally add ComboBoxAdv to the form.


   ~~~ cs

        //Adding ComboBoxAdv to form

		this.Controls.Add(this.comboBoxAdv1);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

        'Adding ComboBoxAdv to form

		Me.Controls.Add(Me.comboBoxAdv1)


   ~~~
   {:.prettyprint }


![C:/Users/ashwini/Desktop/ComboBoxAdv image/ComboBoxAdv items.png](Overview_images/Overview_img298.png)

