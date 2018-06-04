---
layout: post
title: Docking-Events | WindowsForms | Syncfusion
description: docking events
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Docking events

`DockingManager` provides the functionality for creating and working with enhanced docking windows that support attaching to a host form's border, dragging and docking to different edges within the form and also be dragged off the host form and floated as an individual top-level window. The Docking Framework allows any child control on a form to be made into a fully qualified docking window. The DockingManager provides programmatic access to the interaction between these dockable windows and other complex features like multiple docking levels, nested docking, tabbed docking, tear-off tabs, auto hide mode, state persistence etc., by raising several events. 

The list of events and a detailed explanation about each of them is given in the following sections.

<table>
<tr>
<th>
Docking events</th><th>
Description</th></tr>
<tr>
<td>
{{ '[AutoHideAnimationStart](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AutoHideAnimationStart_EV.html)' | markdownify }}</td><td>
The AutoHideAnimationStart event occurs just before the start of an auto hide animation</td></tr>
<tr>
<td>
{{ '[AutoHideAnimationStop](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AutoHideAnimationStop_EV.html)' | markdownify }}</td><td>
The AutoHideAnimationStop event occurs immediately after the end of an auto hide animation</td></tr>
<tr>
<td>
{{ '[AutoHideTabContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AutoHideTabContextMenu_EV.html)' | markdownify }}</td><td>
This event occurs when the right mouse button is clicked over a AutoHideTabControl</td></tr>
<tr>
<td>
{{ '[DockMenuClick](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockMenuClick_EV.html)' | markdownify }}</td><td>
This event occurs when the redone context menu item has been clicked</td></tr>
<tr>
<td>
{{ '[ControlMaximized](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMaximized_EV.html)' | markdownify }}
</td><td>
This event occurs after the control is maximized</td></tr>
<tr>
<td>
{{ '[ControlMaximizing](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMaximizing_EV.html)' | markdownify }}
</td><td>
This event occurs before the control is going to maximize</td></tr>
<tr>
<td>
{{ '[ControlMinimized](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMinimized_EV.html)' | markdownify }}
</td><td>
This event occurs after the control is minimized</td></tr>
<tr>
<td>
{{ '[ControlRestored](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlRestored_EV.html)' | markdownify }}</td><td>
This event occurs after the control is restored</td></tr>
<tr>
<td>
{{ '[DockAllow](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockAllow_EV.html)' | markdownify }}</td><td>
The DockAllow event occurs when a docking window is dragged over a potential dock target</td></tr>
<tr>
<td>
{{ '[DockContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockContextMenu_EV.html)' | markdownify }}</td><td>
The DockContextMenu event occurs when the right mouse button is clicked over a docking window's caption</td></tr>
<tr>
<td>
{{ '[DockControlActivated](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockControlActivated_EV.html)' | markdownify }}</td><td>
The DockControlActivated event occurs when a dockable control gets activated</td></tr>
<tr>
<td>
{{ '[DockControlDeactivated](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockControlDeactivated_EV.html)' | markdownify }}</td><td>
The DockControlDeactivated event occurs when a dockable control gets deactivated</td></tr>
<tr>
<td>
{{ '[DockStateChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockStateChanged_EV.html)' | markdownify }}</td><td>
The DockStateChanged event occurs immediately after a dock operation</td></tr>
<tr>
<td>
{{ '[DockStateChanging](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockStateChanging_EV.html)' | markdownify }}</td><td>
The DockStateChanging event occurs just before a dock operation takes place</td></tr>
<tr>
<td>
{{ '[DockStateUnavailable](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockStateUnavailable_EV.html)' | markdownify }}</td><td>
The DockStateUnavailable event occurs if serialized information is not available for a dockable control while loading a persisted dock state</td></tr>
<tr>
<td>
{{ '[DockVisibilityChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockVisibilityChanged_EV.html)' | markdownify }}</td><td>
The DockVisibilityChanged event occurs after a control's DockVisibility state has changed</td></tr>
<tr>
<td>
{{ '[DockVisibilityChanging](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockVisibilityChanging_EV.html)' | markdownify }}</td><td>
The DockVisibilityChanging event occurs during a control's DockVisibility state is changing</td></tr>
<tr>
<td>
{{ '[DragAllow](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragAllow_EV.html)' | markdownify }}</td><td>
The DragAllow event occurs when a docking window is about to be dragged</td></tr>
<tr>
<td>
{{ '[DragFeedbackStart](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragFeedbackStart_EV.html)' | markdownify }}</td><td>
The DragFeedbackStart event occurs just before the start of feedback of a drag operation</td></tr>
<tr>
<td>
{{ '[DragFeedbackStop](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragFeedbackStop_EV.html)' | markdownify }}</td><td>
The DragFeedbackStop event occurs immediately after the end of feedback of a drag operation</td></tr>
<tr>
<td>
{{ '[ImageListChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ImageListChanged_EV.html)' | markdownify }}</td><td>
Occurs when the ImageList property changes</td></tr>
<tr>
<td>
{{ '[InitializeControlOnLoad](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~InitializeControlOnLoad_EV.html)' | markdownify }}</td><td>
The InitializeControlOnLoad event occurs when the DockingManager is not able to locate a control during a LoadDockState call</td></tr>
<tr>
<td>
{{ '[NewDockStateBeginLoad](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~NewDockStateBeginLoad_EV.html)' | markdownify }}</td><td>
The NewDockStateBeginLoad event occurs just before a new dock state is loaded</td></tr>
<tr>
<td>
{{ '[NewDockStateEndLoad](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~NewDockStateEndLoad_EV.html)' | markdownify }}</td><td>
The NewDockStateEndLoad event occurs immediately after a new dock state has been loaded</td></tr>
<tr>
<td>
{{ '[ProvideGraphicsItems](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ProvideGraphicsItems_EV.html)' | markdownify }}</td><td>
The ProvideGraphicsItems event occurs whenever a dockable control's caption needs to be painted</td></tr>
<tr>
<td>
{{ '[ProvidePersistenceID](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ProvidePersistenceID_EV.html)' | markdownify }}</td><td>
Lets you specify a unique ID used to distinguish the persistence information of different instances of the Form type</td></tr>
<tr>
<td>
{{ '[TransferredToManager](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~TransferredToManager_EV.html)' | markdownify }}</td><td>
The TransferredToManager event occurs after a dockable control that previously belonged to some other DockingManager has been transferred to the docking layout hosted by this DockingManager</td></tr>
<tr>
<td>
{{ '[TransferringFromManager](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~TransferringFromManager_EV.html)' | markdownify }}</td><td>
The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is about to be transferred to the docking layout hosted by some other DockingManager</td></tr>
</table>

