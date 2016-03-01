---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: DockingManager 
documentation: ug
---

# Getting Started

This section will provide step by step procedure to design a dockingwindow layout through designer and through programmatical approach in a .NET application. 

## Through Designer

The docking window's WYSIWYG designer makes the implementation of a docking windows layout a highly intuitive process. Complex layouts can be designed by dragging-and-dropping the docking manager, without having to write a single line of code.

The following steps outline the sequence of steps involved in setting up a simple docking windows (listbox for ex) layout using the designer.

1. Open the host form within the windows forms designer and add the controls that should be implemented as docking windows.
2. Drag a DockingManager control from the toolbox onto the form. The docking manager is implemented as an extender provider and will add the EnableDocking on dockingManager property to all the child controls that are dropped in the form as shown in the image below.

   ![](Getting-Started_images/Getting-Started_img1.jpeg) 



3. Turn on the EnableDocking on dockingManager property for those controls that should be hosted as docking windows. Setting this property will immediately transform the control into a docking window by creating a dockable container and adding the control to it. The control is now a full-featured docking window that is docked to the form's left border, by default as in the image displayed below.

   ![](Getting-Started_images/Getting-Started_img2.jpeg) 



4. DockingManager provides docking specific properties to the docked controls, which will be listed under the Syncfusion Docking category of those controls. These properties lets you specify icons for the caption, edit the caption labels, auto hide the controls and so on.



   ![](Getting-Started_images/Getting-Started_img3.jpeg) 



5. DockingManager comes with enormous appearance properties, whose settings will be applied to all the docked controls.

    ![](Getting-Started_images/Getting-Started_img4.jpeg) 



6. The form's docking layout can be set up by dragging the dock-enabled controls and redocking or floating them at the desired locations by using DragProviderStyle property.

   ![](Getting-Started_images/Getting-Started_img5.jpeg) 



7. Use the AutoHideOnLoad and HiddenOnLoad extended properties for setting the autohidden and hidden dock states for the controls.

    ![](Getting-Started_images/Getting-Started_img6.jpeg) 



{% seealso %}

[Through Code](#through-code)

{% endseealso %}

## Through Code

The Docking Manager's API makes it an easy task to programmatically create, initialize and set up a docking window's layout in an application. The following section guides you through the steps involved in setting up a simple docking windows layout with two Listbox controls.

1. Add the below namespace. 

   ~~~ cs



		//namespaces

		using Syncfusion.Windows.Forms.Tools;

		using Syncfusion.Windows.Forms;
		
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		'namespaces

		Imports Syncfusion.Windows.Forms

		Imports Syncfusion.Windows.Forms.Tools
		
   ~~~
   {:.prettyprint}


2. Create and initialize the Docking Manager and two listbox controls.

   ~~~ cs



		// Create the DockingManager instance and add it the component list.

		private Syncfusion.Windows.Forms.Tools.DockingManager dockingManager;

		private System.Windows.Forms.ListBox listBox1;

		private System.Windows.Forms.ListBox listBox2;



		this.dockingManager = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components);

		this.listBox1 = new System.Windows.Forms.ListBox();

		this.listBox2 = new System.Windows.Forms.CheckedListBox();
		
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		' Create the DockingManager instance and add it the component list.

		Private Syncfusion.Windows.Forms.Tools.DockingManager dockingManager;

		Private System.Windows.Forms.ListBox listBox1;

		Private System.Windows.Forms.ListBox listBox2;



		Me.dockingManager = New Syncfusion.Windows.Forms.Tools.DockingManager(Me.components)

		Me.dockingManager.BeginInit()

		Me.listBox1 = New System.Windows.Forms.ListBox()

		Me.listBox2 = New System.Windows.Forms.ListBox()
		
   ~~~
   {:.prettyprint}


3. Set some properties of the DockingManager. Ex VisualStyle to "Office2003".

   ~~~ cs



		//Set the visual Style of the docked controls

		this.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003;
		
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		'Set the visual Style of the docked controls

		Me.dockingManager.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003

   ~~~
   {:.prettyprint}

4. Enable the controls to be docked by calling SetEnableDocking method.

   ~~~ cs



		this.dockingManager.SetEnableDocking(this.listBox1,true);

		this.dockingManager.SetEnableDocking(this.listBox2,true);
		
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		Me.dockingManager.SetEnableDocking(Me.listBox1,True)

		Me.dockingManager.SetEnableDocking(Me.listBox2,True)
		
   ~~~
   {:.prettyprint}


5. Docking styles for the controls can be specified in DockControl method. Here the docking style is set to tabbed.

   ~~~ cs



		// Tab the docked controls

		this.dockingManager.DockControl(this.listBox1, this.listBox2,Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed,200,true);
		
   ~~~
   {:.prettyprint}


   ~~~ vbnet



		' Tab the docked controls

		Me.dockingManager.DockControl(Me.listBox1, Me.listBox2,Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed,200,True)
		
   ~~~
   {:.prettyprint}


The resulting form will look like the below image.

![](Getting-Started_images/Getting-Started_img7.jpeg) 


