---
layout: post
title: Persistence | WindowsForms | Syncfusion
description: Persistence
platform: WindowsForms
control: AutoComplete
documentation: ug
---

# Persistence

The history list of AutoComplete control can be saved in the following formats.

* Binary Format
* XML Format
* IsolatedStorage medium
* MemoryStream
* PersistState property

The AutoComplete control has a fully built-in serialization feature that provides automatic serialization of the AutoComplete's history list.  The serialization mechanism is implemented using the standardized Syncfusion.Windows.Forms.AppStateSerializer component that acts as a central coordinator for all the Essential Tools components and provides the option to read or write to different media such as the default Isolated Storage, XML file, XML stream, Binary file, Binary stream and the Windows Registry.

## Persisting AutoComplete's data in default storage 

The data of AutoComplete's control can be persisted by setting the AutoSerialize property to true. This information is stored in the Isolated storage.


<table>
<tr>
<th>
AutoComplete Property</th><th>
Description</th></tr>
<tr>
<td>
AutoSerialize</td><td>
Specifies whether AutoComplete control can persist its data.</td></tr>
</table>


{% highlight C# %}




this.autoComplete1.AutoSerialize = true;



{% endhighlight %}

{% highlight vbnet %}


Me.autoComplete1.AutoSerialize = True

{% endhighlight %}

The AutoComplete control has built-in support for serialization that can be enabled or disabled using the AutoSerialize property. 

The default serialization option is Isolated storage and the System.IO.IsolatedStorage routines normally store application specific encrypted entries under the 'C:\Documents and Settings\[USER name]\Local Settings\Application Data\IsolatedStorage\’ folder. All of the Essential Tools Framework components use the 'Syncfusion.Runtime.Serialization.AppStateSerializer' class in the Shared library for Read/Write. The AppStateSerializer is fully documented and can be initialized for different persistence mediums such as XML / Binary files, XML / Binary streams, and the Win32 Registry using its API.

## Persisting in XML file

To save and load the AutoComplete data in a XML,



{% highlight C# %}



using Syncfusion.Runtime.Serialization;



// To Save

AppStateSerializer aser = new AppStateSerializer(SerializeMode.XMLFile, @"C:\info.xml");

this.autoComplete1.SaveCurrentState(aser);



// To Load

AppStateSerializer aser = new AppStateSerializer(SerializeMode.XMLFile, @"C:\info.xml");

this.autoComplete1.LoadCurrentState(aser);
{% endhighlight %}


{% highlight vbnet %}




Imports Syncfusion.Runtime.Serialization



' To Save

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "C:\info.xml")

Me.autoComplete1.SaveCurrentState(aser)



' To Load

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.XMLFile, "C:\info.xml")

Me.autoComplete1.LoadCurrentState(aser)

End Sub()
{% endhighlight %}

## Persisting in Memory Stream

To serialize the data into a memory stream,

### Storing State


{% highlight C# %}



MemoryStream ms = new MemoryStream();

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.autoComplete1.SaveCurrentState(aser);

aser.PersistNow();

{% endhighlight %}


{% highlight vbnet %}




Dim ms As MemoryStream = New MemoryStream()

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

Me.autoComplete1.SaveCurrentState(aser)

aser.PersistNow()
{% endhighlight %}

### Retrieving State



{% highlight C# %}



// Code to retrieve data(stream) from database

MemoryStream ms = new MemoryStream(val);

ms.Position = 0;

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFmtStream, ms);

this.autoComplete1.LoadCurrentState(aser);
{% endhighlight %}



{% highlight vbnet %}





'Code to retrieve data(stream) from database

Dim ms As MemoryStream = New MemoryStream(value)

ms.Position = 0

Dim aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFmtStream, ms)

this.autoComplete1.LoadCurrentState(aser);
{% endhighlight %}


 To serialize in Binary Format, use the below code.

{% highlight C# %}





// To Save

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFile,"myfile");

this.autoComplete1.SaveCurrentState(aser);

aser.PersistNow();



// To Load

AppStateSerializer aser = new AppStateSerializer(SerializeMode.BinaryFile,"myfile");

this.autoComplete1.LoadCurrentState(aser);

{% endhighlight %}





{% highlight vbnet %}

' To Save

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.autoComplete1.SaveCurrentState(aser)

aser.PersistNow()



' To Load

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.BinaryFile, "myfile")

Me.autoComplete1.LoadCurrentState(aser)
{% endhighlight %}


To serialize in Isolated Storage medium, use the below code.


{% highlight C# %}



// To Save

AppStateSerializer aser = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.autoComplete1.SaveCurrentState(aser);

aser.PersistNow();



// To Load

AppStateSerializer serializer = new AppStateSerializer(SerializeMode.IsolatedStorage, "myfile");

this.autoComplete1.LoadCurrentState(aser);

{% endhighlight %}

{% highlight vbnet %}




' To Save

Private aser As AppStateSerializer = New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.autoComplete1.SaveCurrentState(aser)

aser.PersistNow()



' To Load

Private serializer As AppStateSerializer = New AppStateSerializer(SerializeMode.IsolatedStorage, "myfile")

Me.autoComplete1.LoadCurrentState(aser)
{% endhighlight %}