## Docking

This section discusses the events that are raised while activating and deactivating the docked child window.

### DockControlActivated event

The [DockControlActivated](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockControlActivated_EV.html) event occurs when a dockable control gets activated. When the user clicks on the dockable control or the docked control, this event will be triggered. It can display the control name which has been activated currently.

#### Event data

The event handler receives an argument of type [DockActivationChangedEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs.html) containing data related to this event. The following DockActivationChangedEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlEventArgs~Control.html)' | markdownify }}</td><td>
The control which has been activated now</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The `DockControlActivated` event will be triggered when a dockable control gets activated.

private void dockingManager1_DockControlActivated(object sender, Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs arg)
{

   Console.WriteLine("Dock Control Activated Event is Fired");

   //Here Display the name of the control that is being active currently.

   Console.WriteLine("Activated Control Name : " +arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

'The `DockControlActivated` event will be triggered when a dockable control gets activated.

Private Sub dockingManager1_DockControlActivated(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

   Console.WriteLine("Dock Control Activated Event is Fired")

   'Here Display the name of the control that is being active currently.

   Console.WriteLine("Activated Control Name : " + arg.Control.Name)

End Sub

{% endhighlight %}

{% endtabs %}

### DockControlDeactivated event

The [DockControlDeactivated](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockControlDeactivated_EV.html) event will be raised Whenever a dockable control or the docked control loses its focus. In other words, when a dockable control gets deactivated this event will be fired. This event can display the control name that is deactivated.

#### Event data

The event handler receives an argument of type [DockedActivationChangedEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs.html) containing data related to this event. The following DockActivationChangedEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlEventArgs~Control.html)' | markdownify }}</td><td>
The control which has been deactivated now</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The `DockControlDeactivated` event occurs when a dockable control gets deactivated.

private void dockingManager1_DockControlDeactivated(object sender, Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs arg)

{

   //Deactivation Event will be triggered when the control has lost the focus.

   Console.WriteLine("Dock Control Deactivated Event is Fired");

   //Here Display the name of the control that is being active currently.

   Console.WriteLine("Deactivated Control Name : " + arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

'The `DockControlDeactivated` event occurs when a dockable control gets deactivated.

Private Sub dockingManager1_DockControlDeactivated(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

   'Deactivation Event will be triggered when the control has lost the focus.

   Console.WriteLine("Dock Control Deactivated Event is Fired")

   'Here Display the name of the control that is being active currently.

   Console.WriteLine("Deactivated Control Name : " + arg.Control.Name)

End Sub

{% endhighlight %}

{% endtabs %}

### DockAllow event

The [DockAllow](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockAllow_EV.html) event occurs when a docking window is dragged over a potential dock target. This event helps to cancel the operation which was performed during docking the windows. The following examples illustrate the same:

{% tabs %}

{% highlight C# %}

Private void DockingManager1_DockAllow(object sender, DockAllowEventArgs arg)
{
    arg.Cancel = true;
}

{% endhighlight %}


{% highlight VB %}

Private Sub DockingManager1_DockAllow(ByVal sender As Object, ByVal arg As DockAllowEventArgs)

   arg.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}

## Notify AutoHide

This section discusses the events that are raised at the start and end of auto hide animation.

### AutoHideAnimationStart event

The [AutoHideAnimationStart](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AutoHideAnimationStart_EV.html) event occurs just before the start of an auto hide animation. When the user tries to click the auto hide button to hide the docked control, this event will be triggered.

#### Event data

The [AutoHideAnimationEventHandler](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventHandler.html) receives an argument of type [AutoHideAnimationEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs.html) containing data related to this event. The following AutoHideAnimationEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Bounds](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs~Bounds.html)' | markdownify }}</td><td>
The display bounds of the auto hidden control</td></tr>
<tr>
<td>
{{ '[DockBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs~DockBorder.html)' | markdownify }}</td><td>
The HostForm border along which the AutoHide tab is aligned</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void dockingManager1_AutoHideAnimationStart(object sender, Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs arg)

{

   // You can see the below line in output window during runtime.

   Console.WriteLine("Auto Hide Animation starting now : " +i++);

   //AutoHideAnimationEvent argument Contains the property "Control".

   //It has all kind of functions, events and properties of Control Class.

   Console.WriteLine("Control Name : " +arg.Control.Name);

   //The display bounds of the AutoHidden control. It will return the object of Rectangle Class

   Console.WriteLine("Control Bounds Value : " +arg.Bounds.ToString());

   //The HostForm border along which the AutoHide tab is aligned.

   Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString() + "Type of the Dock Border is : " +arg.DockBorder.GetType());

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_AutoHideAnimationStart(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs)

   ' You can see the below line in output window during runtime.

   Console.WriteLine("Auto Hide Animation starting now : "+ i++)

   'AutoHideAnimationEvent argument Contains the property "Control".

   'It has all kind of functions, events and properties of Control Class.

   Console.WriteLine("Control Name : "+arg.Control.Name)

   'The display bounds of the AutoHidden control. It will return the object of Rectangle Class

   Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString())

   'The HostForm border along which the AutoHide tab is aligned.

   Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString() + "Type of the Dock Border is : " +arg.DockBorder.GetType())

End Sub

{% endhighlight %}

{% endtabs %}

### AutoHideAnimationStop event

The [AutoHideAnimationStop](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AutoHideAnimationStop_EV.html) event occurs immediately after the end of an auto hide animation. When the user click the auto hide button the docked control will be hidden, that time AutoHideAnimationStop event will be triggered.

#### Event data

The [AutoHideAnimationEventHandler](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventHandler.html) receives an argument of type [AutoHideAnimationEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs.html) containing data related to this event. The following AutoHideAnimationEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Bounds](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs~Bounds.html)' | markdownify }}</td><td>
The display bounds of the auto hidden control</td></tr>
<tr>
<td>
{{ '[DockBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs~DockBorder.html)' | markdownify }}</td><td>
The HostForm border along which the AutoHide tab is aligned</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The `AutoHideAnimationStop` event occurs immediately after the end of an AutoHide animation.

private void dockingManager1_AutoHideAnimationStop(object sender, Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs arg)

{

   Console.WriteLine("Animation has been stopped");

   //AutoHideAnimationEvent argument Contains the property "Control".

   //It has all kind of functions, events and properties of Control Class.

   Console.WriteLine("Control Name : "+arg.Control.Name);

   //The display bounds of the AutoHidden control. It will return the object of Rectangle Class

   Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString());

   //The HostForm border along which the AutoHide tab is aligned.

   Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString() + "Type of the Dock Border is : " +arg.DockBorder.GetType());

}

