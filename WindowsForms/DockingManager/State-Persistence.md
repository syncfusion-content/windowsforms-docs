---
layout: post
title: State-Persistence | WindowsForms | Syncfusion
description: state persistence
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# State Persistence 

State persistence is the combined process of serialization and deserialization.

DockingManager provides built-in state persistence functionality to save and load at different states and sides. 

## Persisting Dock State in default storage 

DockingManager supports AutoSave which allows to persist its state automatically. To enable this functionality, set the PersistState property as True. The default value of the PersistState property is False. It saves the state of the DockingManager in an isolated storage format while WindowClosing.

{% tabs %}

{% highlight C# %}

this.dockingManager1.PersistState = true;

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.PersistState = True

{% endhighlight %}

{% endtabs %}

## Auto Save / Load functionalities

### Load State

To load the AutoPersist state of the DockingManager, call the LoadDockState() method of the DockingManager in its loaded event.

<table>
<tr>
<td>
Methods<br/><br/></td><td>
Description<br/><br/></td></tr>
<tr>
<td>
LoadDockState<br/><br/></td><td>
Reads the persisted dock state from the Isolated Storage.<br/><br/></td></tr>
<tr>
<td>
LoadDockState (Overloaded)<br/><br/></td><td>
Reads a previously serialized dock state using the AppStateSerializer object. Parameter is, Serializer - An instance of AppStateSerializer class.<br/><br/></td></tr>
<tr>
<td>
LoadDockState (Overloaded)<br/><br/></td><td>
Reads a previously serialized dock state for the specified dockable control and applies the new state. The parameters are, Serializer - An instance of AppStateSerializer class.Ctrl - Indicates the docked control.<br/><br/></td></tr>
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

### Save State

To save the AutoPersist state of the DockingManager, call the SaveDockState() method of the DockingManager in its closing event.

<table>
<tr>
<td>
Methods<br/><br/></td><td>
Description<br/><br/></td></tr>
<tr>
<td>
SaveDockState<br/><br/></td><td>
Saves the current dock state to Isolated Storage.<br/><br/></td></tr>
<tr>
<td>
SaveDockState (Overloaded)<br/><br/></td><td>
Saves the current dock state information to the specified AppStateSerializer. Parameter is,Serializer - An instance of AppStateSerializer class.<br/><br/></td></tr>
<tr>
<td>
LoadDockState (Overloaded)<br/><br/></td><td>
Saves the dock state information for the specified dockable control. The parameters are, Serializer - An instance of AppStateSerializer class.Control - Indicates the docked control.<br/><br/></td></tr>
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

## Serialize the dynamically added children

By default, DockingManager cannot de-serialize its Saved Layout properly, when its child collection is modified after DockState is saved.

Since the DockingManager state persistence feature implemented in such a way that the DockingManager matches the child collection of saved layout with current DockingManager layout internally and loads properly when DockingManager children collection remains same, so when any child collection changes dynamically, it results in an improper layout.

## Various formats to Save / Load states

DockingManager allows to save and load the DockStates of windows in DockingManager in different format.

Some of the formats are:

* IsolatedStorage
* BinaryFormat
* XML file
* XmlWriter

### Persisting Dock state in XML file


When the DockingManager’s PersistState property is set, it will save the dock state into default persistence medium, ‘IsolatedStorage’. To store the dock state to some other medium like XML, it could be done as follows:


{% tabs %}

{% highlight C# %}


using Syncfusion.Runtime.Serialization;

// Persist the dock state into XML File named Dock1.xml. Use this line in the constructor of Control which hosts the dockinglayout 

public form1()

{ 

AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile,"Dock1"); 

}
{% endhighlight %}


{% highlight VB %}


Imports Syncfusion.Runtime.Serialization

' Persist the dock state into XML File named Dock1.xml.Use this line in the constructor of Control which hosts the dockinglayout 

Private Sub New()

     AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile, "Dock1")

End Sub()

{% endhighlight %}

{% endtabs %}

### Persisting Dock State in Memory Stream

To persist docking information in a database, we need to serialize the state into a memory stream. After which the stream is written into the database. The field to where the dock state is saved is binary.

*Storing State*

{% tabs %}

{% highlight C# %}


// Saving dockstate to memory stream  

MemoryStream ms = new MemoryStream();

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.SaveDockState(aser);

aser.PersistNow();

//Code to store the memory stream into database. Depends upon the database.

{% endhighlight %}


{% highlight VB %}


' Saving dockstate to memory stream  

Dim ms As MemoryStream = New MemoryStream()

Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.SaveDockState(aser) 

aser.PersistNow() 

'Code to store the memory stream into database. Depends upon the database.


{% endhighlight %}

{% endtabs %}


*Retrieving State*

{% tabs %}

{% highlight C# %}

//Code to retrieve data(stream) from database

MemoryStream ms = new MemoryStream(val);

ms.Position = 0;

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.dockingManager1.LoadDockState(aser);

{% endhighlight %}

{% highlight VB %}

'Code to retrieve data(stream) from database

Dim ms As MemoryStream = New MemoryStream(value)

ms.Position = 0

Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.dockingManager1.LoadDockState(aser)

{% endhighlight %}

{% endtabs %}

### Serialization in Binary Format


{% tabs %}

{% highlight C# %}


// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "myfile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "myfile");

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}


{% highlight VB %}


' To Save

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()


' To Load

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}


Serialization in Isolated Storage medium

{% tabs %}

{% highlight C# %}


// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.dockingManager1.SaveDockState(serializer);

serializer.PersistNow();


// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.dockingManager1.LoadDockState(serializer);

{% endhighlight %}


{% highlight VB %}


' To Save

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.dockingManager1.SaveDockState(serializer)

serializer.PersistNow()


' To Load

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.dockingManager1.LoadDockState(serializer)

{% endhighlight %}

{% endtabs %}

LoadDesignerDockState() - The dock state that is set through visual designer can be restored by calling LoadDesignerDockState method.


{% tabs %}

{% highlight C# %}

this.dockingManager1.LoadDesignerDockState();

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.LoadDesignerDockState()

{% endhighlight %}

{% endtabs %}

GetSerializedControls - Calling the GetSerializedControls method will return the serialized control collection enumerator in the specified serializer. This can be done through code as follows.


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