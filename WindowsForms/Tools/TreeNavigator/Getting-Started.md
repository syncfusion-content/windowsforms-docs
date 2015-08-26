---
layout: post
title: Getting-Started
description: getting started
platform: windowsforms
control: TreeNavigator 
documentation: ug
---

# Getting Started

This section briefly describes how to design a TreeNavigator Control in a WindowsForms Application.

* Adding a TreeNavigator Control 
* Configuring the TreeNavigator Control

## Add a TreeNavigator Control

* Create a new Windows Forms Application Project in VS IDE through New Project Wizard.
* Drag and Drop TreeNavigator control in the Form from Toolbox.



![](Getting-Started_images/Getting-Started_img1.png) 



## Configure the TreeNavigator Control

The most commonly used settings of the TreeNavigator control are configured either through Designer using the Smart tag or through the Properties window or through code.

![](Getting-Started_images/Getting-Started_img2.png)



To add TreeNavigator Control to a Windows Forms Application through code behind.

1. Include the namespaces Syncfusion.Windows.Forms and Syncfusion.Windows.Forms.Tools.



   ~~~ cs



		//Namespaces.

		using Syncfusion.Windows.Forms.Tools;

		using Syncfusion.Windows.Forms;

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		‘Namespaces.

		Imports Syncfusion.Windows.Forms

		Imports Syncfusion.Windows.Forms.Tools

   ~~~
   {:.prettyprint}

2. Create an instance of the TreeNavigator control and add it to the Form.

   ~~~ cs


		//Creates the Treenavigator instance.

		TreeNavigator treeNavigator = new TreeNavigator();


		this.Controls.Add(treeNavigator);

   ~~~
   {:.prettyprint}

   ~~~ vbnet



		‘Creates the TreeNavigator instance.

		Dim treeNavigator As New TreeNavigator()



		Me.Controls.Add(treeNavigator)

   ~~~
   {:.prettyprint}