{% endhighlight %}


{% highlight VB %}

'The `AutoHideAnimationStop` event occurs immediately after the end of an AutoHide animation.

Private Sub dockingManager1_AutoHideAnimationStop(ByVal sender As object, ByVal arg As Syncfusion.Windows.Forms.Tools.AutoHideAnimationEventArgs )

   Console.WriteLine("Animation has been stopped")

   'AutoHideAnimationEvent argument Contains the property "Control".

   'It has all kind of functions, events and properties of Control Class.

   Console.WriteLine("Control Name : "+arg.Control.Name)

   'The display bounds of the AutoHidden control. It will return the object of Rectangle Class

   Console.WriteLine("Control Bounds Value : "+arg.Bounds.ToString())

  'The HostForm border along which the AutoHide tab is aligned.

   Console.WriteLine("Control Dock Border Value : "+arg.DockBorder.ToString() + "Type of the Dock Border is : " +arg.DockBorder.GetType())

End Sub

{% endhighlight %}

{% endtabs %}

## Caption double click

The [OnCaptionDoubleClick](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~OnCaptionDoubleClick_EV.html) event occurs when you double-click on a dockable control or a docked control caption. This event is triggered when DockingManager [EnableDoubleClickOnCaption](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~EnableDoubleClickOnCaption.html) property is set to `false`. It displays the control name which is currently active.

