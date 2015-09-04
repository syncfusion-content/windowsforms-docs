---
layout: post
title: Docking-Events
description: docking events
platform: WindowsForms
control: Docking Package 
documentation: ug
---

# Docking Events

The Essential Tools DockingManager provides the functionality for creating and working with enhanced docking windows that support attaching to a host form's border, dragging around and docking to different edges within the form and also be dragged off the host form and floated as an individual top-level window. 

The Essential Tools docking framework allows just about any child control on a form to be made into a fully qualified docking window. The Docking manager provides programmatic access to the interaction between these dockable windows and other complex features like multiple docking levels, nested docking, tabbed docking, tear-off tabs, autohide mode, state persistence etc., by raising several events. 

The list of events and a detailed explanation about each of them is given in the following sections.

Table 69: Docking Events Table

<table>
<tr>
<th>
Docking Events</th><th>
Description</th></tr>
<tr>
<td>
AutoHideAnimationStart</td><td>
The AutoHideAnimationStart event occurs just before the start of an autohide animation.</td></tr>
<tr>
<td>
AutoHideAnimationStop</td><td>
The AutoHideAnimationStop event occursimmediately after the end of an autohideanimation.</td></tr>
<tr>
<td>
AutoHideTabContextMenu</td><td>
This event occurs when the right mouse button is clicked over a AutoHideTabControl. </td></tr>
<tr>
<td>
DockMenuClick</td><td>
This event occurs when the redock context menu item has been clicked.</td></tr>
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
The DockAllow event occurs when a dockingwindow is dragged over a potential dock target.</td></tr>
<tr>
<td>
DockContextMenu</td><td>
The DockContextMenu event occurs when theright mouse button is clicked over a dockingwindow's caption.</td></tr>
<tr>
<td>
DockControlActivated</td><td>
The DockControlActivated event occurs when adockable control gets activated.</td></tr>
<tr>
<td>
DockControlDeactivated</td><td>
The DockControlDeactivated event occurs when adockable control gets deactivated.</td></tr>
<tr>
<td>
DockStateChanged</td><td>
The DockStateChanged event occurs immediatelyafter a dock operation.</td></tr>
<tr>
<td>
DockStateChanging</td><td>
The DockStateChanging event occurs just beforea dock operation takes place.</td></tr>
<tr>
<td>
DockStateUnavailable</td><td>
The DockStateUnavailable event occurs ifserialized information is not available for adockable control when loading a persisted dockstate.</td></tr>
<tr>
<td>
DockVisibilityChanged</td><td>
The DockVisibilityChanged event occurs after acontrol's DockVisibility state has changed.</td></tr>
<tr>
<td>
DockVisibilityChanging</td><td>
The DockVisibilityChanging event occurs duringa control's DockVisibility state is changing.</td></tr>
<tr>
<td>
DragAllow</td><td>
The DragAllow event occurs when a dockingwindow is about to be dragged.</td></tr>
<tr>
<td>
DragFeedbackStart</td><td>
The DragFeedbackStart event occurs just beforethe start of feedback of a drag operation.</td></tr>
<tr>
<td>
DragFeedbackStop</td><td>
The DragFeedbackStop event occurs immediatelyafter the end of feedback of a drag operation.</td></tr>
<tr>
<td>
ImageListChanged</td><td>
Occurs when the ImageList property changes.</td></tr>
<tr>
<td>
InitializeControlOnLoad</td><td>
The InitializeControlOnLoad event occurs whenthe DockingManager is not able to locate acontrol during a LoadDockState call.</td></tr>
<tr>
<td>
NewDockStateBeginLoad</td><td>
The NewDockStateBeginLoad event occurs justbefore a new dock state is loaded.</td></tr>
<tr>
<td>
NewDockStateEndLoad</td><td>
The NewDockStateEndLoad event occursimmediately after a new dock state has beenloaded.</td></tr>
<tr>
<td>
ProvideGraphicsItems</td><td>
The ProvideGraphicsItems event occurs whenevera dockable control's caption needs to be painted.</td></tr>
<tr>
<td>
ProvidePersistenceID</td><td>
Lets you specify a unique ID used to distinguishthe persistence information of different instancesof the Form type.</td></tr>
<tr>
<td>
TransferredToManager</td><td>
The TransferredToManager event occurs after adockable control that previously belonged to someother DockingManager has been transferred to thedocking layout hosted by this DockingManager.</td></tr>
<tr>
<td>
TransferringFromManager</td><td>
The TransferringFromManager event occurs whena dockable control hosted by thisDockingManager is about to be transferred to thedocking layout hosted by some otherDockingManager.</td></tr>
</table>

## Docking

This section covers the following events:

### DockAllow Event

