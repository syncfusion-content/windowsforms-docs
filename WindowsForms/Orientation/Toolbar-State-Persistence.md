---
layout: post
title: Toolbar-State-Persistence
description: toolbar state persistence
platform: windowsforms
control: Orientation
documentation: ug
---

# Toolbar State Persistence

Toolbar state can be saved in two ways.

* Automatic serialization of Tool bar position.
* It can be read/written to different media such as the default Isolated Storage, XML file, XML stream, Binary file, Binary stream and the Windows Registry.

If this is a MainFrameBarManager, the toolbar's positions will be retained during run-time. If it is a ChildFrameBarManager, then the toolbar's positions will be docked to the top border of the main frame.

N> This is true, only when your application is run for the first time and subsequent invocations will use the user's latest settings, if the persisting toolbar position is turned on.

The position of the toolbar and the customization applied by the user are stored in the user system's Isolated Storage.

You can turn on/off default persistence through the BarManager's AutoLoadToolbarPositions and EnableCustomizing properties. 

![](Toolbar-State-Persistence_images/Toolbar-State-Persistence_img2.jpeg)



We can customize the toolbar at run time and it can be stored by setting AutoLoadToolBarPositions property to true. The following screen shot displays the Toolbar customization at run time where BarItem "Open" is removed.

![](Toolbar-State-Persistence_images/Toolbar-State-Persistence_img3.jpeg)



Close the application and again run the same application. The removed MenuBarItem "Open" is sustained. The following screen shot illustrates this.

![](Toolbar-State-Persistence_images/Toolbar-State-Persistence_img4.jpeg)



### Save / Load the Bar Information

ToolBar Persistence can be done by using the below given properties and methods.

_Table_ _516_: Property Table

<table>
<tr>
<th>
MainFrameBarManager Property </th><th>
Description</th></tr>
<tr>
<td>
AutoLoadToolBarPositions</td><td>
Indicates whether to automatically load the persisted toolbar positions when the application is restarted.</td></tr>
<tr>
<td>
AutoPersistCustomization</td><td>
Indicates whether to persist and load user-customized info from/to isolated storage.</td></tr>
<tr>
<td>
AutoSaveCustomData</td><td>
Gets or Sets a value indicating whether to automatically save user's customization data (new Bars/BarItems added/removed at runtime), when customization target form is closed.</td></tr>
<tr>
<td>
AutoLoadCustomData</td><td>
Gets or Sets a value indicating whether to automatically load user's customization data (new Bars/BarItems added/removed at runtime), when customization target form is activating. </td></tr>
</table>
_Table_ _517_: Methods Table

<table>
<tr>
<th>
MainFrameBarManager Methods</th><th>
Description</th></tr>
<tr>
<td>
SaveBarState</td><td>
Saves the current toolbars/menus state information to the specified persistence medium.</td></tr>
<tr>
<td>
LoadBarState</td><td>
Reads the previously serialized toolbar/menus states.</td></tr>
<tr>
<td>
SaveCustomData</td><td>
Saves the user customized information such as save/load custom baritems, which were created and added during application runtime.</td></tr>
<tr>
<td>
LoadCustomData</td><td>
Loads the user customized information that was saved previously.</td></tr>
</table>


The Bar State can be saved/loaded using AppStateSerializer class and it can be used across multiple applications.

The default serialization option is Isolated storage and the System.IO.IsolatedStorage routines normally store application specific encrypted entries under the 'C:\Documents and Settings\[USER name]\Local Settings\Application Data\IsolatedStorage\’ folder. All of the Essential Tools framework components use the 'Syncfusion.Runtime.Serialization. AppStateSerializer' class in the Shared library for Read/Write. The AppStateSerializer is fully documented and can be initialized for different persistence mediums such as XML / Binary files, XML / Binary streams, and the Win32 Registry using its API.

The Bar States can be serialized in the following formats.

* Binary Format
* MemoryStream
* XML format
* Isolated Storage and
* WindowsRegistry

#### Persisting Bar state in Binary Format

