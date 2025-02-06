---
layout: post
title: Serialization in Windows Forms Docking Manager control | Syncfusion®
description: Learn about Serialization support in Syncfusion® Windows Forms Docking Manager control and more details.
platform: windowsforms
control: DockingManager 
documentation: ug
---

# Serialization in Windows Forms Docking Manager

State persistence is the combined process of serialization and deserialization. Docking manager provides built-in state persistence functionality to save and load the layout. Layout of the dock panels hold the state, side, position, and visibility of each child. This layout information can be stored in isolated storage, an XML, or binary file.  

## Auto serialization

Docking manager supports AutoSave that allows to persist its state automatically. To enable this functionality, set the [PersistState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_PersistState) property to `true`. The default value of the PersistState property is `false`.

{% tabs %}

{% highlight C# %}

this.dockingManager1.PersistState = true;

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.PersistState = True

{% endhighlight %}

{% endtabs %}

## Persisting dock state in default storage

Docking manager saves the dock state in an isolated storage format while WindowClosing.    

### Save state

To save the AutoPersist state of docking manager, call the [SaveDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_SaveDockState) function in its closing event. 

<table>
<tr>
<td>
Functions<br/><br/></td><td>
Description<br/><br/></td></tr>
<tr>
<td>
SaveDockState<br/><br/></td><td>
Saves the current dock state to isolated storage.<br/><br/></td></tr>
<tr>
<td>
SaveDockState(AppStateSerializer serializer)<br/><br/></td><td>
Saves the current dock state information to the specified AppStateSerializer. Parameter is serializer that is an instance of AppStateSerializer class.<br/><br/></td></tr>
<tr>
<td>
SaveDockState(AppStateSerializer serializer, Control ctrl)<br/><br/></td><td>
Saves the dock state information for the specified dockable control. The parameters are serializer that is an instance of AppStateSerializer class, and control that indicates the docked control.<br/><br/></td></tr>
</table>

{% tabs %}

{% highlight C# %}


this.dockingManager1.SaveDockState();

this.dockingManager1.SaveDockState(serializer);

this.dockingManager1.SaveDockState(serializer, this.listBox1);

{% endhighlight %}


{% highlight VB %}


Me.dockingManager1.SaveDockState()

Me.dockingManager1.SaveDockState(serializer)

Me.dockingManager1.SaveDockState(serializer, this.listBox1)

{% endhighlight %}

{% endtabs %}

### Load state

To load the AutoPersist state of the docking manager, call the [LoadDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_LoadDockState) function in its loaded event.

<table>
<tr>
<td>
Functions<br/><br/></td><td>
Description<br/><br/></td></tr>
<tr>
<td>
LoadDockState<br/><br/></td><td>
Reads the persisted dock state from the isolated storage.<br/><br/></td></tr>
<tr>
<td>
LoadDockState(AppStateSerializer serializer)<br/><br/></td><td>
Reads a previously serialized dock state using the AppStateSerializer object. The parameter is a serializer, which is an instance of AppStateSerializer class.<br/><br/></td></tr>
<tr>
<td>
LoadDockState(AppStateSerializer serializer, Control ctrl)<br/><br/></td><td>
Reads a previously serialized dock state for the specified dockable control and applies the new state. The parameters are serializer and control. Serializer is an instance of AppStateSerializer class, and control indicates the docked control.<br/><br/></td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.dockingManager1.LoadDockState();

this.dockingManager1.LoadDockState(serializer);

this.dockingManager1.LoadDockState(serializer, this.listBox1);

{% endhighlight %}


{% highlight VB %}


Me.dockingManager1.LoadDockState(serializer)

Me.dockingManager1.LoadDockState();

Me.dockingManager1.LoadDockState(serializer, this.listBox1)

{% endhighlight %}

{% endtabs %}

## Serialize dock state as XML

When the docking manager [PersistState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_PersistState) property is set, it saves the dock state into default persistence medium ‘IsolatedStorage’. To store the dock state to some other medium like XML, it can be done as follows:

{% tabs %}

{% highlight C# %}


using Syncfusion.Runtime.Serialization;

// Persist the dock state into XML File named Dock1.xml. Use this line in the constructor of the control that hosts the docking layout. 

public form1()

{ 

AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile,"Dock1"); 

}
{% endhighlight %}


{% highlight VB %}


Imports Syncfusion.Runtime.Serialization

' Persist the dock state into XML File named Dock1.xml. Use this line in the constructor of the control that hosts the docking layout. 

Private Sub New()

     AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile, "Dock1")

End Sub()

{% endhighlight %}

{% endtabs %}

## Serialize dock state in memory stream

To persist docking information in a database, serialize the state into a memory stream. After serialized, the stream will be written in database. The field where the dock state will be saved is binary.
  
*Storing State*

{% tabs %}

{% highlight C# %}


// Saving dock state to memory stream  

MemoryStream ms = new MemoryStream();

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();

//Code to store the memory stream into database

{% endhighlight %}


{% highlight VB %}


' Saving dock state to memory stream  

Dim ms As MemoryStream = New MemoryStream()

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.SaveDockState(serializer) 

serializer.PersistNow() 

'Code to store the memory stream into database


{% endhighlight %}

{% endtabs %}


*Retrieving State*

{% tabs %}

{% highlight C# %}

//Code to retrieve data(stream) from database

MemoryStream ms = new MemoryStream(val);

ms.Position = 0;

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}

{% highlight VB %}

'Code to retrieve data(stream) from database

Dim ms As MemoryStream = New MemoryStream(value)

ms.Position = 0

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}

## Serialize dock state in binary format

{% tabs %}

{% highlight C# %}

// To save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "MyFile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();


// To load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "MyFile");

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}


{% highlight VB %}


' To save

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "MyFile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()


' To load

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "MyFile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}


## Serialization in isolated storage medium

{% tabs %}

{% highlight C# %}


// To save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();


// To load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile");

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}


{% highlight VB %}


' To save

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()


' To load

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}