This event is illustrated in How to Prevent tabbed docking.

### DockControlActivated Event

The DockControlActivated event occurs when a dockable control gets activated. When the user clicks on the dockable control or the docked control, this event will be triggered. It can display the control name which has been activated currently.

#### Event Data

The event handler receives an argument of type DockActivationChangedEventArgs containing data related to this event. The following DockActivationChangedEventArgs properties provide information specific to this event.

Table 70: Member Table

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



{% highlight vbnet %}



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

### DockControlDeactivated Event

Whenever a dockable control or the docked control loses focus, DockControlDeactivated event will be raised. In other words, when a dockable control gets deactivated, this event will be fired. This event can display the control name that is deactivated.

#### Event Data

The event handler receives an argument of type DockedActivationChangedEventArgs containing data related to this event. The following DockActivationChangedEventArgs property provide information specific to this event.

Table 71: Member Table

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




{% highlight vbnet %}




'The DockControlDeactivated event occurs when a dockable control gets deactivated.

Private Sub dockingManager1_DockControlDeactivated(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

'Deactivation Event will be triggered when the control has lost the focus.

Console.WriteLine("Dock Control Deactivated Event is Fired")

'Here Display the name of the control that is being active currently.

Console.WriteLine("Deactivated Control Name : " + arg.Control.Name)

End Sub
{% endhighlight %}

## AutoHide Animation

This section discusses the below events that are raised at the start and end of autohide animation.

### AutoHideAnimationStart Event

The AutoHideAnimationStart event occurs just before the start of an autohide animation. When the user tries to click the auto hide button to hide the docked control, this event will be triggered.

#### Event Data

The AutoHideAnimationEventHandler receives an argument of type AutoHideAnimationEventArgs containing data related to this event. The following AutoHideAnimationEventArgs properties provide information specific to this event.

Table 72: Members Table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Bounds</td><td>
The display bounds of the autohidden control.</td></tr>
<tr>
<td>
DockBorder</td><td>
The HostForm border along which the AutoHide tab is aligned.</td></tr>
</table>



{% highlight C# %}




private void dockingManager1_AutoHideAnimationStart(object sender, Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Auto Hide Animation starting now : "+ i++);

//AutoHideAnimationEvent argument Contains the property "Control".

//It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name);

//The display bounds of the autohidden control. It will return the object of

// Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString());

//The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType());

}
{% endhighlight %}



{% highlight vbnet %}



Private Sub dockingManager1_AutoHideAnimationStart(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Auto Hide Animation starting now : "+ i++)

'AutoHideAnimationEvent argument Contains the property "Control".

'It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name)

'The display bounds of the autohidden control. It will return the object of

' Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString())

'The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType())

End Sub
{% endhighlight %}

### AutoHideAnimationStop Event

The AutoHideAnimationStop event occurs immediately after the end of an autohide animation. When the user click the auto hide button, the docked control will be hidden, and once this happens, the AutoHideAnimationStop event will be triggered.

#### Event Data

The AutoHideAnimationEventHandler receives an argument of type AutoHideAnimationEventArgs containing data related to this event. The following AutoHideAnimationEventArgs properties provide information specific to this event.

Table 73: Members Table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Bounds</td><td>
The display bounds of the autohidden control.</td></tr>
<tr>
<td>
DockBorder</td><td>
The HostForm border along which the AutoHide tab is aligned.</td></tr>
</table>





{% highlight C# %}


//The AutoHideAnimationStop event occurs immediately after the end of an autohide animation

private void dockingManager1_AutoHideAnimationStop(object sender, Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs arg)

{

Console.WriteLine("Animation has been stopped");

//AutoHideAnimationEvent argument Contains the property "Control".

//It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name);

//The display bounds of the autohidden control. It will return the object of

// Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString());

//The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType());

}
{% endhighlight %}


{% highlight vbnet %}



'The AutoHideAnimationStop event occurs immediately after the end of an autohide animation

Private Sub dockingManager1_AutoHideAnimationStop(ByVal sender As object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs )

Console.WriteLine("Animation has been stopped")

'AutoHideAnimationEvent argument Contains the property "Control".

'It has all kind of methods, events and properties of Control Class.

Console.WriteLine("Control Name : "+arg.Control.Name)

'The display bounds of the autohidden control. It will return the object of

' Rectangle Class

Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString())

'The HostForm border along which the AutoHide tab is aligned.

Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString()

+ "Type of the Dock Border is : " +arg.DockBorder.GetType())

End Sub
{% endhighlight %}

## Context Menu

This section covers the following events:

* [AutoHideTabContextMenu Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#autohidetabcontextmenu-event)
* [DockContextMenu Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dockcontextmenu-event)
* [DocMenuClick Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#docmenuclick-event)



### AutoHideTabContextMenu Event

This event occurs when the right mouse button is clicked over a autohidden tab control.

#### Event Data

The event handler receives an argument of type AutoHideTabContextMenuEventArgs containing data related to this event. The following AutoHideTabContextMenuEventArgs properties provide information specific to this event.

Table 74: Members Table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ContextMenu</td><td>
Gets / sets the context menu to be displayed.</td></tr>
<tr>
<td>
DockBorder</td><td>
This returns the side to where the AutoHideTab is aligned.</td></tr>
</table>



{% highlight C# %}



private void dockingManager1_AutoHideTabContextMenu(object sender, Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("AutoHideTabContextMenu event is raised");

}

{% endhighlight %}




{% highlight vbnet %}



Private Sub dockingManager1_AutoHideTabContextMenu(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("AutoHideTabContextMenu event is raised")

End Sub
{% endhighlight %}

### DockContextMenu Event

The DockContextMenu event is fired when the mouse is right-clicked over a docking window's caption.

#### Event Data

The event handler receives an argument of type DockContextMenuEventArgs containing data related to this event. The following DockContextMenuEventArgs properties provide information specific to this event. 

Table 75: Members Table

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



{% highlight C# %}


//Adding namespaces

using Syncfusion.Windows.Forms.Tools.XPMenus;



//Declaring the bar items

private Syncfusion.Windows.Forms.Tools.XPMenus.BarItem bar1;

private Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem pbiFile;



//Initialize and set the properties.

this.pbiFile = new Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem();

this.bar1 = new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem();

this.pbiFile.Text = "File";

this.bar1.Text = "Exit";

this.pbiFile.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {this.bar1});

//Call the event

this.dockingManager1.DockContextMenu += new Syncfusion.Windows.Forms.Tools.DockContextMenuEventHandler(this.dockingManager1_DockContextMenu);



private void dockingManager1_DockContextMenu(object sender, Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs arg)

{

    arg.ContextMenu.ParentBarItem.Items.Add(this.pbiFile);

}

{% endhighlight %}



{% highlight vbnet %}



' Adding Namespace

Imports Syncfusion.Windows.Forms.Tools.XPMenus



'Declaration

Private pbiFile As Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem

Private WithEvents bar1 As Syncfusion.Windows.Forms.Tools.XPMenus.BarItem

'Initialize and set the properties

Me.pbiFile = New Syncfusion.Windows.Forms.Tools.XPMenus.ParentBarItem()

Me.bar1 = New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem()

Me.pbiFile.Text = "File"

Me.bar1.Text = "Exit"

Me.pbiFile.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() { Me.bar1})



//handling the event

Private Sub dockingManager1_DockContextMenu(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs)

arg.ContextMenu.ParentBarItem.Items.Add(Me.pbiFile)

End Sub

{% endhighlight %}

 ![](Docking-Events_images/Docking-Events_img1.jpeg) 



{% seealso %}
 
[Context Menu](/windowsforms/dockingmanager/runtime-features#context-menu)

{% endseealso %}

### DocMenuClick Event

DockMenuClick event is fired, when the redock context menu item has been clicked. The menu button available for the docked controls, provides options for changing the docking position. Whenever the user tries to redock the control to some other position, DockMenuClick event will be triggered. The options provided are left, top, right and bottom. The redocked style can be displayed using the below code.

#### Event Data

The DockMenuClickEventHandler receives an argument of type DockMenuClickEventArgs containing data related to this event. The following DockMenuClickEventArgs properties provide information specific to this event.

Table 76: Members Table

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




{% highlight C# %}



private void dockingManager1_DocMenuClick(object sender, Syncfusion.Windows.Forms.Tools.DockMenuClickEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Dock Menu Click event is raised");

//Display the Docking Style

Console.WriteLine("DockingStyle : " + arg.DockingStyle.ToString());

}

{% endhighlight %}




{% highlight vbnet %}


Private Sub dockingManager1_DocMenuClick(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockMenuClickEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Dock Menu click event is raised")

'Display the Docking Style

Console.WriteLine("DockingStyle : " + arg.DockingStyle.ToString());

End Sub
{% endhighlight %}

## Docked Control

This section covers the following events:

### ControlMaximized Event

The docked control gets maximized, when the maximized button of the docked control is clicked. ControlMaximized event will be triggered after the control is maximized.

#### Event Data

The event handler receives an argument of type ControlMaximizedEventArgs containing data related to this event. The following  ControlMaximizedEventArgs properties provide information specific to this event.

Table 77: Members Table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets value that indicates whether to cancel the operation or not.</td></tr>
</table>



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




{% highlight vbnet %}

Private Sub dockingManager1_ControlMaximized(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.ControlMaximizedEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Maximized event is raised")

'Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name)

'Cancel is the boolean property which can prevent docking event when it is true.

arg.Cancel=True

End Sub
{% endhighlight %}

### ControlMaximizing Event

When the user clicks on the maximize button, and when the control is going to be maximized, the ControlMaximizing event will be raised.

#### Event Data

The event handler receives an argument of type ControlMaximizeEventArgs containing data related to this event. The following ControlMaximizeEventArgs properties provide information specific to this event.

Table 78: Member Table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets value that indicates whether to cancel the operation or not.</td></tr>
</table>



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




{% highlight vbnet %}


Private Sub dockingManager1_ControlMaximizing(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.ControlMaximizeEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Maximizing event is raised")

'Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name)

'Cancel is the boolean property which can prevent docking event when it is true.

arg.Cancel=True

End Sub
{% endhighlight %}
### ControlMinimized Event

This event is fired after the control is minimized using the minimize option available for the docked control. This event can display the control name using the Control parameter available for the ControlMinimizedEventHandler.

Table 79: Members Table

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


{% highlight C# %}





private void dockingManager1_ControlMinimized(object sender, ControlMinimizedEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Control Minimized event is raised");

Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name);

}

{% endhighlight %}


{% highlight vbnet %}



Private Sub dockingManager1_ControlMinimized(ByVal sender As Object, ByVal arg As ControlMinimizedEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Minimized event is raised")

Displays the docked control name

Console.WriteLine("Control Name : "+arg.Control.Name);

End Sub
{% endhighlight %}

### ControlRestored Event

This event occurs after the control is restored to its original position. This event can give the previous state of the control using the PreviousSizeState property available for the handler.

#### Event Data

The event handler receives an argument of type ControlRestoredEventArgs containing data related to this event. The following ControlRestoredEventArgs properties provide information specific to this event.

Table 80: Members Table

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




{% highlight C# %}


private void dockingManager1_ControlRestored(object sender, ControlRestoredEventArgs arg)

{

// You can see the below line in output window during runtime.

Console.WriteLine("Control Restored event is raised");

//Displays the previous state

Console.WriteLine("Control Name : "+arg.PreviousSizeState.ToString());

}

{% endhighlight %}



{% highlight vbnet %}


Private Sub dockingManager1_ControlRestored(ByVal sender As Object, ByVal arg As ControlRestoredEventArgs)

' You can see the below line in output window during runtime.

Console.WriteLine("Control Restored event is raised")

'Displays the previous state

Console.WriteLine("Control Name : "+arg.PreviousSizeState.ToString());

End Sub
{% endhighlight %}

## Dock State

This section covers the following events:

* [DockStateChanged Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstatechanged-event)
* [DockStateChanging Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstatechanging-event)
* [DockStateUnavailable Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstateunavailable-event)
* [NewDockStateBeginLoad Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#newdockstatebeginload-event)
* [NewDockStateEndLoad Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#newdockstateendload-event)

### DockStateChanged Event


When the user changes the dock state of the control, DockStateChanged event will be raised immediately after this dock state change operation.

#### Event Data

The event handler receives an argument of type DockStateChangeEventArgs containing data related to this event. The following DockStateChangeEventArgs property provides information specific to this event.

Table 81: Members Table

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




{% highlight C# %}



//The DockStateChanged event occurs immediately after a dock operation.

private void dockingManager1_DockStateChanged(object sender, Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs arg)

{

Console.WriteLine("DockStateChanged Event has occurred");

Console.WriteLine("Total Number of controls in a group : " +

arg.Controls.Length.ToString());

//arg.Controls Gets the collection of controls undergoing the dockstate transfer.

Control[] ctrls = arg.Controls;

int i=1;

//Here display all the controls in arg.Controls group.

foreach(Control ctrl in ctrls)

{

Console.WriteLine("Control"+ i + " Name : " + ctrl.Name);

i++;

}

}

{% endhighlight %}





{% highlight vbnet %}

'The DockStateChanged event occurs immediately after a dock operation.

Private Sub dockingManager1_DockStateChanged(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs)

Console.WriteLine("DockStateChanged Event has occurred")

Console.WriteLine("Total Number of controls in a group : " + arg.Controls.Length.ToString)

'arg.Controls Gets the collection of controls undergoing the dockstate transfer.

Dim ctrls As Control() = arg.Controls

Dim i As Integer = 1

'Here display all the controls in arg.Controls group.

For Each ctrl As Control In ctrls

Console.WriteLine("Control" + i + " Name : " + ctrl.Name)

System.Math.Min(System.Threading.Interlocked.Increment(i), i - 1)

Next

End Sub
{% endhighlight %}

### DockStateChanging Event

DockStateChanging event will be triggered just before a dock operation takes place.

#### Event Data

The event handler receives an argument of type DockStateChangeEventArgs containing data related to this event. The following DockStateChangeEventArgs property provides information specific to this event.

Table 82: Members Table

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the collection of controls undergoingthe dockstate transfer.</td></tr>
</table>



{% highlight C# %}



//The DockStateChanging event occurs just before a dock operation takes place.

private void dockingManager1_DockStateChanging(object sender, Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs arg)

{

Console.WriteLine("DockStateChanging Event has occurred");

Console.WriteLine("Total Number of controls in a group : "+arg.Controls.Length.ToString());

//arg.Controls gives the collection of controls which are in Docked Area.

Control[] ctrls = arg.Controls;

int i=1;

//Here display all the controls in arg.Controls group.

foreach(Control ctrl in ctrls)

{

Console.WriteLine("Control"+ i + " Name : " + ctrl.Name);

i++;

}

}

{% endhighlight %}


{% highlight vbnet %}



'The DockStateChanging event occurs just before a dock operation takes place.

Private Sub dockingManager1_DockStateChanging(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs)

Console.WriteLine("DockStateChanging Event has occurred")

Console.WriteLine("Total Number of controls in a group : " + arg.Controls.Length.ToString)

'arg.Controls gives the collection of controls which are in Docked Area.

Dim ctrls As Control() = arg.Controls

Dim i As Integer = 1

'Here display all the controls in arg.Controls group.

For Each ctrl As Control In ctrls

Console.WriteLine("Control" + i + " Name : " + ctrl.Name)

System.Math.Min(System.Threading.Interlocked.Increment(i), i - 1)

Next

End Sub
{% endhighlight %}

### DockStateUnavailable Event

The DockStateUnavailable event occurs if serialized information is not available for a dockable control when loading a persisted dock state.

#### Event Data

The event handler receives an argument of type DockStateUnavailableEventArgs containing data related to this event. The following DockStateUnavailableEventArgs property provides information specific to this event.

Table 83: Members Table

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


{% highlight vbnet %}



'The DockStateUnavailable event occurs if serialized information is not available

'for a dockable control when loading a persisted dock state.

Private Sub dockingManager1_DockStateUnavailable(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateUnavailableEventArgs)

Console.WriteLine("DockStateUnavailable Event has been fired")

Console.WriteLine("Dock state unavailable for the Control is : " + arg.Control.Name)

End Sub
{% endhighlight %}

### NewDockStateBeginLoad Event

The NewDockStateBeginLoad event occurs just before a new dock state is loaded. Whenever an application with one or more docked controls is going to be loaded, this event will be triggered.

Table 84: Members Table

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




{% highlight vbnet %}

Private Sub dockingManager1_NewDockStateBeginLoad(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("NewDockStateBeginLoad Event occurred")

'This will show until you click on the OK button.

'So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateBeginLoad Event Message Box")

End Sub
{% endhighlight %}

### NewDockStateEndLoad Event

The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded. Whenever an application with one or more docked controls is loaded, this event will be triggered.

Table 85: Members Table

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


{% highlight C# %}




//The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.

private void dockingManager1_NewDockStateEndLoad(object sender, System.EventArgs e)

{

Console.WriteLine("NewDockstateEndLoad Event occurred");

//This will show until you click on the OK button.

//So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateEndLoad Event Message Box");

}
{% endhighlight %}




{% highlight vbnet %}



'The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded.

Private Sub dockingManager1_NewDockStateEndLoad(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("NewDockstateEndLoad Event occurred")

'This will show until you click on the OK button.

'So The new state will be loaded after finishing this statement.

MessageBox.Show("This is NewDockStateEndLoad Event Message Box")

End Sub
{% endhighlight %}

## Dock Visibility State 

 This section covers the following events:

* [DockVisibilityChanged Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dockvisibilitychanged-event)
* [DockVisibilityChanging Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dockvisibilitychanging-event)

### DockVisibilityChanged Event


This event occurs after a control's DockVisibility state has changed. When the user clicks on the close button, the control's visibility changes and at this moment DockVisibilityChanged event will be handled. We can also use dockingManager.GetDockVisibility(control) method to know the current status of the docking window. 

#### Event Data

The event handler receives an argument of type DockVisibilityChangedEventArgs containing data related to this event. The following DockVisibilityChangedEventArgs properties provide information specific to this event.

Table 86: Members Table

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





{% highlight vbnet %}


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

### DockVisibilityChanging Event

An use case demonstrating this event is available at How to prevent closing of docked window?.

## Drag Events

This section covers the following events:

* [DragAllow Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dragallow-event)
* [DragFeedbackStart Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dragfeedbackstart-event)
* [DragFeedbackStop Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#dragfeedbackstop-event)

### DragAllow Event


The DragAllow event is triggered when a docking window is about to be dragged. Whenever the user wants to dock a control, he will try to drag the control, to dock it to a particular target. This event will be raised, when this dragging process starts.

#### Event Data

DragAllowEventHandler receives an argument of type DragAllowEventArgs containing data related to this event. The following DragAllowEventArgs properties provides information specific to this event.

Table 87: Members Table

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
This property gets / sets the value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
Control</td><td>
The control that is about to be dragged.</td></tr>
</table>


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



{% highlight vbnet %}



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
### DragFeedbackStart Event

The DragFeedbackStart event is fired just before the start of the feedback of a drag operation. When the docked control is dragged from its position to locate some position, this event will be raised.

Table 88: Member Table

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



{% highlight C# %}




//The DragFeedbackStart event occurs just before the start of feedback of a drag operation.

//It occurs after the DragAllow Event.

private void dockingManager1_DragFeedbackStart(object sender, System.EventArgs e)

{

Console.WriteLine("DragFeedbackStart Event has been ");

//The following code is used to display all control names which are in the Docking Manager.

Syncfusion.Windows.Forms.Tools.DockingManager ctrl=sender as

Syncfusion.Windows.Forms.Tools.DockingManager;

IEnumerator ienum = ctrl.Controls;

ArrayList dockedctrls = new ArrayList();

while(ienum.MoveNext())

dockedctrls.Add(ienum.Current);

foreach(Control c in dockedctrls)

{

Console.WriteLine("Control Name :" + c.Name);

}

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub dockingManager1_DragFeedbackStart(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("DragFeedbackStart Event has been ")

Dim ctrl As Syncfusion.Windows.Forms.Tools.DockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(Syncfusion.Windows.Forms.Tools.DockingManager)), Syncfusion.Windows.Forms.Tools.DockingManager)

Dim ienum As IEnumerator = ctrl.Controls

Dim dockedctrls As ArrayList = New ArrayList

While ienum.MoveNext

dockedctrls.Add(ienum.Current)

End While

For Each c As Control In dockedctrls

Console.WriteLine("Control Name :" + c.Name)

Next

End Sub
{% endhighlight %}

### DragFeedbackStop Event

The DragFeedbackStop event occurs immediately after the end of the feedback of a drag operation. When the docked control is dragged from its position and locates another position, this event will be raised. Whenever the mouse click is released from dragging, the drag feedback is stopped and DragFeedbackStop event will be triggered.

Table 89: Member Table

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


{% highlight C# %}



//The DragFeedbackStop event occurs immediately after the end of feedback of a drag operation.

private void dockingManager1_DragFeedbackStop(object sender, System.EventArgs e)

{

Console.WriteLine("DragFeedbackStop Event is raised");

}
{% endhighlight %}




{% highlight vbnet %}



'The DragFeedbackStop event occurs immediately after the end of feedback of a drag operation.

Private Sub dockingManager1_DragFeedbackStop(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("DragFeedbackStop Event is raised")

End Sub
{% endhighlight %}

## Linked Managers

This section covers the following events:

* [TransferredToManager Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#transferredtomanager-event)
* [TransferringFromManager Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#transferringfrommanager-event)
* [ImageListChanged Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#imagelistchanged-event)
* [InitializeControlOnLoad Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#initializecontrolonload-event)
* [ProvideGraphicsItems Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#providegraphicsitems-event)
* [ProvidePersistenceID Event](http://docs.syncfusion.com/windowsforms/dockingmanager/docking-events#providepersistenceid-event)

### TransferredToManager Event


The TransferredToManager event occurs after a dockable control that previously belonged to some other DockingManager has been transferred to the docking layout hosted by the current DockingManager.

#### Event Data

The event handler receives an argument of type TransferManagerEventArgs containing data related to this event. The following TransferManagerEventArgs properties provide information specific to this event.

Table 90: Member Table

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


{% highlight C# %}




// A docking window is being transferred from one docking layout to another.

// Update the control's DockingManager reference.

protected void DockingManager_TransferredToManager(object sender, TransferManagerEventArgs args)

{

Console.WriteLine("Transferred to Manager Event has been Raised");

DockableControlBase dockablecontrol = args.Control as DockableControlBase;

dockablecontrol.CurrentDockingManager = sender as DockingManager;

Console.WriteLine("HostControl Name (Target Page Name) : "+dockablecontrol.CurrentDockingManager.HostControl.Name);

}

{% endhighlight %}



{% highlight vbnet %}



Protected Sub DockingManager_TransferredToManager(ByVal sender As Object, ByVal args As TransferManagerEventArgs)

Console.WriteLine("Transferred to Manager Event has been Raised")

Dim dockablecontrol As DockableControlBase = CType(ConversionHelpers.AsWorkaround(args.Control, GetType(DockableControlBase)), DockableControlBase)

dockablecontrol.CurrentDockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Console.WriteLine("HostControl Name (Target Page Name) : " + dockablecontrol.CurrentDockingManager.HostControl.Name)

End Sub
{% endhighlight %}

### TransferringFromManager Event

The TransferringFromManager event occurs when a dockable control hosted by a DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.

#### Event Data

The event handler receives an argument of type TransferManagerEventArgs containing data related to this event. The following TransferManagerEventArgs property provide information specific to this event.

Table 91: Member Table

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


{% highlight C# %}




//The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is

//about to be transferred to the docking layout hosted by some other DockingManager.

protected void DockingManager_TransferringFromManager(object sender, TransferManagerEventArgs args)

{

Console.WriteLine("Transferring From Manager Event has been raised");

DockableControlBase dockablecontrol = args.Control as DockableControlBase;

dockablecontrol.CurrentDockingManager = sender as DockingManager; 

Console.WriteLine("HostControl name : "+dockablecontrol.CurrentDockingManager.HostControl.Name);

}
{% endhighlight %}




{% highlight vbnet %}



'The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is

'about to be transferred to the docking layout hosted by some other DockingManager.

Protected Sub DockingManager_TransferringFromManager(ByVal sender As Object, ByVal args As TransferManagerEventArgs)

Console.WriteLine("Transferring From Manager Event has been raised")

Dim dockablecontrol As DockableControlBase = CType(ConversionHelpers.AsWorkaround(args.Control, GetType(DockableControlBase)), DockableControlBase)

dockablecontrol.CurrentDockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Console.WriteLine("HostControl name : " + dockablecontrol.CurrentDockingManager.HostControl.Name)

End Sub
{% endhighlight %}

## ImageListChanged Event

When the imagelist property is changed, ImageListChanged event will be raised. Every docked control will have SetDockIcon property to set the icons for the control. When this property is changed, the above event will be triggered.

Table 92: Member Table

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the docked control for which the imagelist property is changed.</td></tr>
</table>


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





{% highlight vbnet %}




'Occurs when the ImageList property changes

Private Sub dockingManager1_ImageListChanged(ByVal sender As Object, ByVal e As System.EventArgs)

Console.WriteLine("ImageList Changed Event Is Triggered")

'Here the code which set the Docking Icon dynamically.

dockingManager1.SetDockIcon(Me.panel1, 0)

dockingManager1.SetDockIcon(Me.panel2, 1)

End Sub
{% endhighlight %}

## InitializeControlOnLoad Event

The InitializeControlOnLoad event occurs when the DockingManager is not able to locate a control during a LoadDockState call.

### Event Data

The event handler receives an argument of type InitializeControlOnLoadEventArgs containing data related to this event. The following InitializeControlOnLoadEventArgs property provides information specific to this event.

Table 93: Member Table

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


{% highlight C# %}





protected void DockingManager_InitializeControlOnLoad(object sender,

InitializeControlOnLoadEventArgs args)

{

Console.WriteLine("InitializeControlOnLoad Event is Raised for the Control :

" +args.ControlName);

DockingManager dockingmgr = sender as DockingManager;

switch (args.ControlName)

{

case "Suite Logo":

this.ActivateSuiteLogoControl(dockingmgr, false);

break;

case "Suite Info":

this.ActivateSuiteInfoControl(dockingmgr, false);

break;

case "Tools Info":

this.ActivateToolsInfoControl(dockingmgr, false);

break;

case "Tools Logo":

this.ActivateToolsLogoControl(dockingmgr, false);

break;

case "Grid Logo":

this.ActivateGridLogoControl(dockingmgr, false);

break;

case "Grid Info":

this.ActivateGridInfoControl(dockingmgr, false);

break;

}

}
{% endhighlight %}


{% highlight vbnet %}





Protected Sub DockingManager_InitializeControlOnLoad(ByVal sender As Object, ByVal args As InitializeControlOnLoadEventArgs)

Console.WriteLine("InitializeControlOnLoad Event is Raised for the Control : " + args.ControlName)

Dim dockingmgr As DockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Select Case args.ControlName

Case "Suite Logo"

Me.ActivateSuiteLogoControl(dockingmgr, False)

' break 

Case "Suite Info"

Me.ActivateSuiteInfoControl(dockingmgr, False)

' break 

Case "Tools Info"

Me.ActivateToolsInfoControl(dockingmgr, False)

' break 

Case "Tools Logo"

Me.ActivateToolsLogoControl(dockingmgr, False)

' break 

Case "Grid Logo"

Me.ActivateGridLogoControl(dockingmgr, False)

' break 

Case "Grid Info"

Me.ActivateGridInfoControl(dockingmgr, False)

' break 

End Select

End Sub
{% endhighlight %}

## ProvideGraphicsItems Event

The ProvideGraphicsItems event occurs whenever a dockable control's caption needs to be painted. The background, foreground etc of the control's caption, when needs to be painted, this event will be raised. The docked control name, which is to be painted can be displayed using the control property.

### Event Data

The event handler receives an argument of type ProvideGraphicsItemsEventArgs containing data related to this event. The following ProvideGraphicsItemsEventArgs properties provide information specific to this event.

Table 94: Member Table

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
Gets the active / inactive state of the docking window.</td></tr>
</table>



N> If the control is in floating state, DockingManager.ProvideGraphicsItems event will not get triggered.


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



{% highlight vbnet %}




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

## ProvidePersistenceID Event

This event lets you specify a unique ID to distinguish the persistence information of different instances of the Form type.

### Event Data

The event handler receives an argument of type ProvidePersistenceIDEventArgs containing data related to this event. The following ProvidePersistenceIDEventArgs property provides information specific to this event.

Table 95: Member Table

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


{% highlight C# %}





//Lets you specify a unique ID used to distinguish the persistence information of different

//instances of the Form type.

protected void DockingManager_ProvidePersistenceID(object sender,Syncfusion.Windows.Forms.ProvidePersistenceIDEventArgs e)

{

Console.WriteLine("Provide Persistence ID Event has been raised");

Syncfusion.Windows.Forms.Tools.DockingManager dm = sender as DockingManager;

Console.WriteLine("Host control name = "+dm.HostControl.Name.ToString());

//The docking state stores in a place named as that Host control name.

e.PersistenceID=dm.HostControl.Name.ToString();

}

{% endhighlight %}


{% highlight vbnet %}



'Lets you specify a unique ID used to distinguish the persistence information of different

'instances of the Form type.

Protected Sub DockingManager_ProvidePersistenceID(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.ProvidePersistenceIDEventArgs)

Console.WriteLine("Provide Persistence ID Event has been raised")

Dim dm As Syncfusion.Windows.Forms.Tools.DockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

Console.WriteLine("Host control name = " + dm.HostControl.Name.ToString)

'The docking state stores in a place named as that Host control name.

e.PersistenceID = dm.HostControl.Name.ToString

End Sub
{% endhighlight %}

## Docking behavior in Docking Manager

The current behavior of Docking Manager is based on Visual Studio 2008. This behavior can be changed to the dock behavior of  Visual Studio 2010 by using DockBehavior property.

### Caption Button Collection:

In Visual studio 2010, if you double-click on the docked window, the _caption control_ moves to _floating_ state and displays the _Caption Button_ collections as shown in the following screen shot. 

 ![](Docking-Events_images/Docking-Events_img3.png)



### Interactive features

When you double-click on Docking Manager caption bar, the control state changes to _Maximized_ state. 

#### Maximize and Restore Options: 

You can maximize/restore the dock panel to the earlier floating window position by double-clicking on the caption bar or on the restore button. 

The following screen shot shows how to restore a dock panel using _maximize_ and _restore_ buttons.

![](Docking-Events_images/Docking-Events_img4.png) 



#### Auto Hide:

You can auto-hide a dock panel by selecting the “Auto-Hide” menu item in the caption bar. 

The following screen shot shows how to auto-hide a dock panel.

 ![](Docking-Events_images/Docking-Events_img5.png)



#### Auto Hide State:

The following screen shot shows a dock panel in auto-hide state.

 ![](Docking-Events_images/Docking-Events_img6.png) 



#### API Details:

Table 96: Property Table

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
Specifies the docking behavior of Docking Manager.</td></tr>
</table>


The following code example illustrates how to switch DockBehavior property from VS 2008 to VS 2010 

and vice versa.

{% highlight C# %}


this.dockingManager1.DockBehavior = Syncfusion.Windows.Forms.Tools.DockBehavior.VS2010;

{% endhighlight %}


{% highlight C# %}


this.dockingManager1.DockBehavior = Syncfusion.Windows.Forms.Tools.DockBehavior.VS2008;

{% endhighlight %}


{% highlight vbnet %}


Me.dockingManager1.DockBehavior = Syncfusion.Windows.Forms.Tools.DockBehavior.VS2010

{% endhighlight %}


{% highlight vbnet %}


 Me.dockingManager1.DockBehavior = Syncfusion.Windows.Forms.Tools.DockBehavior.VS2008
{% endhighlight %}




