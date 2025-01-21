---
layout: post
title: Serialization in Windows Forms Grid Control | Syncfusion®
description: Learn about Serialization support in Syncfusion® Windows Forms Grid Control, its elements and more details.
platform: windowsforms
control: GridControl
documentation: ug
---

# Serialization in Windows Forms Grid Control

GridControl provide the support for [serialization](https://learn.microsoft.com/en-us/previous-versions/ms233843(v=vs.140)) and load the serialized grid’s schema information. Serialization is the process of saving the state of an object as a stream of bytes. The reverse of this process is called [de-serialization](https://learn.microsoft.com/en-us/dotnet/standard/serialization/how-to-deserialize-an-object).

GridControl has the different types of serialization techniques as follows,

[SOAP](https://learn.microsoft.com/en-us/dotnet/standard/serialization/how-to-serialize-an-object-as-a-soap-encoded-xml-stream) - Helps convert the grid schema information to SOAP format.

[Binary](https://learn.microsoft.com/en-us/previous-versions/dotnet/fundamentals/serialization/binary/binary-serialization) - Helps convert the grid schema information to binary format.

[XML](https://learn.microsoft.com/en-us/previous-versions/ms172873(v=vs.140)) - Helps convert the grid schema information to XML format.

## Binary 

Binary Serialization is used to convert the grid schema information into Binary format. 

### Saving Binary

During the binary serialization the schema of the grid will be saved into the file as the bit streams. The [SaveBinary](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_SaveBinary) method is used to serialize the grid schema into the binary format.

{% tabs %} 
{% highlight c# %}
//Binary Serialization
this.gridControl1.SaveBinary("GridSchema");
{% endhighlight %}

{% highlight vb %}
'Binary Serialization
Me.gridControl1.SaveBinary("GridSchema")
{% endhighlight %}
{% endtabs %} 


### Loading Binary

To load the serialized contents of the encoded grid schema, decode it by using the [LoadBinary](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_LoadBinary_System_IO_Stream_) method and assign it to the grid model.

{% tabs %} 
{% highlight c# %}
//Binary Deserialization (Apply the schema to the grid model)
this.gridControl1.Model = GridModel.LoadBinary("GridSchema");
{% endhighlight %}

{% highlight vb %}
'Binary Deserialization (Apply the schema to the grid model)
Me.gridControl1.Model = GridModel.LoadBinary("GridSchema")
{% endhighlight %}
{% endtabs %}


## XML 

This serialization technique is used to store the data (schema) and Look and feel of the GridControl in to the XML file. This can be applied back to the grid at the time of deserialization.

### Serialization 

The schema and look and feel of the GridControl can be serialized by using the [SaveXml](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_SaveXml) method. 

{% tabs %} 
{% highlight c# %}
//Serialize the grid schema and Look And Feel to the Xml file
this.gridControl1.SaveXml("GridSchema");
{% endhighlight %}

{% highlight vb %}
'Serialize the grid schema and Look And Feel to the Xml file
Me.gridControl1.SaveXml("GridSchema")
{% endhighlight %}
{% endtabs %}

### Deserialization 

The [InitializeFromXml](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_InitializeFromXml_System_IO_Stream_) method is used to deserialize the contents of the XML file to restore the schema and look and feel of the GridControl.

{% tabs %} 
{% highlight c# %}
//Deserialize the schema and the look and feel of the grid
this.gridControl1.InitializeFromXml("GridSchema");

this.gridControl1.Refresh();
{% endhighlight %}

{% highlight vb %}
'Deserialize the schema and the look and feel of the grid
Me.gridControl1.InitializeFromXml("GridSchema")

Me.gridControl1.Refresh()
{% endhighlight %}
{% endtabs %}

### Saving Grid Data using XML Serialization 

The grid data (schema) can alone serialize without the style information (Look and Feel) by using the [XmlSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.xml.serialization.xmlserializer?view=net-5.0) method. 

{% tabs %} 
{% highlight c# %}
//create stream for saving the data
Stream s = File.Create("GridSchema");

//Xml writer for writing the data into the xml format
XmlWriter xmlWriter = new XmlTextWriter(s, System.Text.Encoding.Default);

//Creating the object for serialize the grid data
XmlSerializer xmlSerializer = new System.Xml.Serialization.XmlSerializer(this.gridControl1.Model.Data.GetType());

//Serialize the content of the grid to xml file
xmlSerializer.Serialize(xmlWriter, this.gridControl1.Model.Data);

s.Close();
{% endhighlight %}

{% highlight vb %}
'create stream for saving the data
Dim s As Stream = File.Create("GridSchema")

'Xml writer for writing the data into the xml format
Dim xmlWriter As XmlWriter = New XmlTextWriter(s, System.Text.Encoding.Default)

'Creating the object for serializing the grid data
Dim xmlSerializer As XmlSerializer = New System.Xml.Serialization.XmlSerializer(Me.gridControl1.Model.Data.GetType())

'Serialize the content of the grid to xml file
xmlSerializer.Serialize(xmlWriter, Me.gridControl1.Model.Data)

s.Close()
{% endhighlight %}
{% endtabs %}

### Loading Grid Data using XML Serialization

The schema can be deserialized from the XML file and loaded to the grid by using the following code snippet,  

{% tabs %} 
{% highlight c# %}
//Open the xml file in the read mode
Stream s = File.OpenRead("GridSchema");

//read the stream of data using the xml reader
XmlReader xmlReader = new XmlTextReader(s);

XmlSerializer xmlSerializer = new XmlSerializer(this.gridControl1.Model.Data.GetType());

//Deserialize the content of xml file to the grid data
this.gridControl1.Model.Data = (GridData)xmlSerializer.Deserialize(xmlReader);

s.Close();

this.gridControl1.Refresh();
{% endhighlight %}

{% highlight vb %}
'Open the xml file in the read mode
Dim s As Stream = File.OpenRead("GridSchema")

'read the stream of data using the xml reader
Dim xmlReader As XmlReader = New XmlTextReader(s)

Dim xmlSerializer As New XmlSerializer(Me.gridControl1.Model.Data.GetType())

'Deserialize the content of xml file to the grid data
Me.gridControl1.Model.Data = CType(xmlSerializer.Deserialize(xmlReader), GridData)

s.Close()

Me.gridControl1.Refresh()
{% endhighlight %}
{% endtabs %}

## SOAP

This serialization technique is used to store the schema of the grid in a memory stream rather than the file system.

### Saving SOAP

The GridModel.[SaveSoap](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_SaveSoap) method is used to save the schema of the grid to the memory stream / file.

{% tabs %} 
{% highlight c# %}
//Serialize the schema to the memory stream/ file
this.gridControl1.SaveSoap("GridSchemaSoap");

MemoryStream stream = new MemoryStream();

//Save the Grid schema into the memory Stream 
this.gridControl1.SaveSoap(stream);  //this.gridControl1.SaveXml(stream);
{% endhighlight %}

{% highlight vb %}
'Serialize the schema to the memory stream/ file
Me.gridControl1.SaveSoap("GridSchemaSoap")

Dim stream As New MemoryStream()

'Save the Grid schema into the memory Stream 
Me.gridControl1.SaveSoap(stream) 'this.gridControl1.SaveXml(stream);
{% endhighlight %}
{% endtabs %}

### Loading SOAP

The [GridModel.LoadSoap](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_LoadSoap_System_IO_Stream_) method is used to deserialize the contents of the file/memory stream to the grid model.

{% tabs %} 
{% highlight c# %}
//Load the schema into the Grid model
this.gridControl1.Model = GridModel.LoadSoap("GridSchemaSoap");

//Load the content of the memory stream into the Grid
this.gridControl1.Model = GridModel.LoadSoap(stream);
{% endhighlight %}

{% highlight vb %}
'Load the schema into the Grid model
Me.gridControl1.Model = GridModel.LoadSoap("GridSchemaSoap")

'Load the content of the memory stream into the Grid
Me.gridControl1.Model = GridModel.LoadSoap(stream)
{% endhighlight %}
{% endtabs %}
