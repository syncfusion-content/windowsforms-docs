---
layout: post
title: Docking-Events | WindowsForms | Syncfusion
description: docking events
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Docking events

The Essential Tools DockingManager provides the functionality for creating and working with enhanced docking windows that support attaching to a host form's border, dragging around and docking to different edges within the form and also be dragged off the host form and floated as an individual top-level window.

The Essential Tools docking Framework allows just about any child control on a form to be made into a fully qualified docking window. The DockingManager provides programmatic access to the interaction between these dockable windows and other complex features like multiple docking levels, nested docking, tabbed docking, tear-off tabs, auto hide mode, state persistence etc., by raising several events.

The list of events and a detailed explanation about each of them is given in the following sections.


<table>
<tr>
<th>
Docking events</th><th>
Description</th></tr>
<tr>
<td>
AutoHideAnimationStart</td><td>
The AutoHideAnimationStart event occurs just before the start of an auto hide animation.</td></tr>
<tr>
<td>
AutoHideAnimationStop</td><td>
The AutoHideAnimationStop event occurs immediately after the end of an auto hide animation.</td></tr>
<tr>
<td>
AutoHideTabContextMenu</td><td>
This event occurs when the right mouse button is clicked over a AutoHideTabControl. </td></tr>
<tr>
<td>
DockMenuClick</td><td>
This event occurs when the redone context menu item has been clicked.</td></tr>
<tr>
<td>
ControlMaximized</td><td>
This event occurs after the control is maximized.</td></tr>
<tr>
<td>
ControlMaximizing</td><td>
This event occurs before the control is going to maximize.</td></tr>
<tr>
<td>
ControlMinimized</td><td>
This event occurs after the control is minimized.</td></tr>
<tr>
<td>
ControlRestored</td><td>
This event occurs after the control is restored.</td></tr>
<tr>
<td>
DockAllow</td><td>
The DockAllow event occurs when a docking window is dragged over a potential dock target.</td></tr>
<tr>
<td>
DockContextMenu</td><td>
The DockContextMenu event occurs when the right mouse button is clicked over a docking window's caption.</td></tr>
<tr>
<td>
DockControlActivated</td><td>
The DockControlActivated event occurs when a dockable control gets activated.</td></tr>
<tr>
<td>
DockControlDeactivated</td><td>
The DockControlDeactivated event occurs when a dockable control gets deactivated.</td></tr>
<tr>
<td>
DockStateChanged</td><td>
The DockStateChanged event occurs immediately after a dock operation.</td></tr>
<tr>
<td>
DockStateChanging</td><td>
The DockStateChanging event occurs just before a dock operation takes place.</td></tr>
<tr>
<td>
DockStateUnavailable</td><td>
The DockStateUnavailable event occurs if serialized information is not available for a dockable control when loading a persisted dock state.</td></tr>
<tr>
<td>
DockVisibilityChanged</td><td>
The DockVisibilityChanged event occurs after a control's DockVisibility state has changed.</td></tr>
<tr>
<td>
DockVisibilityChanging</td><td>
The DockVisibilityChanging event occurs during a control's DockVisibility state is changing.</td></tr>
<tr>
<td>
DragAllow</td><td>
The DragAllow event occurs when a docking window is about to be dragged.</td></tr>
<tr>
<td>
DragFeedbackStart</td><td>
The DragFeedbackStart event occurs just before the start of feedback of a drag operation.</td></tr>
<tr>
<td>
DragFeedbackStop</td><td>
The DragFeedbackStop event occurs immediately after the end of feedback of a drag operation.</td></tr>
<tr>
<td>
ImageListChanged</td><td>
Occurs when the ImageList property changes.</td></tr>
<tr>
<td>
InitializeControlOnLoad</td><td>
The InitializeControlOnLoad event occurs when the DockingManager is not able to locate a control during a LoadDockState call.</td></tr>
<tr>
<td>
NewDockStateBeginLoad</td><td>
The NewDockStateBeginLoad event occurs just before a new dock state is loaded.</td></tr>
<tr>
<td>
NewDockStateEndLoad</td><td>
The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.</td></tr>
<tr>
<td>
ProvideGraphicsItems</td><td>
The ProvideGraphicsItems event occurs whenever a dockable control's caption needs to be painted.</td></tr>
<tr>
<td>
ProvidePersistenceID</td><td>
Lets you specify a unique ID used to distinguish the persistence information of different instances of the Form type.</td></tr>
<tr>
<td>
TransferredToManager</td><td>
The TransferredToManager event occurs after a dockable control that previously belonged to some other DockingManager has been transferred to the docking layout hosted by this DockingManager.</td></tr>
<tr>
<td>
TransferringFromManager</td><td>
The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.</td></tr>
</table>

## Docking

This section covers the following events:

### DockAllow event

This event is illustrated in How to Prevent tabbed docking.

### DockControlActivated event

The DockControlActivated event occurs when a dockable control gets activated. When the user clicks on the dockable control or the docked control, this event will be triggered. It can display the control name which has been activated currently.

#### Event data

The event handler receives an argument of type DockActivationChangedEventArgs containing data related to this event. The following DockActivationChangedEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
The control which has been activated now.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The DockControlActivated event occurs when a dockable control gets activated.

private void dockingManager1_DockControlActivated(object sender, Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs arg)

{

//If we click on the Docked control or click on the Docked control title bar,

// DockControlActivated event will be triggered

//DockActivationChangedEventArgs has the property called Control which has the details of the

// Activated control.

Console.WriteLine("Dock Control Activated Event is Fired");

//Here Display the name of the control that is being active currently.

Console.WriteLine("Activated Control Name : "+arg.Control.Name);

}
{% endhighlight %}



