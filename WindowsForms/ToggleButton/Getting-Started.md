---
layout: post
title: Getting-Started
description: getting started 
platform: WindowsForms
control: ToggleButton 
documentation: ug
---

# Getting Started 

This section briefly describes how to design a Toggle Button in a .NET application.

* Adding a Toggle Button control.
* Configuring the Toggle Button control.
## Add a ToggleButton Control

1. Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
2. Drag & Drop a Toggle Button Control in the Form from Toolbox.

![](Getting-Started_images/Getting-Started_img1.png)



## Configuring the ToggleButton

The most commonly used settings of the Toggle Button Control is configured either through Designer using the Smart tag or through the Properties window or through code behind.

The following screenshot illustrates the Toggle Button Control customization through smart tag.

![](Getting-Started_images/Getting-Started_img2.png)



To add Toggle Button control to a Windows Forms Application through code behind,

1. Include Syncfusion.Windows.Forms.Tools namespace.

   ~~~ cs

		using Syncfusion.Windows.Forms;


   ~~~
   {:.prettyprint }
   
   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint }

2. Create an instance of the Toggle Button control and add it to the Form.

   ~~~ cs

		ToggleButton togglebutton1;

		this.togglebutton1 = new Syncfusion.Windows.Forms.Tools.ToggleButton();

		this.Controls.Add(togglebutton1);

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Dim togglebutton1 As Syncfusion.Windows.Forms.Tools.ToggleButton

		Me.ToggleButton1 = New Syncfusion.Windows.Forms.Tools.ToggleButton()

		Me.Controls.Add(togglebutton1)


   ~~~
   {:.prettyprint }
