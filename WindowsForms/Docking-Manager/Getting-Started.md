---
layout: post
title: Getting Started with Windows Forms Docking Manager | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Docking Manager control, its elements, and more.
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Getting Started with Windows Forms Docking Manager

This section explains how to design a `DockingManager` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

The following list of assemblies should be added as reference to use the docking manager in any application:

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#dockingmanager) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application. 

Find more details about how to install the nuget packages in Windows Forms application in the following link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/visual-studio-integration/nuget-packages)

**Creating simple application with docking manager**

You can create the Windows Forms application with docking manager control as follows:

1. [Creating the project](#creating-the-project)
2. [Adding control via Designer](#adding-control-via-designer)
3. [Adding control manually in code](#adding-control-manually-in-code)
4. [Add dock child window](#add-dock-child-window)
5. [Change Dock State of child](#change-dock-state-of-child)
6. [Change Dock Side](#change-dock-side)
7. [Make MDI child](#make-mdi-child)
8. [Serialize Dock windows](#serialize-dock-windows)

**Creating the project**

Create a new Windows Forms project in the Visual Studio to dock panels as like Visual Studio using the docking manager.

## Adding control via designer

To add the docking manager control to an application, drag it from the toolbox and drop in a designer view. The following required assembly references will be added automatically:

   * Syncfusion.Grid.Base.dll
   * Syncfusion.Grid.Windows.dll
   * Syncfusion.Shared.Base.dll
   * Syncfusion.Shared.Windows.dll
   * Syncfusion.Tools.Base.dll
   * Syncfusion.Tools.Windows.dll

   ![Drag and drop DockingManager from toolbox](GettingStarted_images/gettingstarted.png)

## Adding control manually in code

To add control manually in C#, follow the given steps:

1. Add the following required assembly references to the project:
   * Syncfusion.Grid.Base.dll
   * Syncfusion.Grid.Windows.dll
   * Syncfusion.Shared.Base.dll
   * Syncfusion.Shared.Windows.dll
   * Syncfusion.Tools.Base.dll
   * Syncfusion.Tools.Windows.dll

2. Create [DockingManager](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html) control instance and add it to the component list.

{% tabs %}

{% highlight C# %}

// Create the DockingManager instance and add it the component list. 

private Syncfusion.Windows.Forms.Tools.DockingManager dockingManager1; 

this.components = new System.ComponentModel.Container();

this.dockingManager1 = new Syncfusion.Windows.Forms.Tools.DockingManager(this.components); 

this.dockingManager1.HostControl = this;

{% endhighlight %}

{% highlight VB %}

'Create the DockingManager instance and add it the component list. 

Private dockingManager1 As Syncfusion.Windows.Forms.Tools.DockingManager

Me.components = New System.ComponentModel.Container()

Me.dockingManager1 = New Syncfusion.Windows.Forms.Tools.DockingManager(Me.components) 

Me.dockingManager1.HostControl = Me

{% endhighlight %}

{% endtabs %}

## Add dock child window

Docking can be enabled to any controls by invoking [SetEnableDocking](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_SetEnableDocking_System_Windows_Forms_Control_System_Boolean_) with the corresponding docking manager. Here, four panels are added to the form and transformed to a docking window.

{% tabs %}

{% highlight C# %}

private System.Windows.Forms.Panel panel1;
		
private System.Windows.Forms.Panel panel2;

private System.Windows.Forms.Panel panel3;
		
private System.Windows.Forms.Panel panel4;
		
this.panel1 = new System.Windows.Forms.Panel();
		
this.panel2 = new System.Windows.Forms.Panel();
		
this.panel3 = new System.Windows.Forms.Panel();
		
this.panel4 = new System.Windows.Forms.Panel();

//Enables the docking for the panels

this.dockingManager1.SetEnableDocking(panel1, true);

this.dockingManager1.SetEnableDocking(panel2, true);

this.dockingManager1.SetEnableDocking(panel3, true);

this.dockingManager1.SetEnableDocking(panel4, true);

{% endhighlight %}


{% highlight VB %}

Private panel1 As System.Windows.Forms.Panel

Private panel2 As System.Windows.Forms.Panel

Private panel3 As System.Windows.Forms.Panel

Private panel4 As System.Windows.Forms.Panel

Me.panel1 = New System.Windows.Forms.Panel()

Me.panel2 = New System.Windows.Forms.Panel()

Me.panel3 = New System.Windows.Forms.Panel()

Me.panel4 = New System.Windows.Forms.Panel()

'Enables the docking for the panels

Me.dockingManager1.SetEnableDocking(panel1, True)

Me.dockingManager1.SetEnableDocking(panel2, True)

Me.dockingManager1.SetEnableDocking(panel3, True)

Me.dockingManager1.SetEnableDocking(panel4, True)

{% endhighlight %}

{% endtabs %}

![Dock multiple windows in DockingManager without header](GettingStarted_images/GettingStarted_img1.jpeg)

### Identify whether the panel is docking or not

The [GetEnableDocking](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_GetEnableDocking_System_Windows_Forms_Control_) function of docking manager helps to determine whether the child window is docking or not.

{% tabs %}

{% highlight C# %}

Console.Write("DockWindow Header:" + this.dockingManager1.GetEnableDocking(panel1));

{% endhighlight %}

{% highlight VB %}

Console.Write("DockWindow Header:" + Me.dockingManager1.GetEnableDocking(panel1))

{% endhighlight %}

{% endtabs %}

### Change header of child window

The [SetDockLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_SetDockLabel_System_Windows_Forms_Control_System_String_) function helps to set the label for a child window.

{% tabs %}

{% highlight C# %}

// To set the label for the docked controls

this.dockingManager1.SetDockLabel(panel1, "Solution Explorer");

this.dockingManager1.SetDockLabel(panel2, "Toolbox");

this.dockingManager1.SetDockLabel(panel3, "Properties");

this.dockingManager1.SetDockLabel(panel4, "Output");

{% endhighlight %}


{% highlight VB %}

' To set the label for the docked controls

Me.dockingManager1.SetDockLabel(panel1, "Solution Explorer");

Me.dockingManager1.SetDockLabel(panel2, "Toolbox");

Me.dockingManager1.SetDockLabel(panel3, "Properties");

Me.dockingManager1.SetDockLabel(panel4, "Output");

{% endhighlight %}

{% endtabs %}

![Dock multiple windows in DockingManager with caption](GettingStarted_images/DockLabel.png)

#### Get label of the dock panel

The [GetDockLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_GetDockLabel_System_Windows_Forms_Control_) function helps to get the label of the child window.

{% tabs %}

{% highlight C# %}

// Get the label for the docked control

Console.Write("DockWindow Header:" + this.dockingManager1.GetDockLabel(panel1));

{% endhighlight %}

{% highlight VB %}

'Get the label for the docked control

Console.Write("DockWindow Header:" + Me.dockingManager1.GetDockLabel(panel1))

{% endhighlight %}

{% endtabs %}

## Change dock state of child

The docking manager provides an option to dock, float, and auto hide the controls.

To dock the child window, use the following code snippet.

{% tabs %}

{% highlight C# %}

//To dock the panel1 on top side of the form.

this.dockingManager1.DockControl(this.panel1, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Top, 100);

{% endhighlight %}


{% highlight VB %}

'To dock the panel1 on top side of the form.

Me.dockingManager1.DockControl(Me.panel1, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Top, 100)

{% endhighlight %}

{% endtabs %}

![Dock window at top side of DockingManager container](GettingStarted_images/GettingStarted_img5.jpg)

To float the control, use the following code snippet.

{% tabs %}

{% highlight C# %}

//To set properties window state as floating at the desired location.

Rectangle rectangle = this.Bounds;

this.dockingManager1.FloatControl(this.panel3, new Rectangle(rectangle.Right - 300, rectangle.Bottom - 300, 200, 200));

{% endhighlight %}


{% highlight VB %}

'To set properties window state as floating at the desired location.

Dim rectangle As Rectangle = Me.Bounds 

Me.dockingManager1.FloatControl(Me.panel3, New Rectangle(rectangle.Right - 300, rectangle.Bottom - 300, 200, 200))

{% endhighlight %}

{% endtabs %}

![Window floating around the form in DockingManager](GettingStarted_images/GettingStarted_img3.jpeg)

To auto hide the control, use the following code snippet.

{% tabs %}

{% highlight C# %}

// Sets panel1 as AutoHidden window

this.dockingManager1.SetAutoHideMode(panel1, true); //false to remove auto hide state.

{% endhighlight %}

{% highlight VB %}

'Sets panel1 as AutoHidden window

Me.dockingManager1.SetAutoHideMode(panel1, True) 'false to remove auto hide state.

{% endhighlight %}

{% endtabs %}

![Autohide dock windows to sides relative to container](AutoHidden-Window_images/AutoHidden-Window_img3.png)

## Change dock side

The [DockControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_DockControl_System_Windows_Forms_Control_System_Windows_Forms_Control_Syncfusion_Windows_Forms_Tools_DockingStyle_System_Int32_) function helps to dock a panel at the required side using the [DockingStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingStyle.html) argument.

Set the `DockingStyle` value to right for docking the “Solution Explorer” panel on the right.

The DockingStyle tabbed option is used to tab a panel with another panel. The tabbing windows need to be aware of the parent control name. Set the “Output” window’s parent as “SolutionExplorer” to tab it on the “SolutionExplorer” window.


{% tabs %}

{% highlight C# %}

// To set the DockingStyle for the docked controls

this.dockingManager1.DockControl(this.panel3, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Bottom, 100);

this.dockingManager1.DockControl(this.panel2, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Left, 200);

this.dockingManager1.DockControl(this.panel1, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 200);
            
this.dockingManager1.DockControl(this.panel4, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200);


{% endhighlight %}


{% highlight VB %}

'To set the DockingStyle for the docked controls

Me.dockingManager1.DockControl(Me.panel3, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Bottom, 100)

Me.dockingManager1.DockControl(Me.panel2, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Left, 200)

Me.dockingManager1.DockControl(Me.panel1, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 200)

Me.dockingManager1.DockControl(Me.panel4, panel1, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200)

{% endhighlight %}

{% endtabs %}

![Dock window over another window in DockingManager](GettingStarted_images/GettingStarted_img4.jpeg)

## Make MDI child

The [SetAsMDIChild](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_SetAsMDIChild_System_Windows_Forms_Control_System_Boolean_) function helps to set the docking window to the MDIChild window in the docking manager. Also, you can set the docked control as an MDI child in an easy method by using the `MDI Child` option in the context menu.

N> To enable MDI functionalities in the docking manager, the `IsMdIContainer` property of its parent form should be `true`.

![Option to make MDI forms in DockingManager](GettingStarted_images/GettingStarted_img6.png)

{% tabs %}

{% highlight C# %}

//To set as MDI Child window

this.dockingManager1.SetAsMDIChild(panel1, true);

this.dockingManager1.SetAsMDIChild(panel2, true);

{% endhighlight %}


{% highlight VB %}

'To set as MDI Child window

Me.dockingManager1.SetAsMDIChild(panel1, True)

Me.dockingManager1.SetAsMDIChild(panel2, True)

{% endhighlight %}

{% endtabs %}

![Multiple document interface in DockingManager](GettingStarted_images/GettingStarted_img7.png) 

## Serialize dock windows

The PersistState feature helps to save the current layout of the docking manager automatically to isolated storage while closing the form. The dock state can also be saved by calling the [SaveDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_SaveDockState) function.

{% tabs %}

{% highlight C# %}

//Saves the current dock state to Isolated Storage.

this.dockingManager.SaveDockState();

//Saves the current dock state information to the specified AppStateSerializer.

this.dockingManager.SaveDockState(serializer);

//Saves the dock state information for the specified dockable control.

this.dockingManager.SaveDockState(serializer, this.listBox1);

{% endhighlight %}


{% highlight VB %}

'Saves the current dock state to Isolated Storage.

Me.dockingManager.SaveDockState()

'Saves the current dock state information to the specified AppStateSerializer.

Me.dockingManager.SaveDockState(serializer)

'Saves the dock state information for the specified dockable control.

Me.dockingManager.SaveDockState(serializer, this.listBox1)

{% endhighlight %}

{% endtabs %}


The saved state can be reloaded by calling the [LoadDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_LoadDockState) function, whenever it is required to load the states.

{% tabs %}

{% highlight C# %}

//Reads the persisted dock state from the Isolated Storage.

this.dockingManager.LoadDockState();

//Reads a previously serialized dock state using the AppStateSerializer object. 

this.dockingManager.LoadDockState(serializer);

//Reads a previously serialized dock state for the specified dockable control and applies the new state.

this.dockingManager.LoadDockState(serializer, this.listBox1);

{% endhighlight %}


{% highlight VB %}

'Reads the persisted dock state from the Isolated Storage.

Me.dockingManager.LoadDockState(serializer)

'Reads a previously serialized dock state using the AppStateSerializer object. 

Me.dockingManager.LoadDockState();

'Reads a previously serialized dock state for the specified dockable control and applies the new state.

Me.dockingManager.LoadDockState(serializer, this.listBox1)

{% endhighlight %}

{% endtabs %}