{% highlight VB %}


'The DockControlActivated event occurs when a dockable control gets activated.

Private Sub dockingManager1_DockControlActivated(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

'If we click on the Docked control or click on the Docked control title bar,

'DockControlActivated event will be triggered

'DockActivationChangedEventArgs has the property called Control which has the details of the

'Activated control

Console.WriteLine("Dock Control Activated Event is Fired")

'Here Display the name of the control that is being active currently.

Console.WriteLine("Activated Control Name : " + arg.Control.Name)

End Sub

{% endhighlight %}

{% endtabs %}

### DockControlDeactivated event

Whenever a dockable control or the docked control loses focus, DockControlDeactivated event will be raised. In other words, when a dockable control gets deactivated, this event will be fired. This event can display the control name that is deactivated.

#### Event data

The event handler receives an argument of type DockedActivationChangedEventArgs containing data related to this event. The following DockActivationChangedEventArgs property provide information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
The control which has been activated now.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The DockControlDeactivated event occurs when a dockable control gets deactivated.

private void dockingManager1_DockControlDeactivated(object sender, Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs arg)

{

//Deactivation Event will be triggered when the control has lost the focus.

Console.WriteLine("Dock Control Deactivated Event is Fired");

//Here Display the name of the control that is being active currently.

Console.WriteLine("Deactivated Control Name : "+arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

'The DockControlDeactivated event occurs when a dockable control gets deactivated.

Private Sub dockingManager1_DockControlDeactivated(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

'Deactivation Event will be triggered when the control has lost the focus.

Console.WriteLine("Dock Control Deactivated Event is Fired")

'Here Display the name of the control that is being active currently.

Console.WriteLine("Deactivated Control Name : " + arg.Control.Name)

End Sub

{% endhighlight %}

{% endtabs %}

## AutoHide animation

This section discusses the below events that are raised at the start and end of auto hide animation.

### AutoHideAnimationStart event

The AutoHideAnimationStart event occurs just before the start of an auto hide animation. When the user tries to click the auto hide button to hide the docked control, this event will be triggered.

#### Event data

The AutoHideAnimationEventHandler receives an argument of type AutoHideAnimationEventArgs containing data related to this event. The following AutoHideAnimationEventArgs properties provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Bounds</td><td>
The display bounds of the auto hidden control.</td></tr>
<tr>
<td>
DockBorder</td><td>
The HostForm border along which the AutoHide tab is aligned.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


private void dockingManager1_AutoHideAnimationStart(object sender, Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Auto Hide Animation starting now : "+ i++);

//AutoHideAnimationEvent argument Contains the property "Control".

//It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name);

//The display bounds of the AutoHidden control. It will return the object of

// Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString());

//The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType());

}
{% endhighlight %}



{% highlight VB %}



Private Sub dockingManager1_AutoHideAnimationStart(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Auto Hide Animation starting now : "+ i++)

'AutoHideAnimationEvent argument Contains the property "Control".

'It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name)

'The display bounds of the AutoHidden control. It will return the object of

' Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString())

'The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType())

End Sub

{% endhighlight %}

{% endtabs %}

### AutoHideAnimationStop event

The AutoHideAnimationStop event occurs immediately after the end of an auto hide animation. When the user click the auto hide button, the docked control will be hidden, and once this happens, the AutoHideAnimationStop event will be triggered.

#### Event data

The AutoHideAnimationEventHandler receives an argument of type AutoHideAnimationEventArgs containing data related to this event. The following AutoHideAnimationEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Bounds</td><td>
The display bounds of the auto hidden control.</td></tr>
<tr>
<td>
DockBorder</td><td>
The HostForm border along which the AutoHide tab is aligned.</td></tr>
</table>



{% tabs %}

{% highlight C# %}


//The AutoHideAnimationStop event occurs immediately after the end of an AutoHide animation

private void dockingManager1_AutoHideAnimationStop(object sender, Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs arg)

{

Console.WriteLine("Animation has been stopped");

//AutoHideAnimationEvent argument Contains the property "Control".

//It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name);

//The display bounds of the AutoHidden control. It will return the object of

// Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString());

//The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType());

}
{% endhighlight %}


{% highlight VB %}


'The AutoHideAnimationStop event occurs immediately after the end of an AutoHide animation

Private Sub dockingManager1_AutoHideAnimationStop(ByVal sender As object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs )

Console.WriteLine("Animation has been stopped")

'AutoHideAnimationEvent argument Contains the property "Control".

'It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name)

'The display bounds of the AutoHidden control. It will return the object of

' Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString())

'The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType())

End Sub

{% endhighlight %}

{% endtabs %}

## Context menu

This section covers the following events:

* [AutoHideTabContextMenu Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#autohidetabcontextmenu-event)
* [DockContextMenu Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockcontextmenu-event)
* [DocMenuClick Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#docmenuclick-event)


### AutoHideTabContextMenu event

This event occurs when the right mouse button is clicked over a auto hidden tab control.

#### Event data

The event handler receives an argument of type AutoHideTabContextMenuEventArgs containing data related to this event. The following AutoHideTabContextMenuEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ContextMenu</td><td>
Gets/sets the context menu to be displayed.</td></tr>
<tr>
<td>
DockBorder</td><td>
This returns the side to where the AutoHideTab is aligned.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void dockingManager1_AutoHideTabContextMenu(object sender, Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("AutoHideTabContextMenu event is raised");

}

{% endhighlight %}


{% highlight VB %}


Private Sub dockingManager1_AutoHideTabContextMenu(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("AutoHideTabContextMenu event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

### DockContextMenu event

The DockContextMenu event is fired when the mouse is right-clicked over a docking window's caption.

#### Event data

The event handler receives an argument of type DockContextMenuEventArgs containing data related to this event. The following DockContextMenuEventArgs properties provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ContextMenu</td><td>
Gets or sets the context menu to be displayed.</td></tr>
<tr>
<td>
Owner</td><td>
Gets the control that is displaying the context menu.</td></tr>
</table>
Editing the context menu of a Docked Control

The DockContextMenuEventArgs allows us to,

* Edit the context menu that appears when right clicked on the caption bar (Using DockContextMenuEventArgs.ContextMenu).
* Retrieve the control that is displaying the context menu (Using DockContextMenuEventArgs.Owner).

Create a simple docking window. Add the required name spaces. Declare and initialize the bar items to be placed in the context menu as shown in the code below.

{% tabs %}

{% highlight C# %}

//Adding namespaces

using Syncfusion.Windows.Forms.Tools.XPMenus;



//Declaring the bar items

private Syncfusion.Windows.Forms.Tools.XPMenus.BarItem bar1;

private Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem fileItem;



//Initialize and set the properties.

this.fileItem = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();

this.bar1 = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();

this.fileItem.Text = "File";

this.bar1.Text = "Exit";

this.fileItem.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {this.bar1});

//Call the event

this.dockingManager1.DockContextMenu += new Syncfusion.Windows.Forms.Tools.DockContextMenuEventHandler(this.dockingManager1_DockContextMenu);



private void dockingManager1_DockContextMenu(object sender, Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs arg)

{

   arg.ContextMenu.ParentBarItem.Items.Add(this.fileItem);

}

{% endhighlight %}


{% highlight VB %}

' Adding Namespace

Imports Syncfusion.Windows.Forms.Tools.XPMenus


'Declaration

Private fileItem As Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem

Private WithEvents bar1 As Syncfusion.Windows.Forms.Tools.XPMenus.BarItem

'Initialize and set the properties

Me.fileItem = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()

Me.bar1 = New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem()

Me.fileItem.Text = "File"

Me.bar1.Text = "Exit"

Me.fileItem.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() { Me.bar1})



//handling the event

Private Sub dockingManager1_DockContextMenu(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs)

arg.ContextMenu.ParentBarItem.Items.Add(Me.fileItem)

End Sub

{% endhighlight %}

{% endtabs %}


 ![](Docking-Events_images/Docking-Events_img1.jpeg) 


### DocMenuClick event

DockMenuClick event is fired, when the redo context menu item has been clicked. The menu button available for the docked controls, provides options for changing the docking position. Whenever the user tries to redo the control to some other position, DockMenuClick event will be triggered. The options provided are left, top, right, and bottom. The redo style can be displayed using the below code.

#### Event data

The DockMenuClickEventHandler receives an argument of type DockMenuClickEventArgs containing data related to this event. The following DockMenuClickEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
DockingStyle</td><td>
Returns the docking of the window.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


private void dockingManager1_DocMenuClick(object sender, Syncfusion.Windows.Forms.Tools.DockMenuClickEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Dock Menu Click event is raised");

//Display the Docking Style

Console.WriteLine("DockingStyle : " + arg.DockingStyle.ToString());

}

{% endhighlight %}


{% highlight VB %}


Private Sub dockingManager1_DocMenuClick(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockMenuClickEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Dock Menu click event is raised")

'Display the Docking Style

Console.WriteLine("DockingStyle : " + arg.DockingStyle.ToString());

End Sub

{% endhighlight %}

{% endtabs %}

## Docked control

This section covers the following events:

### ControlMaximized event

The docked control gets maximized, when the maximized button of the docked control is clicked. ControlMaximized event will be triggered after the control is maximized.

#### Event data

The event handler receives an argument of type ControlMaximizedEventArgs containing data related to this event. The following  ControlMaximizedEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets/sets value that indicates whether to cancel the operation or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


private void dockingManager1_ControlMaximized(object sender, Syncfusion.Windows.Forms.Tools.ControlMaximizedEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Control Maximized event is raised");

//Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name);

//Cancel is the boolean property which can prevent docking event when it is true.

arg.Cancel=true;

}
{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_ControlMaximized(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.ControlMaximizedEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Maximized event is raised")

'Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name)

'Cancel is the boolean property which can prevent docking event when it is true.

arg.Cancel=True

End Sub

{% endhighlight %}

{% endtabs %}

### ControlMaximizing event

When the user clicks on the maximize button, and when the control is going to be maximized, the ControlMaximizing event will be raised.

#### Event data

The event handler receives an argument of type ControlMaximizeEventArgs containing data related to this event. The following ControlMaximizeEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets/sets value that indicates whether to cancel the operation or not.</td></tr>
</table>
 

{% tabs %}

{% highlight C# %}

private void dockingManager1_ControlMaximizing(object sender, Syncfusion.Windows.Forms.Tools.ControlMaximizeEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Control Maximizing event is raised");

//Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name);

//Cancel is the boolean property which can prevent docking event when it is true.

arg.Cancel=True

}
{% endhighlight %}


{% highlight VB %}


Private Sub dockingManager1_ControlMaximizing(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.ControlMaximizeEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Maximizing event is raised")

'Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name)

'Cancel is the boolean property which can prevent docking event when it is true.

arg.Cancel=True

End Sub

{% endhighlight %}

{% endtabs %}

### ControlMinimized event

This event is fired after the control is minimized using the minimize option available for the docked control. This event can display the control name using the Control parameter available for the ControlMinimizedEventHandler.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Specifies the docked control which is minimized.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void dockingManager1_ControlMinimized(object sender, ControlMinimizedEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Control Minimized event is raised");

Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_ControlMinimized(ByVal sender As Object, ByVal arg As ControlMinimizedEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Minimized event is raised")

Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name);

End Sub

{% endhighlight %}

{% endtabs %}

### ControlRestored event

This event occurs after the control is restored to its original position. This event can give the previous state of the control using the PreviousSizeState property available for the handler.

#### Event data

The event handler receives an argument of type ControlRestoredEventArgs containing data related to this event. The following ControlRestoredEventArgs properties provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
PreviousSizeState</td><td>
Returns previous size state of changing control.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


private void dockingManager1_ControlRestored(object sender, ControlRestoredEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Control Restored event is raised");

//Displays the previous state

Console.WriteLine("Control Name : "+arg.PreviousSizeState.ToString());

}

{% endhighlight %}


{% highlight VB %}


Private Sub dockingManager1_ControlRestored(ByVal sender As Object, ByVal arg As ControlRestoredEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Restored event is raised")

'Displays the previous state

Console.WriteLine("Control Name : "+arg.PreviousSizeState.ToString());

End Sub

{% endhighlight %}

{% endtabs %}

## Dock state

This section covers the following events:

* [DockStateChanged Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstatechanged-event)
* [DockStateChanging Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstatechanging-event)
* [DockStateUnavailable Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstateunavailable-event)
* [NewDockStateBeginLoad Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#newdockstatebeginload-event)
* [NewDockStateEndLoad Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#newdockstateendload-event)

### DockStateChanged event


When the user changes the dock state of the control, DockStateChanged event will be raised immediately after this dock state change operation.

#### Event data

The event handler receives an argument of type DockStateChangeEventArgs containing data related to this event. The following DockStateChangeEventArgs property provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the collection of controls undergoing the dock state transfer.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

//The DockStateChanged event occurs immediately after a dock operation.

private void dockingManager1_DockStateChanged(object sender, Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs arg)

{

Console.WriteLine("DockStateChanged Event has occurred");

Console.WriteLine("Total Number of controls in a group : " +

arg.Controls.Length.ToString());

//arg.Controls Gets the collection of controls undergoing the dock state transfer.

Control[] controls = arg.Controls;

int i=1;

//Here display all the controls in arg.Controls group.

foreach(Control ctrl in controls)

{

Console.WriteLine("Control"+ i + " Name : " + ctrl.Name);

i++;

}

}

{% endhighlight %}


{% highlight VB %}

'The DockStateChanged event occurs immediately after a dock operation.

Private Sub dockingManager1_DockStateChanged(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs)

Console.WriteLine("DockStateChanged Event has occurred")

Console.WriteLine("Total Number of controls in a group : " + arg.Controls.Length.ToString)

'arg.Controls Gets the collection of controls undergoing the dock state transfer.

Dim controls As Control() = arg.Controls

Dim i As Integer = 1

'Here display all the controls in arg.Controls group.

For Each ctrl As Control In controls

Console.WriteLine("Control" + i + " Name : " + ctrl.Name)

System.Math.Min(System.Threading.Interlocked.Increment(i), i - 1)

Next

End Sub

{% endhighlight %}

{% endtabs %}



### DockStateChanging event

DockStateChanging event will be triggered just before a dock operation takes place.

#### Event data

The event handler receives an argument of type DockStateChangeEventArgs containing data related to this event. The following DockStateChangeEventArgs property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the collection of controls undergoing the dock state transfer.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The DockStateChanging event occurs just before a dock operation takes place.

private void dockingManager1_DockStateChanging(object sender, Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs arg)

{

Console.WriteLine("DockStateChanging Event has occurred");

Console.WriteLine("Total Number of controls in a group : "+arg.Controls.Length.ToString());

//arg.Controls gives the collection of controls which are in Docked Area.

Control[] controls = arg.Controls;

int i=1;

//Here display all the controls in arg.Controls group.

foreach(Control ctrl in controls)

{

Console.WriteLine("Control"+ i + " Name : " + ctrl.Name);

i++;

}

}

{% endhighlight %}


{% highlight VB %}

'The DockStateChanging event occurs just before a dock operation takes place.

Private Sub dockingManager1_DockStateChanging(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs)

Console.WriteLine("DockStateChanging Event has occurred")

Console.WriteLine("Total Number of controls in a group : " + arg.Controls.Length.ToString)

'arg.Controls gives the collection of controls which are in Docked Area.

Dim controls As Control() = arg.Controls

Dim i As Integer = 1

'Here display all the controls in arg.Controls group.

For Each ctrl As Control In controls

Console.WriteLine("Control" + i + " Name : " + ctrl.Name)

System.Math.Min(System.Threading.Interlocked.Increment(i), i - 1)

Next

End Sub

{% endhighlight %}

{% endtabs %}

### DockStateUnavailable event

The DockStateUnavailable event occurs if serialized information is not available for a dockable control when loading a persisted dock state.

#### Event data

The event handler receives an argument of type DockStateUnavailableEventArgs containing data related to this event. The following DockStateUnavailableEventArgs property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
The name property of the control.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


//The DockStateUnavailable event occurs if serialized information is not available

//for a dockable control when loading a persisted dock state.

private void dockingManager1_DockStateUnavailable(object sender, Syncfusion.Windows.Forms.Tools.DockStateUnavailableEventArgs arg)

{

Console.WriteLine("DockStateUnavailable Event has been fired");

Console.WriteLine("Dock state unavailable for the Control is :

"+arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}


'The DockStateUnavailable event occurs if serialized information is not available

'for a dockable control when loading a persisted dock state.

Private Sub dockingManager1_DockStateUnavailable(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateUnavailableEventArgs)

Console.WriteLine("DockStateUnavailable Event has been fired")

Console.WriteLine("Dock state unavailable for the Control is : " + arg.Control.Name)

End Sub

{% endhighlight %}

{% endtabs %}

### NewDockStateBeginLoad event

The NewDockStateBeginLoad event occurs just before a new dock state is loaded. Whenever an application with one or more docked controls is going to be loaded, this event will be triggered.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the docked control for which a new dock state is going to be loaded.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The NewDockStateBeginLoad event occurs just before a new dock state is loaded.

private void dockingManager1_NewDockStateBeginLoad(object sender, System.EventArgs e)

{

Console.WriteLine("NewDockStateBeginLoad Event occurred");

//This will show until you click on the OK button.

//So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateBeginLoad Event Message Box");

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_NewDockStateBeginLoad(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("NewDockStateBeginLoad Event occurred")

'This will show until you click on the OK button.

'So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateBeginLoad Event Message Box")

End Sub

{% endhighlight %}

{% endtabs %}

### NewDockStateEndLoad event

The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded. Whenever an application with one or more docked controls is loaded, this event will be triggered.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the docked control for which a new dock state has been loaded.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

//The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.

private void dockingManager1_NewDockStateEndLoad(object sender, System.EventArgs e)

{

Console.WriteLine("NewDockStateEndLoad Event occurred");

//This will show until you click on the OK button.

//So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateEndLoad Event Message Box");

}
{% endhighlight %}


{% highlight VB %}

'The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.

Private Sub dockingManager1_NewDockStateEndLoad(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("NewDockStateEndLoad Event occurred")

'This will show until you click on the OK button.

'So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateEndLoad Event Message Box")

End Sub

{% endhighlight %}

{% endtabs %}

## Dock visibility state

 This section covers the following events:

* [DockVisibilityChanged Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockvisibilitychanged-event)
* [DockVisibilityChanging Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockvisibilitychanging-event)

### DockVisibilityChanged event


This event occurs after a control's DockVisibility state has changed. When the user clicks on the close button, the control's visibility changes and at this moment DockVisibilityChanged event will be handled. We can also use dockingManager.GetDockVisibility(control) method to know the current status of the docking window.

#### Event data

The event handler receives an argument of type DockVisibilityChangedEventArgs containing data related to this event. The following DockVisibilityChangedEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the control undergoing the visibility change.</td></tr>
</table>



{% tabs %}

{% highlight C# %}


//this event triggers when the control's visibility has changed. 

private void dockingManager1_DockVisibilityChanged(object sender, Syncfusion.Windows.Forms.Tools.DockVisibilityChangedEventArgs arg)

{

   //GetDockVisibility method gives the detail of the docked control visibility 

   if (this.dockingManager1.GetDockVisibility(arg.Control) == false)

   {

        //DockVisibilityChangedEventArgs instance arg holds the control being changed the visibility  

        MessageBox.Show(this.dockingManager1.GetDockLabel(arg.Control) + " " + " window is closed.");
   }

} 
{% endhighlight %}


{% highlight VB %}


'this event triggers when the control's visibility has changed. 

 Private Sub dockingManager1_DockVisibilityChanged(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockVisibilityChangedEventArgs) Handles  

 dockingManager1.DockVisibilityChanged()



 'GetDockVisibility method gives the detail of the docked control visibility 

  If Me.dockingManager1.GetDockVisibility(arg.Control) = False Then



      'DockVisibilityChangedEventArgs instance arg holds the control being changed the visibility  

      MessageBox.Show(Me.dockingManager1.GetDockLabel(arg.Control) + " " + " window is closed.")



  End If

 End Sub
{% endhighlight %}

{% endtabs %}

### DockVisibilityChanging event

An use case demonstrating this event is available at How to prevent closing of docked window?.

## Drag events

This section covers the following events:

* [DragAllow Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dragallow-event)
* [DragFeedbackStart Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dragfeedbackstart-event)
* [DragFeedbackStop Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dragfeedbackstop-event)

### DragAllow event


The DragAllow event is triggered when a docking window is about to be dragged. Whenever the user wants to dock a control, he will try to drag the control, to dock it to a particular target. This event will be raised, when this dragging process starts.

#### Event data

DragAllowEventHandler receives an argument of type DragAllowEventArgs containing data related to this event. The following DragAllowEventArgs properties provides information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
This property gets/sets the value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Control</td><td>
The control that is about to be dragged.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The DragAllow event occurs when a docking window is about to be dragged.

private void dockingManager1_DragAllow(object sender, Syncfusion.Windows.Forms.Tools.DragAllowEventArgs arg)

{

Console.WriteLine("DragAllow Event has been triggered");

//arg.Control property gives the reference to be dragged.

if(arg.Control==this.panel1)

{

//arg.Cancel is the property used to cancel the drag operation when it's in true state.

arg.Cancel=true;

}

}

{% endhighlight %}


{% highlight VB %}


'The DragAllow event occurs when a docking window is about to be dragged.

Private Sub dockingManager1_DragAllow(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DragAllowEventArgs)

Console.WriteLine("DragAllow Event has been triggered")

'arg.Control property gives the reference to be dragged.

If arg.Control = Me.panel1 Then

'arg.Cancel is the property used to cancel the drag operation when it's in true state.

arg.Cancel = True

End If

End Sub

{% endhighlight %}

{% endtabs %}

### DragFeedbackStart event

The DragFeedbackStart event is fired just before the start of the feedback of a drag operation. When the docked control is dragged from its position to locate some position, this event will be raised.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the docked control which is about to be dragged.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The DragFeedbackStart event occurs just before the start of feedback of a drag operation.

//It occurs after the DragAllow Event.

private void dockingManager1_DragFeedbackStart(object sender, System.EventArgs e)

{

Console.WriteLine("DragFeedbackStart Event has been ");

//The following code is used to display all control names which are in the DockingManager.

Syncfusion.Windows.Forms.Tools.DockingManager ctrl=sender as

Syncfusion.Windows.Forms.Tools.DockingManager;

IEnumerator enumerator = ctrl.Controls;

ArrayList dockedControls = new ArrayList();

while(enumerator.MoveNext())

dockedControls.Add(enumerator.Current);

foreach(Control c in dockedControls)

{

Console.WriteLine("Control Name :" + c.Name);

}

}

{% endhighlight %}


{% highlight VB %}


Private Sub dockingManager1_DragFeedbackStart(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("DragFeedbackStart Event has been ")

Dim ctrl As Syncfusion.Windows.Forms.Tools.DockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(Syncfusion.Windows.Forms.Tools.DockingManager)), Syncfusion.Windows.Forms.Tools.DockingManager)

Dim enumerator As IEnumerator = ctrl.Controls

Dim dockedControls As ArrayList = New ArrayList

While enumerator.MoveNext

dockedControls.Add(enumerator.Current)

End While

For Each c As Control In dockedControls

Console.WriteLine("Control Name :" + c.Name)

Next

End Sub

{% endhighlight %}

{% endtabs %}

### DragFeedbackStop event

The DragFeedbackStop event occurs immediately after the end of the feedback of a drag operation. When the docked control is dragged from its position and locates another position, this event will be raised. Whenever the mouse click is released from dragging, the drag feedback is stopped and DragFeedbackStop event will be triggered.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the docked control which is dragged.</td></tr>
</table>


{% tabs %}

{% highlight C# %}


//The DragFeedbackStop event occurs immediately after the end of feedback of a drag operation.

private void dockingManager1_DragFeedbackStop(object sender, System.EventArgs e)

{

Console.WriteLine("DragFeedbackStop Event is raised");

}
{% endhighlight %}

{% highlight VB %}


'The DragFeedbackStop event occurs immediately after the end of feedback of a drag operation.

Private Sub dockingManager1_DragFeedbackStop(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("DragFeedbackStop Event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## Linked managers

This section covers the following events:

* [TransferredToManager Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#transferredtomanager-event)
* [TransferringFromManager Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#transferringfrommanager-event)
* [ImageListChanged Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#imagelistchanged-event)
* [InitializeControlOnLoad Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#initializecontrolonload-event)
* [ProvideGraphicsItems Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#providegraphicsitems-event)
* [ProvidePersistenceID Event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#providepersistenceid-event)

### TransferredToManager event


The TransferredToManager event occurs after a dockable control that previously belonged to some other DockingManager has been transferred to the docking layout hosted by the current DockingManager.

#### Event data

The event handler receives an argument of type TransferManagerEventArgs containing data related to this event. The following TransferManagerEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the control which is undergoing the transfer.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


// A docking window is being transferred from one docking layout to another.

// Update the control's DockingManager reference.

protected void DockingManager_TransferredToManager(object sender, TransferManagerEventArgs args)

{

Console.WriteLine("Transferred to Manager Event has been Raised");

DockableControlBase dockableControl = args.Control as DockableControlBase;

dockableControl.CurrentDockingManager = sender as DockingManager;

Console.WriteLine("HostControl Name (Target Page Name) : "+dockableControl.CurrentDockingManager.HostControl.Name);

}

{% endhighlight %}


{% highlight VB %}



Protected Sub DockingManager_TransferredToManager(ByVal sender As Object, ByVal args As TransferManagerEventArgs)

Console.WriteLine("Transferred to Manager Event has been Raised")

Dim dockableControl As DockableControlBase = CType(ConversionHelpers.AsWorkaround(args.Control, GetType(DockableControlBase)), DockableControlBase)

dockableControl.CurrentDockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Console.WriteLine("HostControl Name (Target Page Name) : " + dockableControl.CurrentDockingManager.HostControl.Name)

End Sub

{% endhighlight %}

{% endtabs %}

### TransferringFromManager event

The TransferringFromManager event occurs when a dockable control hosted by a DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.

#### Event data

The event handler receives an argument of type TransferManagerEventArgs containing data related to this event. The following TransferManagerEventArgs property provide information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the control which is undergoing the transfer.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


//The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is

//about to be transferred to the docking layout hosted by some other DockingManager.

protected void DockingManager_TransferringFromManager(object sender, TransferManagerEventArgs args)

{

Console.WriteLine("Transferring From Manager Event has been raised");

DockableControlBase dockableControl = args.Control as DockableControlBase;

dockableControl.CurrentDockingManager = sender as DockingManager; 

Console.WriteLine("HostControl name : "+dockableControl.CurrentDockingManager.HostControl.Name);

}
{% endhighlight %}


{% highlight VB %}

'The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is

'about to be transferred to the docking layout hosted by some other DockingManager.

Protected Sub DockingManager_TransferringFromManager(ByVal sender As Object, ByVal args As TransferManagerEventArgs)

Console.WriteLine("Transferring From Manager Event has been raised")

Dim dockableControl As DockableControlBase = CType(ConversionHelpers.AsWorkaround(args.Control, GetType(DockableControlBase)), DockableControlBase)

dockableControl.CurrentDockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Console.WriteLine("HostControl name : " + dockableControl.CurrentDockingManager.HostControl.Name)

End Sub

{% endhighlight %}

{% endtabs %}

## ImageListChanged event

When the image list property is changed, ImageListChanged event will be raised. Every docked control will have SetDockIcon property to set the icons for the control. When this property is changed, the above event will be triggered.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the docked control for which the image list property is changed.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//Occurs when the ImageList property changes

private void dockingManager1_ImageListChanged(object sender, System.EventArgs e)

{

Console.WriteLine("ImageList Changed Event Is Triggered");

//Here the code which set the Docking Icon dynamically.

dockingManager1.SetDockIcon(this.panel1,0);

dockingManager1.SetDockIcon(this.panel2,1);

}
{% endhighlight %}


{% highlight VB %}


'Occurs when the ImageList property changes

Private Sub dockingManager1_ImageListChanged(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("ImageList Changed Event Is Triggered")

'Here the code which set the Docking Icon dynamically.

dockingManager1.SetDockIcon(Me.panel1, 0)

dockingManager1.SetDockIcon(Me.panel2, 1)

End Sub

{% endhighlight %}

{% endtabs %}


### InitializeControlOnLoad event

The InitializeControlOnLoad event occurs when the DockingManager is not able to locate a control during a LoadDockState call.

#### Event data

The event handler receives an argument of type InitializeControlOnLoadEventArgs containing data related to this event. The following InitializeControlOnLoadEventArgs property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
ControlName</td><td>
The Name property of the control.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

protected void DockingManager_InitializeControlOnLoad(object sender,

InitializeControlOnLoadEventArgs args)

{

Console.WriteLine("InitializeControlOnLoad Event is Raised for the Control :

" +args.ControlName);

DockingManager dockingManager = sender as DockingManager;

switch (args.ControlName)

{

case "Suite Logo":

this.ActivateSuiteLogoControl(dockingManager, false);

break;

case "Suite Info":

this.ActivateSuiteInfoControl(dockingManager, false);

break;

case "Tools Info":

this.ActivateToolsInfoControl(dockingManager, false);

break;

case "Tools Logo":

this.ActivateToolsLogoControl(dockingManager, false);

break;

case "Grid Logo":

this.ActivateGridLogoControl(dockingManager, false);

break;

case "Grid Info":

this.ActivateGridInfoControl(dockingManager, false);

break;

}

}
{% endhighlight %}


{% highlight VB %}


Protected Sub DockingManager_InitializeControlOnLoad(ByVal sender As Object, ByVal args As InitializeControlOnLoadEventArgs)

Console.WriteLine("InitializeControlOnLoad Event is Raised for the Control : " + args.ControlName)

Dim dockingManager As DockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Select Case args.ControlName

Case "Suite Logo"

Me.ActivateSuiteLogoControl(dockingManager, False)

' break 

Case "Suite Info"

Me.ActivateSuiteInfoControl(dockingManager, False)

' break 

Case "Tools Info"

Me.ActivateToolsInfoControl(dockingManager, False)

' break 

Case "Tools Logo"

Me.ActivateToolsLogoControl(dockingManager, False)

' break 

Case "Grid Logo"

Me.ActivateGridLogoControl(dockingManager, False)

' break 

Case "Grid Info"

Me.ActivateGridInfoControl(dockingManager, False)

' break 

End Select

End Sub

{% endhighlight %}

{% endtabs %}

### ProvideGraphicsItems event

The ProvideGraphicsItems event occurs whenever a dockable control's caption needs to be painted. The background, foreground etc of the control's caption, when needs to be painted, this event will be raised. The docked control name, which is to be painted can be displayed using the control property.

#### Event data

The event handler receives an argument of type ProvideGraphicsItemsEventArgs containing data related to this event. The following ProvideGraphicsItemsEventArgs properties provide information specific to this event.


<table>
<tr>
<th>
 Member</th><th>
Description</th></tr>
<tr>
<td>
CaptionBackground</td><td>
Gets or sets the brush to be used for drawing the caption background.</td></tr>
<tr>
<td>
CaptionBounds</td><td>
Gets the bounds of the caption.</td></tr>
<tr>
<td>
CaptionFont</td><td>
Gets or sets the font to be used for the caption text.</td></tr>
<tr>
<td>
CaptionForeground</td><td>
Gets or sets the color to be used for drawing the caption text and buttons.</td></tr>
<tr>
<td>
Control</td><td>
Gets the dockable control for which the caption is being drawn.</td></tr>
<tr>
<td>
IsActiveCaption</td><td>
Gets the active/inactive state of the docking window.</td></tr>
</table>



N> If the control is in floating state, DockingManager.ProvideGraphicsItems event will not get triggered.


{% tabs %}

{% highlight C# %}


private void dockingManager1_ProvideGraphicsItems(object sender, Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs arg)

{

Console.WriteLine("ProvideGraphicsItems Event Raised"+ i++);

// Caption Background uses the Brush for Drawing on the caption bar

arg.CaptionBackground=new LinearGradientBrush(arg.CaptionBounds,

Color.Transparent , Color.White, (float)0);

//Caption Foreground color property will be used to specify the Font color of the caption

arg.CaptionForeground=Color.Black;

//Caption Bounds property gives the values of Caption Height, width, Top ,Bottom and

// More like rectangle control.

Console.WriteLine("Caption Bounds, Height="+ arg.CaptionBounds.Height+

"Width="+arg.CaptionBounds.Width);

//IsActive Caption property gives the docked control is in Active or else. It will return

// bool value

if(arg.IsActiveCaption)

Console.WriteLine("Control Name="+ arg.Control.Name);

}
{% endhighlight %}

{% highlight VB %}


Private Sub dockingManager1_ProvideGraphicsItems(ByVal sender As Object, ByVal arg AsSyncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs)

Console.WriteLine("ProvideGraphicsItems Event Raised" + System.Math.Min(System.Threading.Interlocked.Increment(i), i - 1))

'Caption Background uses the Brush for Drawing on the caption bar

arg.CaptionBackground = New LinearGradientBrush(arg.CaptionBounds, Color.Transparent, Color.White, CType(0, Single))

'Caption Fore ground color property will be used to specify the Font color of the caption

arg.CaptionForeground = Color.Black

'Caption Bounds property gives the values of Caption Height, width, Top ,Bottom and

'More like rectangle control.

Console.WriteLine("Caption Bounds, Height=" + arg.CaptionBounds.Height + "Width=" + arg.CaptionBounds.Width)

'IsActive Caption property gives the docked control is in Active or else. It will return

' bool value

If arg.IsActiveCaption Then

Console.WriteLine("Control Name=" + arg.Control.Name)

End If

End Sub

{% endhighlight %}

{% endtabs %}

### ProvidePersistenceID event

This event lets you specify a unique ID to distinguish the persistence information of different instances of the Form type.

#### Event data

The event handler receives an argument of type ProvidePersistenceIDEventArgs containing data related to this event. The following ProvidePersistenceIDEventArgs property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
PersistenceID</td><td>
Lets you specify a unique ID.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//Lets you specify a unique ID used to distinguish the persistence information of different

//instances of the Form type.

protected void DockingManager_ProvidePersistenceID(object sender,Syncfusion.Windows.Forms.ProvidePersistenceIDEventArgs e)

{

Console.WriteLine("Provide Persistence ID Event has been raised");

Syncfusion.Windows.Forms.Tools.DockingManager dockingManager = sender as DockingManager;

Console.WriteLine("Host control name = "+dockingManager.HostControl.Name.ToString());

//The docking state stores in a place named as that Host control name.

e.PersistenceID = dockingManager.HostControl.Name.ToString();

}

{% endhighlight %}


{% highlight VB %}


'Lets you specify a unique ID used to distinguish the persistence information of different

'instances of the Form type.

Protected Sub DockingManager_ProvidePersistenceID(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.ProvidePersistenceIDEventArgs)

Console.WriteLine("Provide Persistence ID Event has been raised")

Dim dockingManager As Syncfusion.Windows.Forms.Tools.DockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Console.WriteLine("Host control name = " + dockingManager.HostControl.Name.ToString)

'The docking state stores in a place named as that Host control name.

e.PersistenceID = dockingManager.HostControl.Name.ToString

End Sub

{% endhighlight %}

{% endtabs %}

## Docking behavior in DockingManager

The current behavior of DockingManager is based on Visual Studio 2008. This behavior can be changed to the dock behavior of  Visual Studio 2010 by using DockBehavior property.

### Caption button collection

In Visual Studio 2010, if you double-click on the docked window, the _caption control_ moves to _floating_ state and displays the _Caption Button_ collections as shown in the following screen shot.

 ![](Docking-Events_images/Docking-Events_img3.png)



### Interactive features

When you double-click on DockingManager caption bar, the control state changes to _Maximized_ state.

#### Maximize and restore options

You can maximize/restore the dock panel to the earlier floating window position by double-clicking on the caption bar or on the restore button.

The following screen shot shows how to restore a dock panel using _maximize_ and _restore_ buttons.

![](Docking-Events_images/Docking-Events_img4.png) 



#### Auto hide

You can auto-hide a dock panel by selecting the “Auto-Hide” menu item in the caption bar.

 ![](Docking-Events_images/Docking-Events_img5.png)



#### Auto hide state

The following screenshot shows a dock panel in auto-hide state.

 ![](Docking-Events_images/Docking-Events_img6.png) 



#### API details


<table>
<tr>
<th>
Property</th><th>
Type</th><th>
Description</td></tr>
<tr>
<td>
DockBehavior</td><td>
Enum</td><td>
Specifies the docking behavior of DockingManager.</td></tr>
</table>


{% tabs %}

{% highlight C# %}

this.dockingManager1.DockBehavior = Syncfusion.Windows.Forms.Tools.DockBehavior.VS2010;

{% endhighlight %}


{% highlight VB %}


Me.dockingManager1.DockBehavior = Syncfusion.Windows.Forms.Tools.DockBehavior.VS2010


{% endhighlight %}

{% endtabs %}


### OnCaptionDoubleClick event

The OnCaptionDoubleClick event occurs when you double-click on a dockable control or a docked control caption. This event is triggered when DockingManager EnableDoubleClickOnCaption property is set to _“false”_. It displays the control name which is currently active.

#### Event data

The event handler receives an argument of type DockMouseSelectionEventHandler that contains data related to this event. The following DockMouseSelectionEventHandler properties provide information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the control that is activated.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


private void dockingManager1_OnCaptionDoubleClick(object sender, Syncfusion.Windows.Forms.Tools.DockControlMouseSelection arg)

{

//When you  double-click on a Docked control or click on the Docked control caption,,

// OnCaptionDoubleClick event is triggered

//DockControlMouseSelection has a property called “Control” which has the details of 

// activated control.

Console.WriteLine("Dock Control Activated Event is Fired");

//Displays the name of the control that is currently active.

Console.WriteLine("Activated Control Name : "+arg.Control.Name);

}
{% endhighlight %}


{% highlight VB %}


 'The DockControlActivated event occurs when a dockable control gets activated.

Private Sub dockingManager1_OnCaptionDoubleClick(ByVal sender As Object, ByVal arg AsSyncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

‘When you  double-click on a Docked control or click on the Docked control caption,,

‘OnCaptionDoubleClick event is triggered

‘DockControlMouseSelection has a property called “Control” which has the details of 

‘activated control.

Console.WriteLine("Dock Control Activated Event is Fired");

‘Displays the name of the control that is currently active.

Console.WriteLine("Activated Control Name : "+arg.Control.Name);

End Sub

{% endhighlight %}

{% endtabs %}

{% seealso %}
 
[Context menu](/windowsforms/dockingmanager/dealing-with-windows#applying-context-menu )

{% endseealso %}