To serialize in Binary Format, use the following code.

{% highlight c# %}



using Syncfusion.Runtime.Serialization;



//Save Bar State in Binary format

//You can also use BinaryFmtStream instead of Binaryfile

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.BinaryFile,"Barstate");

this.mainFrameBarManager1.SaveBarState(app);

app.PersistNow ();



//Load Bar State in Binary format

//You can also use BinaryFmtStream instead of Binaryfile

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.BinaryFile,"Barstate");

this.mainFrameBarManager1.LoadBarState(app);

{% endhighlight %}



{% highlight vbnet %}



Imports Syncfusion.Runtime.Serialization



'Save Bar State in Binary format

'You can also use BinaryFmtStream instead of Binaryfile

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.BinaryFile, "Barstate")

Me.mainFrameBarManager1.SaveBarState(app)

app.PersistNow ()



'Load Bar State in Binary format

'You can also use BinaryFmtStream instead of Binaryfile

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.BinaryFile, "Barstate")

Me.mainFrameBarManager1.LoadBarState(app)

{% endhighlight %}

#### Persisting Bar State in Memory Stream

To persist the information in a database, we need to serialize the state into a memory stream. After which the stream is written into the database. The field to where the bar state is saved is binary.

Storing State

{% highlight c# %}



// Saving Bar state to memory stream  

MemoryStream ms = new MemoryStream();

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.mainFrameBarManager1.SaveBarState(aser);

aser.PersistNow();

{% endhighlight %}

{% highlight vbnet %}



' Saving Bar state to memory stream  

Dim ms As MemoryStream = New MemoryStream()

Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.mainFrameBarManager1.SaveBarState(aser) 

aser.PersistNow() 

{% endhighlight %}

#### Persisting Bar state in XML Format

By default, the bar state will be stored into the default persistence medium, 'IsolatedStorage'. To store the dock state to some other medium like XML, it could be done as follows:

{% highlight c# %}



using Syncfusion.Runtime.Serialization;



//Save Bar State in XML format

//You can also use XMLFmtStream instead of XMLfile

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.XMLFile,"Barstate");

this.mainFrameBarManager1.SaveBarState(app);

app.PersistNow ();



//Load Bar State in XML format

//You can also use XMLFmtStream instead of XMLfile

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.XMLFile,"Barstate");

this.mainFrameBarManager1.LoadBarState(app);

{% endhighlight %}

{% highlight vbnet %}



Imports Syncfusion.Runtime.Serialization



'Save Bar State in XML format

'You can also use XMLFmtStream instead of XMLfile

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.XMLFile, "Barstate")

Me.mainFrameBarManager1.SaveBarState(app)

app.PersistNow ()



'Load Bar State in XML format

'You can also use XMLFmtStream instead of XMLfile

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.XMLFile, "Barstate")

Me.mainFrameBarManager1.LoadBarState(app)

{% endhighlight %}

#### Persisting Bar state in Isolated Storage

To serialize in Isolated Storage medium, use the below code.

{% highlight c# %}



using Syncfusion.Runtime.Serialization;



//Save Bar State in Isolated storage

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.IsolatedStorage,"Barstate");

this.mainFrameBarManager1.SaveBarState(app);

app.PersistNow ();



//Load Bar State in Isolated storage

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.IsolatedStorage,"Barstate");

this.mainFrameBarManager1.LoadBarState(app);

{% endhighlight %}

{% highlight vbnet %}



Imports Syncfusion.Runtime.Serialization



'Save Bar State in Isolated storage

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.IsolatedStorage, "Barstate")

Me.mainFrameBarManager1.SaveBarState(app)

app.PersistNow ()



'Load Bar State in Isolated storage

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.IsolatedStorage, "Barstate")

Me.mainFrameBarManager1.LoadBarState(app)

{% endhighlight %}

#### Persisting Bar state in WindowsRegistry

To serialize in the WindowsRegistry, using the below code snippets.

