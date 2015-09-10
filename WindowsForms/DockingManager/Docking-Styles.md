---
layout: post
title: Docking-Styles | WindowsForms | Syncfusion
description: docking styles
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Docking Styles

This section will discuss the below four docking styles.

* Docking - Lets you dock the control on any of the four sides of the container control.
* Tabbed Docking - Lets you tab two or more controls.
* Floating - Floats the dockable control.
* AutoHiding - Auto hides the dockable controls and displays as autohidden tabs.

## Docking


Docked control can be docked to any of the four sides of the container control, i.e., to Left, Right, Top and Bottom. DockingManager lets you specify the type of docking and the bounds of the docked control using the DockControl method. This method also sets [Tabbed style](windowsforms/dockingmanager/docking-styles#tabbed-docking) for the controls.

{% highlight C# %}




// Tab the docked controls

this.dockingManager.DockControl(this.listBox1, this.listBox2,Syncfusion.Windows.Forms.Tools.DockingStyle.Left,200,true);

{% endhighlight %}





{% highlight vbnet %}


' Tab the docked controls

Me.dockingManager.DockControl(Me.listBox1, Me.listBox2,Syncfusion.Windows.Forms.Tools.DockingStyle.Left,200,True)
{% endhighlight %}


 ![](Docking-Styles_images/Docking-Styles_img1.jpeg) 



At runtime, docking style can be selected easily using the [context menu](/windowsforms/dockingmanager/runtime-features#context-menu).

 ![](Docking-Styles_images/Docking-Styles_img2.jpeg) 




N> At run time, docking style can also be set with the help of Dock Arrows provided by the DragProviderStyle property.

## Tabbed Docking

This section will discuss how the docked controls inside a container can be tabbed.

### At Design Time

The docked controls can be tabbed in the designer, by just dragging and dropping into one another. DockingManager helps you in doing this using different [DragProviderStyle](/windowsforms/dockingmanager/special-features#dock-arrow-settings).

 ![](Docking-Styles_images/Docking-Styles_img4.jpeg) 



### At RunTime

DockingManager helps you in dragging and dropping the docked controls at run time, using different [DragProviderStyle](/windowsforms/dockingmanager/special-features#dock-arrow-settings). This styles display prediction Bands, which lets you decide whether you can drop the control in that location.

 ![](Docking-Styles_images/Docking-Styles_img5.jpeg) 



### Runtime Example

The below code lets you tab two docked controls (Panel1 and Panel2).

{% highlight C# %}





this.dockingManager.DockControl(this.Panel1, this.Panel2, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200, true);
{% endhighlight %}

{% highlight vbnet %}





Me.dockingManager.DockControl(Me.Panel1, Me.Panel2, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200, True)
{% endhighlight %}



N> In the Tabbed style, the control is docked as a tabbed window along with the dock target. This style is not applicable when the dock target is the host form / user control.

### Context Menu for Tabbed Controls

The tabbed control can display context menu when the user right clicks on the tabs. See [Context Menu](/windowsforms/dockingmanager/runtime-features#context-menu).

Aligning the Tabs

The alignment of the tabs can be specified using DockTabAlignment property.

<table>
<tr>
<th>
DockingManager Property</th><th>
Description</th></tr>
<tr>
<td>
DockTabAlignment</td><td>
Property which sets the value indicating the alignment of the dock tabs. The different alignment options are,Top, Bottom, Left and Right.</td></tr>
</table>



N> This property can also be set easily using Task Window.





{% highlight C# %}



this.dockingManager.DockTabAlignment = Syncfusion.Windows.Forms.Tools.DockTabAlignmentStyle.Right;

{% endhighlight %}





{% highlight vbnet %}


Me.dockingManager.DockTabAlignment = Syncfusion.Windows.Forms.Tools.DockTabAlignmentStyle.Right
{% endhighlight %}


 ![](Docking-Styles_images/Docking-Styles_img8.jpeg) 



### Methods related to Tabbed Docking


<table>
<tr>
<th>
DockingManager Property</th><th>
Description</th></tr>
<tr>
<td>
IsSameTabbedGroup</td><td>
Determines whether the second control is under the same group of the first control.Ctrl1 - Indicates the first control.Ctrl2 - Indicates the second control.</td></tr>
<tr>
<td>
GetTabPosition</td><td>
Returns the tab position of the specified control among a tab group. An integer value will be returned indicating the tab position. The parameter is,Ctrl - Indicates the docking window.</td></tr>
<tr>
<td>
GetTabbedSiblings</td><td>
Returns all the siblings of the specified control in a tabbed group or it returns the array of controls which are tabbed with the given control. The parameters are,Ctrl - Instance of control whose tabbed siblings are to be returned.</td></tr>
<tr>
<td>
IsTabbed</td><td>
Returns whether the specified control is tabbed or not. The parameter is,Ctrl - Indicates the docking window.</td></tr>
</table>



{% highlight C# %}



this.dockingManager.IsSameTabbedGroup(this.listBox1,this.checkedListBox1);

this.dockingManager1.GetTabPosition(this.listBox1);

this.dockingManager1.GetTabbedSiblings(this.listView1);

this.dockingManager1.IsTabbed(this.listBox1);

{% endhighlight %}



{% highlight vbnet %}


Me.dockingManager.IsSameTabbedGroup(this.listBox1,this.checkedListBox1)

Me.dockingManager1.GetTabPosition(Me.listBox1)

Me.dockingManager1.GetTabbedSiblings(Me.listView1)

Me.dockingManager1.IsTabbed(this.listBox1)
{% endhighlight %}

{% seealso %}

[Getting Started](/windowsforms/dockingmanager/getting-started),[ DockAllow Event](/windowsforms/dockingmanager/docking-events#docking),[ Dock Arrow Settings](/windowsforms/dockingmanager/special-features#dock-arrow-settings)

{% endseealso %}

## Floating

### Floating a Control

The FloatControl method enables the end users to float a particular control. Using this method, we can float a single control even if it is tabbed with many controls.



{% highlight C# %}


Rectangle rcfrm = this.Bounds;

this.dockingManager.FloatControl(this.listBox1, new Rectangle(rcfrm.Right+25,rcfrm.Bottom-150,175,200));

{% endhighlight %}



{% highlight vbnet %}


Dim rcfrm As Rectangle = Me.Bounds

Me.dockingManager.FloatControl(Me.listBox1, New Rectangle(rcfrm.Right+25,rcfrm.Bottom-150,175,200))
{% endhighlight %}


![](Docking-Styles_images/Docking-Styles_img9.jpeg) 



### DisallowFloating

By enabling the DisallowFloating property, a control can be dragged and redocked to the host form, but cannot be floated.


<table>
<tr>
<th>
DockingManager Property</th><th>
Description</th></tr>
<tr>
<td>
DisallowFloating</td><td>
Property which sets value indicating whether the docked controls are allowed to float or not.</td></tr>
</table>




{% highlight C# %}



this.dockingManager1.DisallowFloating = true;
{% endhighlight %}


{% highlight vbnet %}





Me.dockingManager1.DisallowFloating = True

{% endhighlight %}

{ ![](Docking-Styles_images/Docking-Styles_img10.jpeg) 



### Floating State to Docking State and Vice Versa

Setting EnableDoubleClickOnCaption property to true, lets you dock or float the control by just double clicking on the captions of the docked control. By default it is true.

{% seealso %}
 
[Nested Docking and Floating](/windowsforms/dockingmanager/advanced-features#nested-docking-and-floating), How to make a docked control Floating Only?,

How to float a single control even if it is tabbed to many controls?, How to find out whether a docked control is floating or not?,

How to get individual floating controls properties?

{% endseealso %}

## OnCaptionDoubleClick Event:

The OnCaptionDoubleClick event occurs when you double-click on a dockable control or a docked control caption. This event is triggered when Docking Manager EnableDoubleClickOnCaption property is set to _“false”_. It displays the control name which is currently active.

### Event Data

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




{% highlight vbnet %}


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

## AutoHiding

Docking manager provides auto hide facility to the docked control. When the auto hide button (looks like a bell) is clicked, the docked controls will be hidden, and will be placed along the side of the container control on which it was placed. When mouse is moved over it, the auto hidden control will be displayed and the control will restore its appearance when the auto hidden button is clicked again.

The below image displays an autohidden docked control.

 ![](Docking-Styles_images/Docking-Styles_img11.jpeg) 



The below properties controls the autohiding feature of the docked controls.

<table>
<tr>
<th>
DockingManager Property</th><th>
Description</th></tr>
<tr>
<td>
AutoHideActiveControl</td><td>
Gets or sets a value indicating whether to slide back selected auto hidden control.</td></tr>
<tr>
<td>
AutoHideInterval</td><td>
Specifies the time interval for showing or hiding an autohidden control.</td></tr>
<tr>
<td>
AutoHideSelectionStyle</td><td>
Specifies the selection style for the autohidden windows. The styles are,MouseHover - Allows the user to select an autohidden tab by mouse hovering over the tab. Click - Allows the user to select the autohidden tab by clicking on the tab.</td></tr>
</table>



{% highlight C# %}



this.dockingManager1.AutoHideActiveControl = true;

this.dockingManager1.AutoHideInterval = 500;

this.dockingManager1.AutoHideSelectionStyle = Syncfusion.Windows.Forms.Tools.AutoHideSelectionStyle.Click;

{% endhighlight %}



{% highlight vbnet %}


Me.dockingManager1.AutoHideActiveControl = True

Me.dockingManager1.AutoHideInterval = 500

Me.DockingManager1.AutoHideSelectionStyle = Syncfusion.Windows.Forms.Tools.AutoHideSelectionStyle.Click
{% endhighlight %}

### Displaying Full Caption In AutoHide Mode

Create a docked window with two listbox. Dock the controls. Tab the controls and set the FullCaptionInAutoHideMode property. Setting this property to true, will display the full caption text in the auto hidden tabgroup's page. It displays full caption within the application if necessary with a scrollbar, so that end user can scroll and view the hidden tab's full caption.


{% highlight C# %}



this.dockingManager1.FullCaptionsInAutoHideMode = true;

{% endhighlight %}




{% highlight vbnet %}


Me.dockingManager1.FullCaptionsInAutoHideMode = True

{% endhighlight %}

 ![](Docking-Styles_images/Docking-Styles_img12.jpeg) 



![](Docking-Styles_images/Docking-Styles_img13.jpeg) 



Animation in Auto Hiding is discussed in Auto Hide Animation Speed topic and Dragging Autohidden tabs topic discusses how to drag the autohidden tabs.

{% seealso %}

[Context Menu](/windowsforms/dockingmanager/runtime-features#context-menu), Animation Events, AutoHide TabContextMenu Event, How to autohide a control when an application loads

{% endseealso %}

### Auto Hide Animation Speed

DockingPanel allows you to change the speed at which your docking panes are displayed or auto hidden. You can easily change the delay of the auto hide windows as fast or as slow as you want, so that your window will hide / show at the perfect speed.

The speed of animation can be controlled by AnimationSpeed and AnimationStep Property. 

AnimationSpeed property of the DockingManager indicates the speed of animation during auto hide or the timer interval in milli secs. AnimationStep indicates the step value for the animation. It is common to all the docked control. AnimationStep property can be implemented using the code below.


{% highlight C# %}




//arg.Bounds give the bounds of the autohidden control as a rectangle object. 

DockingManager.AnimationStep = 1000;  //(arg.Bounds.Width)
{% endhighlight %}





{% highlight vbnet %}


'arg.Bounds give the bounds of the autohidden control as a rectangle object. 

DockingManager.AnimationStep = 1000;  '(arg.Bounds.Width)
{% endhighlight %}


N> For a control to show animation in autohide mode, the animation step value should be more than the width of the particular hidden control.

### Context Menu for AutoHidden Tabs

This is discussed in [Context Menu](/windowsforms/dockingmanager/runtime-features#context-menu) topic.

### Dragging Autohidden tabs

The docked controls that are autohidden, can be dragged with their tabs, and can be docked or set to floating by setting EnableDragAutoHiddenTabs property to true.


{% highlight C# %}



this.dockingManager1.EnableDragAutoHiddenTabs = true;
{% endhighlight %}





{% highlight vbnet %}


Me.dockingManager1.EnableDragAutoHiddenTabs = True

{% endhighlight %}