Calling the [GetSerializedControls](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_GetSerializedControls_Syncfusion_Runtime_Serialization_AppStateSerializer_) function returns the serialized control collection enumerator in the specified serializer. This can be done using the following code.

<table>
<tr>
<th>
Parameter</th><th>
Description</th></tr>
<tr>
<td>
Serializer</td><td>
An instance of AppStateSerializer class.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.dockingManager1.GetSerializedControls(serializer);

Console.Write("Serialized controls :" + this.dockingManager1.GetSerializedControls(serializer));

{% endhighlight %}


{% highlight VB %}

Me.dockingManager1.GetSerializedControls(serializer)

Console.Write("Serialized controls :" + Me.dockingManager1.GetSerializedControls(serializer))

{% endhighlight %}

{% endtabs %}

## Serialization or de-serialization for a particular control

In the `docking manager`, you can perform serialization or de-serialization for a particular control by using its functions such as [SaveDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_SaveDockState) and [LoadDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_LoadDockState).

{% tabs %}

{% highlight C# %}

//Saves DockState for specific controls

this.dockingManager1.SaveDockState(serialize, this.panel1);

serialize.PersistNow();

//Loads the DockState for specific controls

this.dockingManager1.LoadDockState(serialize, this.panel1);

{% endhighlight %}


{% highlight VB %}

'Saves DockState for specific controls

Me.dockingManager1.SaveDockState(serialize, Me.panel1)

serialize.PersistNow()

'Loads the DockState for specific controls

Me.dockingManager1.LoadDockState(serialize, Me.panel1)

{% endhighlight %}

{% endtabs %}

## Restore to initial state

The [LoadDesignerDockState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DockingManager.html#Syncfusion_Windows_Forms_Tools_DockingManager_LoadDesignerDockState) function is used to restore the initial Windows Forms designer state of the docking window.

{% tabs %}

{% highlight C# %}

this.dockingManager1.LoadDesignerDockState();

{% endhighlight %}


{% highlight VB %}

Me.dockingManager1.LoadDesignerDockState()

{% endhighlight %}

{% endtabs %}

## Serialize dynamically added children

By default, the docking manager cannot deserialize its saved layout properly, when its child collection is modified after the DockState is saved.

Since the docking manager state persistence feature is implemented in such a way that it matches the child collection of saved layout with current layout internally and loads properly when the children collection remains same. It results in improper layout when any child collection changes dynamically.

N> Docking State persistence will be applied to active Docking Children. So it must to load dynamically added controls into DockingManager before applying Deserialization process.<br/> Find the sample with serialization support in the following location. 
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Docking Manager\StatePersistence