### Event data

The event handler receives an argument of type [DockControlMouseSelection](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlMouseSelection.html) that contains data related to this event. The following DockControlMouseSelection members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlMouseSelection~Control.html)' | markdownify }}</td><td>
Gets the control that is activated</td></tr>
</table>

{% tabs %}

{% highlight C# %}


private void dockingManager1_OnCaptionDoubleClick(object sender, Syncfusion.Windows.Forms.Tools.DockControlMouseSelection arg)
{
   // OnCaptionDoubleClick event is triggered

   Console.WriteLine("Dock Control Activated Event is Fired");

   //Displays the name of the control that is currently active.

   Console.WriteLine("Activated Control Name : "+arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

'The DockControlActivated event occurs when a dockable control gets activated.

Private Sub dockingManager1_OnCaptionDoubleClick(ByVal sender As Object, ByVal arg AsSyncfusion.Windows.Forms.Tools.DockActivationChangedEventArgs)

   'OnCaptionDoubleClick event is triggered

   Console.WriteLine("Dock Control Activated Event is Fired");

   'Displays the name of the control that is currently active.

   Console.WriteLine("Activated Control Name : "+arg.Control.Name);

End Sub

{% endhighlight %}

{% endtabs %}

## Context menu

This section discuss the following events which was related to ContextMenu:

* [AutoHideTabContextMenu event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#autohidetabcontextmenu-event)
* [DockContextMenu event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockcontextmenu-event)
* [DocMenuClick event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#docmenuclick-event)

### AutoHideTabContextMenu event

The [AutoHideTabContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~AutoHideTabContextMenu_EV.html) event will get triggered when user clicks the right mouse button over a auto hidden tab control. The AutoHide window ContextMenu can be enabled or disabled by using [EnableAutoHideTabContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~EnableAutoHideTabContextMenu.html) property. Its default value is `true`.

#### Event data

The event handler receives an argument of type [AutoHideTabContextMenuEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs.html) containing data related to this event. The following AutoHideTabContextMenuEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs~ContextMenu.html)' | markdownify }}</td><td>
Gets / sets the context menu to be displayed</td></tr>
<tr>
<td>
{{ '[Side](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.AutoHideTabContextMenuEventArgs~Side.html)' | markdownify }}</td><td>
Returns the side to where the AutoHideTab is aligned</td></tr>
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

The [DockContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockContextMenu_EV.html) event gets fired when the mouse is right-clicked over a docking window's caption.

#### Event data

The event handler has an argument of type [DockContextMenuEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs.html). That argument has 2 properties [ContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs~ContextMenu.html) of type PopupMenu and [Owner](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs~Owner.html) of type control. ContextMenu gives access to the menu which is going to be displayed and owner identifies the docked control. So by checking this owner object, we can remove the context menu for a particular control.

The `DockContextMenuEventArgs` allows us to,

* Edit the context menu that appears when right clicked on the caption bar (Using [DockContextMenuEventArgs.ContextMenu](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs~ContextMenu.html).
* Retrieve the control that is displaying the context menu (Using [DockContextMenuEventArgs.Owner](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockContextMenuEventArgs~Owner.html).

Create a simple docking window. Add the required namespaces. Declare and initialize the bar items to be placed in the context menu as shown in the code below.

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

{% seealso %}
 
[Context Menu](/windowsforms/dockingmanager/dealing-with-windows#applying-context-menu )

{% endseealso %}

### DockMenuClick event

[DockMenuClick](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockMenuClick_EV.html) event gets fired, when the re-dock context menu item has been clicked. The menu button available for the docked controls, provides options for changing the docking position. Whenever the user tries to re-dock the control to some other position, DockMenuClick event will be triggered. The options provided are left, top, right and bottom. These re-dock context menu item option is available only in `VS2008` Docking Style. The re-dock style can be displayed using the below code.

#### Event data

The [DockMenuClickEventHandler](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockMenuClickEventHandler.html) receives an argument of type [DockMenuClickEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockMenuClickEventArgs.html) containing data related to this event. The following DockMenuClickEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[DockingStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockMenuClickEventArgs~DockingStyle.html)' | markdownify }}</td><td>
Returns the docking of the window</td></tr>
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

## Notify maximize dock control

[ControlMaximizing](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMaximizing_EV.html) and [ControlMaximized](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMaximized_EV.html) event of DockingManager gets triggered while maximizing the docked control.

### ControlMaximizing event

The [ControlMaximizing](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMaximizing_EV.html) event will be raised, When the user clicks on the maximize button which was available in the docked controls or when the control is going to be maximized.

#### Event data

The event handler receives an argument of type [ControlMaximizeEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlMaximizeEventArgs.html) containing data related to this event. The following ControlMaximizeEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlMaximizeEventArgs~Cancel.html)' | markdownify }}</td><td>
Gets / sets value that indicates whether to cancel the operation or not</td></tr>
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

   arg.Cancel = true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_ControlMaximizing(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.ControlMaximizeEventArgs)

   ' You can see the below line in output window during runtime.

   Console.WriteLine("Control Maximizing event is raised")

   'Displays the docked control name

   Console.WriteLine("Control Name : "+arg.Control.Name)

   'Cancel is the boolean property which can prevent docking event when it is true.

   arg.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}

### ControlMaximized event

The docked control gets maximized, when the maximized button of the docked control is clicked. [ControlMaximized](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMaximized_EV.html) event will be triggered after the control is maximized.

#### Event data

The event handler receives an argument of type [ControlMaximizedEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlMaximizedEventArgs.html) containing data related to this event.

{% tabs %}

{% highlight C# %}

private void dockingManager1_ControlMaximized(object sender, Syncfusion.Windows.Forms.Tools.ControlMaximizedEventArgs arg)

{

   // You can see the below line in output window during runtime.

   Console.WriteLine("Control Maximized event is raised");

   //Displays the docked control name

   Console.WriteLine("Control Name : "+arg.Control.Name);

   //Cancel is the Boolean property which can prevent docking event when it is true.

   arg.Cancel=true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_ControlMaximized(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.ControlMaximizedEventArgs)

   ' You can see the below line in output window during runtime.

   Console.WriteLine("Control Maximized event is raised")

   'Displays the docked control name

   Console.WriteLine("Control Name : "+arg.Control.Name)

   'Cancel is the Boolean property which can prevent docking event when it is true.

   arg.Cancel=True

End Sub

{% endhighlight %}

{% endtabs %}

## Notify restore

[ControlRestored](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlRestored_EV.html) event gets fired after the Docked control is restored to its original position. This event can give the previous state of the control using the PreviousSizeState property available for the handler.

#### Event data

The event handler receives an argument of type [ControlRestoredEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlRestoredEventArgs.html) containing data related to this event. The following ControlRestoredEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[PreviousSizeState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlRestoredEventArgs~PreviousSizeState.html)' | markdownify }}</td><td>
Returns previous size state of changing control</td></tr>
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

## Notify minimize dock control

[ControlMinimized](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ControlMinimized_EV.html) event is fired after the control is minimized using the minimize option available for the docked control. This event can display the control name using the Control parameter available in the ControlMinimizedEventArgs(https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlMinimizedEventArgs.html).

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ControlSizeStateChangedEventArgs~Control.html)' | markdownify }}</td><td>
Specifies the docked control which is minimized</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void dockingManager1_ControlMinimized(object sender, ControlMinimizedEventArgs arg)
{

   // You can see the below line in output window during runtime.

   Console.WriteLine("Control Minimized event is raised");

   // Displays the docked control name

   Console.WriteLine("Control Name : "+arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

Private Sub dockingManager1_ControlMinimized(ByVal sender As Object, ByVal arg As ControlMinimizedEventArgs)

   ' You can see the below line in output window during runtime.

   Console.WriteLine("Control Minimized event is raised")

   'Displays the docked control name

   Console.WriteLine("Control Name : "+arg.Control.Name);

End Sub

{% endhighlight %}

{% endtabs %}

## Notify dock state change

This section covers the following events:

* [DockStateChanged event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstatechanged-event)
* [DockStateChanging event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstatechanging-event)
* [DockStateUnavailable event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockstateunavailable-event)
* [NewDockStateBeginLoad event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#newdockstatebeginload-event)
* [NewDockStateEndLoad event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#newdockstateendload-event)

### DockStateChanged event

[DockStateChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockStateChanged_EV.html) event will be raised immediately When the user changes the dock state of the control.

#### Event data

The event handler receives an argument of type [DockStateChangeEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs.html) containing data related to this event. The following DockStateChangeEventArgs members provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Controls](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs~Controls.html)' | markdownify }}</td><td>
Gets the collection of controls undergoing the dock state transfer</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The `DockStateChanged` event occurs immediately after a dock operation.

private void dockingManager1_DockStateChanged(object sender, Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs arg)

{

   Console.WriteLine("DockStateChanged Event has occurred");

   Console.WriteLine("Total Number of controls in a group : " + arg.Controls.Length.ToString());

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

'The `DockStateChanged` event occurs immediately after a dock operation.

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

[DockStateChanging](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockStateChanging_EV.html) event will be triggered just before a dock state of particular control gets changed.

#### Event data

The event handler receives an argument of type [DockStateChangeEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs.html) containing data related to this event. The following DockStateChangeEventArgs members provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Controls](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockStateChangeEventArgs~Controls.html)' | markdownify }}</td><td>
Gets the collection of controls undergoing the dock state transfer</td></tr>
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

The [DockStateUnavailable](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockStateUnavailable_EV.html) event will be triggered if serialized information is not available for a dockable control while loading a persisted dock state.

#### Event data

The event handler receives an argument of type [DockStateUnavailableEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockStateUnavailableEventArgs.html) containing data related to this event. The following DockStateUnavailableEventArgs members provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlEventArgs~Control.html)' | markdownify }}</td><td>
Gets the name of the control</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The `DockStateUnavailable` event occurs if serialized information is not available for a dockable control when loading a persisted dock state.

private void dockingManager1_DockStateUnavailable(object sender, Syncfusion.Windows.Forms.Tools.DockStateUnavailableEventArgs arg)

{

   Console.WriteLine("DockStateUnavailable Event has been fired");

   Console.WriteLine("Dock state unavailable for the Control is :" +arg.Control.Name);

}

{% endhighlight %}


{% highlight VB %}

'The `DockStateUnavailable` event occurs if serialized information is not available for a dockable control when loading a persisted dock state.

Private Sub dockingManager1_DockStateUnavailable(ByVal sender As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.DockStateUnavailableEventArgs)

   Console.WriteLine("DockStateUnavailable Event has been fired")

   Console.WriteLine("Dock state unavailable for the Control is : " + arg.Control.Name)

End Sub

{% endhighlight %}

{% endtabs %}

### NewDockStateBeginLoad event

The [NewDockStateBeginLoad](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~NewDockStateBeginLoad_EV.html) event occurs just before a new dock state of particular control is loaded. Whenever an application with one or more docked controls is going to be loaded, this event will be triggered.

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

The [NewDockStateEndLoad](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~NewDockStateEndLoad_EV.html) event occurs immediately after a new dock state has been loaded. Whenever an application with one or more docked controls is loaded, this event will be triggered.

{% tabs %}

{% highlight C# %}

//The `NewDockStateEndLoad` event occurs immediately after a new dock state has been loaded.

private void dockingManager1_NewDockStateEndLoad(object sender, System.EventArgs e)

{

   Console.WriteLine("NewDockStateEndLoad Event occurred");

   //This will show until you click on the OK button.

   //So The new state will be loaded after finishing this statement.

   MessageBox.Show("This is NewDockStateEndLoad Event Message Box");

}

{% endhighlight %}


{% highlight VB %}

'The `NewDockStateEndLoad` event occurs immediately after a new dock state has been loaded.

Private Sub dockingManager1_NewDockStateEndLoad(ByVal sender As Object, ByVal e As System.EventArgs)

   Console.WriteLine("NewDockStateEndLoad Event occurred")

   'This will show until you click on the OK button.

   'So The new state will be loaded after finishing this statement.

   MessageBox.Show("This is NewDockStateEndLoad Event Message Box")

End Sub

{% endhighlight %}

{% endtabs %}

## Dock visibility

This section covers the following events:

* [DockVisibilityChanged event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockvisibilitychanged-event)
* [DockVisibilityChanging event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dockvisibilitychanging-event)

### DockVisibilityChanged event

This event occurs after a control's DockVisibility state has changed. When the user clicks on the close button, the control's visibility changes and at this moment [DockVisibilityChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DockVisibilityChanged_EV.html) event will be handled. We can also use [DockingManager.GetDockVisibility](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~GetDockVisibility.html) function to know the current status of the docking window. 

#### Event data

The event handler receives an argument of type [DockVisibilityChangedEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockVisibilityChangedEventArgs.html) containing data related to this event. The following DockVisibilityChangedEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlEventArgs~Control.html)' | markdownify }}</td><td>
Gets the control undergoing the visibility change</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//this event triggers when the control's visibility has changed. 

private void dockingManager1_DockVisibilityChanged(object sender, Syncfusion.Windows.Forms.Tools.DockVisibilityChangedEventArgs arg)

{

   //GetDockVisibility function gives the detail of the docked control visibility 

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

 'GetDockVisibility function gives the detail of the docked control visibility 

  If Me.dockingManager1.GetDockVisibility(arg.Control) = False Then

      'DockVisibilityChangedEventArgs instance arg holds the control being changed the visibility  

      MessageBox.Show(Me.dockingManager1.GetDockLabel(arg.Control) + " " + " window is closed.")

  End If

 End Sub

{% endhighlight %}

{% endtabs %}

### DockVisibilityChanging event

This event gets fired while changing the visibility of particular docked control. We can avoid changing the visibility of control by canceling this event operation which gets executed. 

{% tabs %}

{% highlight C# %}

private void DockingManager1_DockVisibilityChanging(object sender, DockVisibilityChangingEventArgs arg)
{
   arg.Cancel = true;
}

{% endhighlight %}


{% highlight VB %}

Private Sub DockingManager1_DockVisibilityChanging(ByVal sender As Object, ByVal arg As DockVisibilityChangingEventArgs)

   arg.Cancel=True

End Sub

{% endhighlight %}

{% endtabs %}

## Drag events

This section covers the events which occurs while performing the dragging operation:

* [DragAllow event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dragallow-event)
* [DragFeedbackStart event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dragfeedbackstart-event)
* [DragFeedbackStop event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#dragfeedbackstop-event)

### DragAllow event

The [DragAllow](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragAllow_EV.html) event is triggered when a docking window is about to be dragged. Whenever the user wants to dock a control, he will try to drag the control to dock it to a particular target. This event will be raised, when this dragging process starts.

#### Event data

[DragAllowEventHandler](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DragAllowEventHandler.html) receives an argument of type [DragAllowEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DragAllowEventArgs.html) containing data related to this event. The following DragAllowEventArgs members provides information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://msdn.microsoft.com/en-us/library/system.componentmodel.canceleventargs.cancel(v=vs.110).aspx)' | markdownify }}</td><td>
This property gets / sets the value indicating whether the event should be canceled</td></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DragAllowEventArgs~Control.html)' | markdownify }}</td><td>
The control that is about to be dragged</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The `DragAllow` event occurs when a docking window is about to be dragged.

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

'The `DragAllow` event occurs when a docking window is about to be dragged.

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

The [DragFeedbackStart](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragFeedbackStart_EV.html) event is fired just before the start of the feedback of a drag operation. When the docked control is dragged from its position to locate some position, this event will be raised. We can restrict invoking these event by using [DragFeedbackEventsOnSplitters](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragFeedbackEventsOnSplitters.html) property of DockingManager. Its default value is `true`.

{% tabs %}

{% highlight C# %}

//The `DragFeedbackStart` event occurs just before the start of feedback of a drag operation.

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

'The `DragFeedbackStart` event occurs just before the start of feedback of a drag operation.

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

The [DragFeedbackStop](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragFeedbackStop_EV.html) event occurs immediately after the end of the feedback of a drag operation. When the docked control is dragged from its position and locates another position, this event will be raised. Whenever the mouse click is released from dragging, the drag feedback is stopped and DragFeedbackStop event will be triggered. We can restrict invoking these event by using [DragFeedbackEventsOnSplitters](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~DragFeedbackEventsOnSplitters.html) property of DockingManager. Its default value is `true`.

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

This section discusses the following LinkedManager events:

* [TransferredToManager event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#transferredtomanager-event)
* [TransferringFromManager event](http://help.syncfusion.com/windowsforms/dockingmanager/docking-events#transferringfrommanager-event)

### TransferredToManager event

The [TransferredToManager](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~TransferredToManager_EV.html) event occurs after a dockable control that previously belonged to some other DockingManager has been transferred to the docking layout hosted by the current DockingManager.

#### Event data

The event handler receives an argument of type [TransferManagerEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TransferManagerEventArgs.html) containing data related to this event. The following TransferManagerEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlEventArgs~Control.html)' | markdownify }}</td><td>
Gets the control which is undergoing the transfer</td></tr>
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

The [TransferringFromManager](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~TransferringFromManager_EV.html) event will be raised when a dockable control hosted by a DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.

#### Event data

The event handler receives an argument of type [TransferManagerEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TransferManagerEventArgs.html) containing data related to this event. The following TransferManagerEventArgs members provide information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockControlEventArgs~Control.html)' | markdownify }}</td><td>
Gets the control which is undergoing the transfer</td></tr>
</table>

{% tabs %}

{% highlight C# %}

//The TransferringFromManager event occurs when a dockable control hosted by this DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.

protected void DockingManager_TransferringFromManager(object sender, TransferManagerEventArgs args)

{

   Console.WriteLine("Transferring From Manager Event has been raised");

   DockableControlBase dockableControl = args.Control as DockableControlBase;

   dockableControl.CurrentDockingManager = sender as DockingManager; 

   Console.WriteLine("HostControl name : "+dockableControl.CurrentDockingManager.HostControl.Name);

}

{% endhighlight %}


{% highlight VB %}

'The `TransferringFromManager` event occurs when a dockable control hosted by this DockingManager is about to be transferred to the docking layout hosted by some other DockingManager.

Protected Sub DockingManager_TransferringFromManager(ByVal sender As Object, ByVal args As TransferManagerEventArgs)

   Console.WriteLine("Transferring From Manager Event has been raised")

   Dim dockableControl As DockableControlBase = CType(ConversionHelpers.AsWorkaround(args.Control, GetType(DockableControlBase)), DockableControlBase)

   dockableControl.CurrentDockingManager = CType(ConversionHelpers.AsWorkaround(sender, GetType(DockingManager)), DockingManager)

   Console.WriteLine("HostControl name : " + dockableControl.CurrentDockingManager.HostControl.Name)

End Sub

{% endhighlight %}

{% endtabs %}

## InitializeControlOnLoad event

The [InitializeControlOnLoad](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~InitializeControlOnLoad_EV.html) event occurs when the DockingManager is not able to locate a control when a [LoadDockState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~LoadDockState.html) call.

### Event data

The event handler receives an argument of type [InitializeControlOnLoadEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~InitializeControlOnLoad_EV.html) containing data related to this event. The following InitializeControlOnLoadEventArgs members provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ControlName](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.InitializeControlOnLoadEventArgs~ControlName.html)' | markdownify }}</td><td>
The Name property of the control</td></tr>
</table>

{% tabs %}

{% highlight C# %}

protected void DockingManager_InitializeControlOnLoad(object sender, InitializeControlOnLoadEventArgs args)
{

   Console.WriteLine("InitializeControlOnLoad Event is Raised for the Control : " +args.ControlName);

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

## ImageListChanged event

When the image list property is changed, [ImageListChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ImageListChanged_EV.html) event will be raised. Every docked control will have [SetDockIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetDockIcon.html) property to set the icons for the control. When this property is changed, the above event will be triggered.

{% tabs %}

{% highlight C# %}

//Occurs when the `ImageList` property changes

private void dockingManager1_ImageListChanged(object sender, System.EventArgs e)

{

   Console.WriteLine("ImageList Changed Event Is Triggered");

   //Here the code which set the Docking Icon dynamically.

   dockingManager1.SetDockIcon(this.panel1,0);

   dockingManager1.SetDockIcon(this.panel2,1);

}
{% endhighlight %}


{% highlight VB %}

'Occurs when the `ImageList` property changes

Private Sub dockingManager1_ImageListChanged(ByVal sender As Object, ByVal e As System.EventArgs)

   Console.WriteLine("ImageList Changed Event Is Triggered")

   'Here the code which set the Docking Icon dynamically.

   dockingManager1.SetDockIcon(Me.panel1, 0)

   dockingManager1.SetDockIcon(Me.panel2, 1)

End Sub

{% endhighlight %}

{% endtabs %}

## ProvideGraphicsItems event

The [ProvideGraphicsItems](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ProvideGraphicsItems_EV.html) event raised whenever a dockable control's caption needs to be painted. The background, foreground and font of the docked control's caption can be customized by using this event. The docked control name, which is to be painted can be displayed using the control property.

### Event data

The event handler receives an argument of type [ProvideGraphicsItemsEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs.html) containing data related to this event. The following ProvideGraphicsItemsEventArgs members provide information specific to this event.

<table>
<tr>
<th>
 Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CaptionBackground](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs~CaptionBackground.html)' | markdownify }}</td><td>
Gets or sets the brush to be used for drawing the caption background</td></tr>
<tr>
<td>
{{ '[CaptionBounds]
(https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs~CaptionBounds.html)' | markdownify }}</td><td>
Gets the bounds of the caption</td></tr>
<tr>
<td>
{{ '[CaptionFont](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs~CaptionFont.html)' | markdownify }}</td><td>
Gets or sets the font to be used for the caption text</td></tr>
<tr>
<td>
{{ '[CaptionForeground](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs~CaptionForeground.html)' | markdownify }}</td><td>
Gets or sets the color to be used for drawing the caption text and buttons</td></tr>
<tr>
<td>
{{ '[Control](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs~Control.html)' | markdownify }}</td><td>
Gets the dockable control for which the caption is being drawn</td></tr>
<tr>
<td>
{{ '[IsActiveCaption](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs~IsActiveCaption.html)' | markdownify }}</td><td>
Gets the active / inactive state of the docking window</td></tr>
</table>

N> If the control is in floating state, [DockingManager.ProvideGraphicsItems]([ProvideGraphicsItems](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~ProvideGraphicsItems_EV.html)) event will not get triggered.

{% tabs %}

{% highlight C# %}

private void dockingManager1_ProvideGraphicsItems(object sender, Syncfusion.Windows.Forms.Tools.ProvideGraphicsItemsEventArgs arg)

{

   Console.WriteLine("ProvideGraphicsItems Event Raised"+ i++);

   // Caption Background uses the Brush for Drawing on the caption bar

   arg.CaptionBackground=new LinearGradientBrush(arg.CaptionBounds, Color.Transparent , Color.White, (float)0);

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

## ProvidePersistenceID event

This event lets you specify a unique ID to distinguish the persistence information of different instances of the Form type.

### Event data

The event handler receives an argument of type [ProvidePersistenceIDEventArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ProvidePersistenceIDEventArgs.html) containing data related to this event. The following ProvidePersistenceIDEventArgs members provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[PersistenceID](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ProvidePersistenceIDEventArgs~PersistenceID.html)' | markdownify }}</td><td>
Lets you specify a unique ID</td></tr>
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