{% highlight c# %}



using Syncfusion.Runtime.Serialization;



//Save Bar State in Windows Registry

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.WindowsRegistry,"Barstate");

this.mainFrameBarManager1.SaveBarState(app);

app.PersistNow ();



//Load Bar State in Windows Registry

AppStateSerializer app=new AppStateSerializer (Syncfusion.Runtime.Serialization.SerializeMode.WindowsRegistry,"Barstate");

this.mainFrameBarManager1.LoadBarState(app);

{% endhighlight %}

{% highlight vbnet %}



Imports Syncfusion.Runtime.Serialization



'Save Bar State in Windows Registry

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.WindowsRegistry, "Barstate")

Me.mainFrameBarManager1.SaveBarState(app)

app.PersistNow ()



'Load Bar State in Windows Registry

Private app As AppStateSerializer = New AppStateSerializer(Syncfusion.Runtime.Serialization.SerializeMode.WindowsRegistry, "Barstate")

Me.mainFrameBarManager1.LoadBarState(app)

{% endhighlight %}

## Visual Inheritance Support

XP Menus supports Visual Inheritance during design-time, which means you can set up XP Menus in a form and also continue to set up in the form derived from it. The corresponding components like the BarManager and toolbar should however be protected or public for this to be supported. In the derived form's designer, you can add new bar items to the bar manager and then add these items to the toolbar, submenu etc.

These are things you can do in a derived form in Visual Inheritance mode.

* Add new BarItems created in the derived form to any toolbar, ParentBarItem, anywhere.
* Reposition the existing BarItems within a toolbar or ParentBarItem.
* Remove an existing group setting and add a new group setting.

These are the limitations of Visual Inheritance mode.

* Cannot add menu items created in a base form to any bars/submenus in a derived form.
* When the items in a base form's toolbar/submenu are repositioned, any previous repositioning that occurred in the derived form will be lost and the results may be unpredictable.

## UI Command Update Patterns


The UI Command Update mechanism can be defined as the way in which, an application updates the state of the UI elements (BarItems in this case), as the state of the application changes.

Different frameworks support different ways of UI state update mechanism. Each has its own merits and demerits and each one is appropriate in some scenarios and not so in the other.

The XP Menus framework supports multiple patterns of UI Command Update mechanism, which are discussed below.

* Supply-Push Approach

In this approach, the state of the BarItem is changed as and when the corresponding application state changes. This is what the XP Menus framework expects you to do by default; it will not commence the UpdateUI event under any circumstances. 

* Demand-Pull Approach

This approach can be difficult, as it is sometimes cumbersome to keep track of state changes in the application and update the UI state appropriately. 

So, the framework provides two other alternative ways to update the BarItem states.

Fast Updates 

If updating the BarItem states is a trivial operation, use this approach, which is also how MFC does it. In this approach, the UpdateUI event will be called when the ParentBarItem hosting this BarItem is dropped-down, when the BarItem is hosted in a toolbar and when the application goes into an idle state or when a shortcut corresponding to this item is about to be processed. You can turn on this behavior throughout the menu structure by setting the BarManager.UpdateUIMFCStyle to True. For XPToolbars and ParentBarItems that are outside the scope of a BarManager, set the UpdateUIMFCStyle property in those instances explicitly. 

{% highlight c# %}

this.mainFrameBarManager1.UpdateUIMFCStyle = true;

{% endhighlight %}


{% highlight vbnet %}

Me.mainFrameBarManager1.UpdateUIMFCStyle  = True

{% endhighlight %}

### Slow Updates 

If updating the BarItem states is not a trivial operation, then use this approach. In this approach, turn on the UpdateUIOnAppIdle property of the BarItem whose state has changed one or more times and the framework will then initiate its UpdateUI event the next time the application goes into an idle state.

{% highlight c# %}

this.barItem1.UpdateUIOnAppIdle = true;

{% endhighlight %}

{% highlight vbnet %}

Me.barItem1.UpdateUIOnAppIdle = True

{% endhighlight %}

{% seealso %}

UpdateUI Event

{% endseealso %}
