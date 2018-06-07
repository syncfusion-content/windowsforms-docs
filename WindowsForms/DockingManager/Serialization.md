---
layout: post
title: State-Persistence | WindowsForms | Syncfusion
description: state persistence
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# State Persistence 

State persistence is the combined process of serialization and deserialization. DockingManager provides built-in state persistence functionality to save and load layout. Layout of the Dock panels which hold the state, side, position and visibility of each child. This layout information can be stored to isolated storage, an xml or binary file.  

## Auto serialization

DockingManager supports AutoSave which allows to persist its state automatically. To enable this functionality, set the [PersistState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~PersistState.html) property as `true`. The default value of the PersistState property is `false`.

{% tabs %}

{% highlight C# %}

this.dockingManager1.PersistState = true;

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.PersistState = True

{% endhighlight %}

{% endtabs %}

## Persisting dock state in default storage

DockingManager saves the state of the DockingManager in an isolated storage format while WindowClosing.

### Save State

To save the AutoPersist state of the DockingManager, call the [SaveDockState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SaveDockState.html) function of the DockingManager in its closing event.

<table>
<tr>
<td>
Functions<br/><br/></td><td>
Description<br/><br/></td></tr>
<tr>
<td>
SaveDockState<br/><br/></td><td>
Saves the current dock state to Isolated Storage<br/><br/></td></tr>
<tr>
<td>
SaveDockState(AppStateSerializer serializer)<br/><br/></td><td>
Saves the current dock state information to the specified AppStateSerializer. Parameter is,Serializer - An instance of AppStateSerializer class<br/><br/></td></tr>
<tr>
<td>
SaveDockState(AppStateSerializer serializer, Control ctrl)<br/><br/></td><td>
Saves the dock state information for the specified dockable control. The parameters are, Serializer - An instance of AppStateSerializer class.Control - Indicates the docked control<br/><br/></td></tr>
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

### Load State

To load the AutoPersist state of the DockingManager, call the [LoadDockState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~LoadDockState.html) function of the DockingManager in its loaded event.

<table>
<tr>
<td>
Functions<br/><br/></td><td>
Description<br/><br/></td></tr>
<tr>
<td>
LoadDockState<br/><br/></td><td>
Reads the persisted dock state from the Isolated Storage<br/><br/></td></tr>
<tr>
<td>
LoadDockState(AppStateSerializer serializer)<br/><br/></td><td>
Reads a previously serialized dock state using the AppStateSerializer object. Parameter is, Serializer - An instance of AppStateSerializer class<br/><br/></td></tr>
<tr>
<td>
LoadDockState(AppStateSerializer serializer, Control ctrl)<br/><br/></td><td>
Reads a previously serialized dock state for the specified dockable control and applies the new state. The parameters are, Serializer - An instance of AppStateSerializer class.Ctrl - Indicates the docked control<br/><br/></td></tr>
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

## Serialize dock state as xml

When the DockingManager [PersistState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~PersistState.html) property is set, it will save the dock state into default persistence medium ‘IsolatedStorage’. To store the dock state to some other medium like XML, it could be done as follows:

{% tabs %}

{% highlight C# %}


using Syncfusion.Runtime.Serialization;

// Persist the dock state into XML File named Dock1.xml. Use this line in the constructor of Control which hosts the docking layout 

public form1()

{ 

AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile,"Dock1"); 

}
{% endhighlight %}


{% highlight VB %}


Imports Syncfusion.Runtime.Serialization

' Persist the dock state into XML File named Dock1.xml.Use this line in the constructor of Control which hosts the docking layout 

Private Sub New()

     AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile, "Dock1")

End Sub()

{% endhighlight %}

{% endtabs %}

## Serialize dock state in memory stream

To persist docking information in a database, we need to serialize the state into a memory stream. After which the stream is written into the database. The field to where the dock state is saved is binary.

*Storing State*

{% tabs %}

{% highlight C# %}


// Saving dock state to memory stream  

MemoryStream ms = new MemoryStream();

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();

//Code to store the memory stream into database. Depends upon the database.

{% endhighlight %}


{% highlight VB %}


' Saving dock state to memory stream  

Dim ms As MemoryStream = New MemoryStream()

Dim serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.SaveDockState(serializer) 

serializer.PersistNow() 

'Code to store the memory stream into database. Depends upon the database.


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

// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "MyFile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();


// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "MyFile");

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}


{% highlight VB %}


' To Save

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "MyFile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()


' To Load

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "MyFile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}


## Serialization in Isolated Storage medium

{% tabs %}

{% highlight C# %}


// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();


// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile");

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}


{% highlight VB %}


' To Save

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()


' To Load

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "MyFile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}

Calling the [GetSerializedControls](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~GetSerializedControls.html) function will return the serialized control collection enumerator in the specified serializer. This can be done through code as follows.

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

## Serialization / de-serialization for a particular control

In the `DockingManager`, you can perform serialization / de-serialization for a particular control by using its functions, [SaveDockState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SaveDockState.html) and [LoadDockState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~LoadDockState.html).

{% tabs %}

{% highlight C# %}

//Saves DockState for specific controls.

this.dockingManager1.SaveDockState(serialize, this.panel1);

serialize.PersistNow();

//Loads the DockState for specific controls.

this.dockingManager1.LoadDockState(serialize, this.panel1);

{% endhighlight %}


{% highlight VB %}

'Saves DockState for specific controls.

Me.dockingManager1.SaveDockState(serialize, Me.panel1)

serialize.PersistNow()

'Loads the DockState for specific controls.

Me.dockingManager1.LoadDockState(serialize, Me.panel1)

{% endhighlight %}

{% endtabs %}

## Restore to initial state

The [LoadDesignerDockState](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~LoadDesignerDockState.html) function of DockingManager is used to restore the initial windows form designer state of the docking window. 

{% tabs %}

{% highlight C# %}

this.dockingManager1.LoadDesignerDockState();

{% endhighlight %}


{% highlight VB %}

Me.dockingManager1.LoadDesignerDockState()

{% endhighlight %}

{% endtabs %}

## Serialize dynamically added children

By default, DockingManager cannot deserialize its Saved Layout properly, when its child collection is modified after DockState is saved.

Since the DockingManager state persistence feature implemented in such a way that the DockingManager matches the child collection of saved layout with current DockingManager layout internally and loads properly when DockingManager children collection remains same. DockingManager results in improper layout when any child collection changes dynamically.

N> A sample that demonstrates Serialization support is available in the following sample installation path:
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Docking Manager\StatePersistence