---
layout: post
title: Serialization of GridControl for Syncfusion Essential WindowsForms
description: This section explains on how to serialize and deserialize GridControl.
platform: WindowsForms
control: GridControl
documentation: ug
---

# Serialization

GridControl provide the support for [serialization](https://msdn.microsoft.com/en-us/library/ms233843.aspx#) and de-serialization of grid’s schema information. Serialization is the process of saving the state of an object as a stream of bytes. The reverse of this process is called [deserialization](https://msdn.microsoft.com/en-us/library/fa420a9y.aspx#).

GridControl has the different types of serialization techniques as follows,

[SOAP](https://msdn.microsoft.com/en-us/library/d5wt2he6.aspx#) - Helps convert the grid schema information to SOAP format.

[Binary](https://msdn.microsoft.com/en-us/library/72hyey7b.aspx#) - Helps convert the grid schema information to binary format.

[XML](https://msdn.microsoft.com/en-us/library/ms172873.aspx#) - Helps convert the grid schema information to XML format.

## Binary 

Binary Serialization is used to convert the grid schema information into Binary format. 

### Saving Binary

During the binary serialization the schema of the grid will be saved into the file as the bit streams. The [SaveBinary](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~SaveBinary.html#) method is used to serialize the grid schema into the binary format.

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

To de-serialize the contents of the encoded grid schema, decode it by using the [LoadBinary](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~LoadBinary.html#) method and assign it to the grid model.

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

This serialization technique is used to store the data (schema) and Look and feel of the GridControl in to the xml file. This can be applied back to the grid at the time of deserialization.

### Serialization 

The schema and look and feel of the GridControl can be serialized by using the [SaveXml](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~SaveXml.html#) method. 

{% tabs %} 
{% highlight c# %}
//Serialize the grid schema and Look And Feel to the Xml file

this.gridControl1.SaveXml("GridSchemaXml");



{% endhighlight %}

{% highlight vb %}
'Serialize the grid schema and Look And Feel to the Xml file

Me.gridControl1.SaveXml("GridSchemaXml")



{% endhighlight %}
{% endtabs %}

### Deserialization 

The [InitializeFromXml](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~InitializeFromXml.html#) method is used to deserialize the contents of the xml file to restore the schema and look and feel of the GridControl.

{% tabs %} 
{% highlight c# %}
//Deserialize the schema and the look and feel of the grid

this.gridControl1.InitializeFromXml("GridSchemaXml");

this.gridControl1.Refresh();



{% endhighlight %}

{% highlight vb %}
'Deserialize the schema and the look and feel of the grid

Me.gridControl1.InitializeFromXml("GridSchemaXml")

Me.gridControl1.Refresh()



{% endhighlight %}
{% endtabs %}

### Saving Grid Data using Xml Serialization 

The grid data (schema) can alone serialize without the style information (Look and Feel) by using the [XmlSerializer](https://msdn.microsoft.com/en-us/library/system.xml.serialization.xmlserializer.aspx#) method. 

{% tabs %} 
{% highlight c# %}
//create stream for saving the data

Stream s = File.Create("GridSchemaxml");

//Xml writer for writing the data into the xml format

XmlWriter xw = new XmlTextWriter(s, System.Text.Encoding.Default);

//Creating the object for serialize the grid data

XmlSerializer xs = new System.Xml.Serialization.XmlSerializer(this.gridControl1.Model.Data.GetType());

//Serialize the content of the grid to xml file

xs.Serialize(xw, this.gridControl1.Model.Data);

s.Close();

{% endhighlight %}

{% highlight vb %}
'create stream for saving the data

Dim s As Stream = File.Create("GridSchemaxml")

'Xml writer for writing the data into the xml format

Dim xw As XmlWriter = New XmlTextWriter(s, System.Text.Encoding.Default)

'Creating the object for serializing the grid data

Dim xs As XmlSerializer = New System.Xml.Serialization.XmlSerializer(Me.gridControl1.Model.Data.GetType())

'Serialize the content of the grid to xml file

xs.Serialize(xw, Me.gridControl1.Model.Data)

s.Close()
{% endhighlight %}
{% endtabs %}

### Loading Grid Data using Xml Serialization

The schema can be deserialized from the xml file and loaded to the grid by using the following code snippet,  

{% tabs %} 
{% highlight c# %}
//Open the xml file in the read mode

Stream s = File.OpenRead("GridSchemaxml");

//read the stream of data using the xml reader

XmlReader xr = new XmlTextReader(s);

XmlSerializer xs = new XmlSerializer(this.gridControl1.Model.Data.GetType());

//Deserialize the content of xml file to the grid data

this.gridControl1.Model.Data = (GridData)xs.Deserialize(xr);

s.Close();

this.gridControl1.Refresh();
{% endhighlight %}

{% highlight vb %}
'Open the xml file in the read mode

Dim s As Stream = File.OpenRead("GridSchemaxml")

'read the stream of data using the xml reader

Dim xr As XmlReader = New XmlTextReader(s)

Dim xs As New XmlSerializer(Me.gridControl1.Model.Data.GetType())

'Deserialize the content of xml file to the grid data

Me.gridControl1.Model.Data = CType(xs.Deserialize(xr), GridData)

s.Close()

Me.gridControl1.Refresh()
{% endhighlight %}
{% endtabs %}

## SOAP

This serialization technique is used to store the schema of the grid in a memory stream rather than the file system.

### Saving SOAP

The GridModel.[SaveSoap](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~SaveSoap.html#) method is used to save the schema of the grid to the memory stream / file.

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

The [GridModel.LoadSoap](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControl~LoadSoap.html#) method is used to deserialize the contents of the file/memory stream to the grid model.

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