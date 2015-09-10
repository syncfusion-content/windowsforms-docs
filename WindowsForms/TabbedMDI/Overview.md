---
layout: post
title: Overview | WindowsForms | Syncfusion
description: overview
platform: WindowsForms
control: TabbedMDIPackage 
documentation: ug
---

# Overview

The TabbedMDI package provides a new TabbedMDI layout mode (as an alternative to the default Cascade and Tiled modes), popularized by Visual Studio .NET. This framework was built with great consideration for ease of use, to avoid having to modify an existing MDI application in any way to enable the TabbedMDI mode. With a single method call, you can switch between TabbedMDI and RegularMDI layout modes. 

![](Overview_images/Overview_img1.jpeg)



TabbedMDI framework will retain the MDI scheme in Tabbed mode. The Child forms will still be MDIChildren of the Parent (they will not be moved into a TabControl; this results in loss of MDI functionality like Merged Menus, switching using CTRL+TAB, etc.), thereby enhancing your application without interfering with the general MDI scheme. 

The TabbedMDI framework provides users the exact functionality and look and feel of Visual Studio .NET Tabbed Child windows.

The TabbedMDI framework contains the TabbedMDIManager control with features to create rich user applications.

### Features

* Styles - TabbedMDI supports wide range of Tab Styles and Window Styles. Windows in the TabbedMDI framework can be arranged in four different styles such as horizontal, vertical, cascade and inside the client area of the parent form. It also provides advanced features to set the styles for the DropDown Menus and Context Menus. 
* Tab Alignment - Aligns the Tabs to the Top, Left, Right or Bottom using the Alignment property. To access this property, the TabControlAdded event is used.
* Tab Groups - [Tab Groups](/windowsforms/tabbedmdi/tab-groups) are resizable exactly as in the Visual Studio .NET IDE. The number and layout of the Tab Groups can be restricted and controlled. 
* MDI List - The list of MDIChild Forms in the application can be retrieved by using a single property. Also the Menu Item or ToolStrip Menu Item to which the list should be added can be specified.



* Button Settings - Options to add [DropDown](/windowsforms/tabbedmdi/button-settings#dropdown-button) and [Close buttons](/windowsforms/tabbedmdi/button-settings#close-button) are available. Close buttons can be displayed individually for each tab. The color of the close button can be set according to the needs of the user. It also provides options to close tabs on clicking the middle button of the mouse.
* Appearance Settings - User Controls, Images and Icons can be added to the Tabs. Options are provided to customize the tab's text and image and control the tab's image size. Themed tabs can be displayed using the ThemesEnabled property.
* Context Menu - [Context Menu](/windowsforms/tabbedmdi/interactive-features#context-menu) Items of the Tabs can be customized. Customized Bar Items can be added to the default context menu by accessing the ParentBarItem instance through the contextMenuItem.Items.Add(baritem) property.
* Automatic State Persistence - TabbedMDI provides full state persistence support. The TabbedMDIManager automatically persists Tab Groups and Tab Group Sizes for use across application invocations.
* Serialization Support - Provides [serialization support](/windowsforms/tabbedmdi/serialization-support) to save and load the Tab States.
* Tooltip Support - Tooltips can be enabled for individual Tabs.


{% seealso %}

[Creating TabbedMDIManager](/windowsforms/tabbedmdi/overview#creating-tabbedmdimanager)

{% endseealso %}




## Getting Started

## Creating TabbedMDIManager

This tutorial will show you how the TabbedMDIManager is created through designer and code which are discussed in the below topics.

### Through Designer

To create a TabbedMDIManager through designer,

1. Drag-and-drop a TabbedMDIManager Control from the ToolBox onto the Form1.
2. As soon as the control is dropped, the Form1's IsMDIContainer property will be set to True and it changes to an MDIContainer. Also, the AttachedTo property of the TabbedMDIManager will be set to Form1. Add a new Form (Form2) to your application. 
3. In the Form1_Load event, include the code snippet given below. This calls Form2 that is created and displays it in Form1.

   ~~~ cs



		private void Form1_Load(object sender, System.EventArgs e)

		{

		Form2 frm = new Form2();

		frm.MdiParent=this;

		frm.Show();

		}
		
   ~~~
   {:.prettyprint }		

   ~~~ vbnet



		Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

		Dim frm As Form2 = New Form2

		frm.MdiParent = Me

		frm.Show()

   ~~~
   {:.prettyprint }

4. Run the application. You will see Form2 tabbed inside Form1.

   ![](Overview_images/Overview_img2.jpeg)



N> The DetachFromMdiContainer method is used to detach an MDIParent from the TabbedMDIManager.

### Through Code

This section will explain how to create a TabbedMDIManager programmatically. It explains how to hookup the TabbedMDIManager to the MDIParent Form. 

Here the main Form is assumed to be the MDIParent Form. Hence, any Form added to the main Form i.e. the MDIParent Form, will be treated as TabbedMDIChild Forms and will be displayed using the TabbedMDI look-and-feel, similar to Visual Studio .NET.

To create a TabbedMDIManager programmatically,

1. Create or open a Windows Forms project.
2. Add Syncfusion's Tools.Windows and Shared.Base assemblies to the application.
3. Add the Syncfusion.Windows.Forms.Tools namespace.

   ~~~ cs

		using Syncfusion.Windows.Forms.Tools;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Imports Syncfusion.Windows.Forms.Tools 

   ~~~
   {:.prettyprint }

4. Declare the TabbedMDIManager in Form1.

   ~~~ cs



		private TabbedMDIManager tb;

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private WithEvents tb As tabbedMDIManager

   ~~~
   {:.prettyprint }

5. Initialize the TabbedMDIManager.

   ~~~ cs



		public Form1()

		{

		InitializeComponent();

		this.tb = new TabbedMDIManager();

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Public Sub New()

		tb = New TabbedMDIManager()

		End Sub
   ~~~
   {:.prettyprint }



6. Attach it to Form1 (MDIContainer). Make sure that the Form1's IsMdiContainer property is set to True. Now the TabbedMDI mode will be turned ON and any new MDIChildren created will be grouped as Tabs. 
7. Switch to the design view. Add a new Form (Form2) to your application.
8. In the Form1_Load event, include the code snippet given below. This calls Form2 that is created and displays it in Form1. 

   ~~~ cs
		private void Form1_Load(object sender, System.EventArgs e)

		{

		this.IsMdiContainer=true;

		this.tb.AttachToMdiContainer(this);

		Form2 frm = new Form2();

		frm.MdiParent=this;

		frm.Show();

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet



		Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

		Me.IsMdiContainer=true

		Me.tb.AttachToMdiContainer(Me)

		Dim frm As Form2 = New Form2

		frm.MdiParent = Me

		frm.Show()

   ~~~
   {:.prettyprint }

9. Run the application. You will see Form2 tabbed inside Form1.

![](Overview_images/Overview_img4.jpeg)



