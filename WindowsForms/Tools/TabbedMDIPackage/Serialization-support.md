---
layout: post
title: Serialization-support
description: serialization support
platform: windowsforms
control: TabbedMDIPackage 
documentation: ug
---

# Serialization support

The AppStateSerializer class is a serialization utility that allows multiple components in an application to access a common disk I/O medium for state persistence. Using the same storage medium for persisting the state information across components, without overlying them together, helps avoid the file clutter that is bound to occur by components using distinct files.

The TabGroupStates can be serialized in,

* Binary Format
* XML Format
* Isolated Storage
* Memory Stream
* Default Storage Medium (null parameter constructor).

The TabbedMDIManager class uses the SaveTabGroupState and LoadTabGroupState methods to save and load TabGroupState respectively.

_Table_ _858_: Methods Table

<table>
<tr>
<th>
 Methods</th><th>
Description</th></tr>
<tr>
<td>
SaveTabGroupStates</td><td>
Saves the current tab group's state information to the specified persistence medium.</td></tr>
<tr>
<td>
LoadTabGroupStates</td><td>
Reads the tab group's information from the specified persistent store and applies the new state.</td></tr>
<tr>
<td>
ClearSavedTabGroupState</td><td>
Clears the state of the saved tab group.</td></tr>
</table>


Make sure to call PersistNow method when you are done with writing into the serializer.

> Note: The LoadTabGroupStates and SaveTabGroupStates methods get called automatically when you enable / disable TabbedMDI.

{% highlight c# %}



// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "myfile");

this.tabbedMdiManager.SaveTabGroupStates(serializer);

serializer.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.XMLFile, "myfile");

this.tabbedMdiManager.LoadTabGroupStates(serializer);

{% endhighlight %}

{% highlight vbnet %}



' To Save

Dim serializer As New AppStateSerializer(SerializeMode.XMLFile, "myfile")

Me.tabbedMdiManager.SaveTabGroupStates(aser)

serializer.PersistNow()



' To Load

Dim serializer As New AppStateSerializer(SerializeMode.XMLFile, "myfile")

Me.tabbedMdiManager.LoadTabGroupStates(aser)

Singleton method

The AppStateSerializer is set to use the IsolatedStorage format by default. When the user does not need the states to store in the Isolated Storage area, it could be changed by initializing the AppStateSerializer's Singleton at the beginning of an application.

{% endhighlight %}

{% highlight c# %}



//Initializing the AppStateSerializer's Singleton at the beginning of an application.

AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile, "myfile");

{% endhighlight %}

{% highlight vbnet %}



' Initializing the AppStateSerializer's Singleton at the beginning of an application.

AppStateSerializer.InitializeSingleton(SerializeMode.XMLFile, "myfile")



Below are the code snippets for different storage mediums. 

To serialize in Binary Format, use the below code.

{% endhighlight %}

{% highlight c# %}



// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "myfile");

this.tabbedMdiManager.SaveTabGroupStates(serializer);

serializer.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.BinaryFile, "myfile");

this.tabbedMdiManager.LoadTabGroupStates(serializer);

{% endhighlight %}

{% highlight vbnet %}



' To Save

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.tabbedMdiManager.SaveTabGroupStates(serializer)

serializer.PersistNow()



' To Load

Dim serializer As New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.tabbedMdiManager.LoadTabGroupStates(serializer)

{% endhighlight %}

To serialize in Isolated Storage, use the below code.



{% highlight c# %}



// To Save

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.tabbedMdiManager.SaveTabGroupStates(serializer);

serializer.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.tabbedMdiManager.LoadTabGroupStates(serializer);

{% endhighlight %}

{% highlight vbnet %}



' To Save

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.tabbedMdiManager.SaveTabGroupStates(serializer)

serializer.PersistNow()



' To Load

Dim serializer As New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.tabbedMdiManager.LoadTabGroupStates(serializer)

{% endhighlight %}

To serialize in Memory Stream, use the below code.

{% highlight c# %}



// To Save

System.IO.MemoryStream ms = new MemoryStream();



AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.tabbedMDIManager.SaveTabGroupStates(aser);

aser.PersistNow();



// To Load

AppStateSerializer aser = new AppStateSerializer(SerializeMode.IsolatedStorage, ms);

this.tabbedMdiManager.LoadTabGroupStates(aser);

{% endhighlight %}

{% highlight vbnet %}



' To Save

Dim ms As MemoryStream = New MemoryStream()



Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.tabbedMdiManager.SaveDockState(aser)

aser.PersistNow()



' To Load

Dim aser As New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.tabbedMdiManager.LoadTabGroupStates(aser)

{% endhighlight %}


