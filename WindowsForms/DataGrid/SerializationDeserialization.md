---
layout: post
title: Serialization in Windows Forms DataGrid Control | Syncfusion
description: This section explains about the Serialization and Deserialization in Syncfusion® Windows Forms DataGrid (SfDataGrid) control and more.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Serialization and Deserialization in WinForms DataGrid

SfDataGrid allows you to serialize and deserialize the SfDataGrid settings using [DataContractSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractserializer?view=net-5.0).

## Serialization

The SfDataGrid can be serialized by using [SfDataGrid.Serialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Serialize_System_IO_Stream_) method which exports the current SfDataGrid control properties to an XML file.

{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    this.sfDataGrid1.Serialize(file);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Me.sfDataGrid1.Serialize(file)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize as Stream

The SfDataGrid settings can be stored as [Stream](https://learn.microsoft.com/en-us/dotnet/api/system.io.stream?view=net-5.0) using [Serialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Serialize_System_IO_Stream_) method by passing the stream.

{% tabs %}
{% highlight c# %}
FileStream stream = new FileStream("DataGrid", FileMode.Create);
this.sfDataGrid1.Serialize(stream);
{% endhighlight %}
{% highlight vb %}
Dim stream As New FileStream("DataGrid", FileMode.Create)
Me.sfDataGrid1.Serialize(stream)
{% endhighlight %}
{% endtabs %}

## Serialization Options

SfDataGrid serialization operation can be customized by passing [SerializationOptions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html) instance as an argument to [Serialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Serialize_System_IO_Stream_Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_) method.

### Serialize Sorting

By default, SfDataGrid allows to serialize the sorting operation. The sorting serialization can be disabled  by setting the [SerializationOptions.SerializeSorting](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeSorting) to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeSorting = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeSorting = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Grouping

By default, SfDataGrid allows to serialize the grouping operation. The grouping serialization can be disabled by setting the [SerializationOptions.SerializeGrouping ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeGrouping)to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeGrouping = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeGrouping = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Filtering

By default, SfDataGrid allows to serialize the filtering operation. The filtering serialization can be disabled by setting the [SerializationOptions.SerializeFiltering ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeFiltering)to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeFiltering = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeFiltering = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Columns

By default, SfDataGrid allows to serialize the column manipulation operation. The column manipulation serialization can be disabled by setting the [SerializationOptions.SerializeColumn ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeColumns)to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeColumns = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeColumns = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Summaries

By default, SfDataGrid allows to serialize the caption summary, group summary and table summary settings in SfDataGrid. The caption summary, group summary and table summary settings serialization can be disabled by setting the [SerializationOptions.SerializeCaptionSummaries](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeCaptionSummaries), [SerializationOptions.SerializeTableSummaries ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeTableSummaries) and  [SerializationOptions.SerializeGroupSummaries ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeGroupSummaries)to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeCaptionSummaries = false;
    options.SerializeTableSummaries = false;
    options.SerializeGroupSummaries = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeCaptionSummaries = False
	options.SerializeTableSummaries = False
	options.SerializeGroupSummaries = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Stacked Headers

By default, SfDataGrid allows to serialize the stacked headers operation. The stacked headers serialization can be disabled by setting the [SerializationOptions.SerializeStackedHeaders ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeStackedHeaders)to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeStackedHeaders = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeStackedHeaders = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Unbound Row

By default, SfDataGrid allows to serialize the unbound rows settings. The unbound rows serialization can be disabled by setting the [SerializationOptions.SerializeUnboundRows ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeUnboundRows)to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeUnboundRows = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeUnboundRows = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Serialize Style

By default, SfDataGrid allows to serialize the style settings. The style serialization can be disabled by setting the [SerializationOptions.SerializeStyle ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.SerializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_SerializationOptions_SerializeStyle)to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Create("DataGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeStyle = false;
    this.sfDataGrid1.Serialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Create("DataGrid.xml")
	Dim options As New SerializationOptions()
	options.SerializeStyle = False
	Me.sfDataGrid1.Serialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

## Deserialization

The SfDataGrid can be deserialized by using [SfDataGrid.Deserialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Deserialize_System_IO_Stream_) method which reconstructs the SfDataGrid based on the setting in the stored XML file.

{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    this.sfDataGrid1.Deserialize(file);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Me.sfDataGrid1.Deserialize(file)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize from Stream

The SfDataGrid settings can be deserialized from [Stream](https://learn.microsoft.com/en-us/dotnet/api/system.io.stream?view=net-5.0) using [Deserialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Deserialize_System_IO_Stream_) method.

{% tabs %}
{% highlight c# %}
FileStream fileStream = new FileStream("DataGrid", FileMode.Open);
this.sfDataGrid1.Deserialize(fileStream);
{% endhighlight %}
{% highlight vb %}
Dim fileStream As New FileStream("DataGrid", FileMode.Open)
Me.sfDataGrid1.Deserialize(fileStream)
{% endhighlight %}
{% endtabs %}

## Deserialization Options

Deserialization operation can be customized by passing [DeserializationOptions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html) instance as an argument to [Deserialize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_Deserialize_System_IO_Stream_Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_) method.

### Deserialize Sorting

By default, SfDataGrid allows to deserialize the sorting operation. The sorting deserialization can be disabled by setting the DeserializationOptions.DeserializeSorting to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeSorting = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeSorting = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize Grouping

By default, SfDataGrid allows to deserialize the grouping operation. The grouping deserialization can be disabled by setting the [DeserializationOptions.DeserializeGrouping](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeGrouping) to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeGrouping = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeGrouping = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize Filtering

By default, SfDataGrid allows to deserialize the filtering operation. The filtering deserialization can be disabled by setting the [DeserializationOptions.DeserializeFiltering](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeFiltering) to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeFiltering = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeFiltering = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize Columns

By default, SfDataGrid allows to deserialize the columns manipulation operation. The columns manipulation deserialization can be disabled by setting the [DeserializationOptions.DeserializeColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeColumns) to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeColumns = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeColumns = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}
### Deserialize Summaries

By default, SfDataGrid allows to deserialize the caption summary, group summary and table summary settings in SfDataGrid. The caption summary, group summary and table summary settings deserialization can be disabled by setting the [DeserializationOptions.DeserializeCaptionSummary](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeCaptionSummary), [DeserializationOptions.DeserializeTableSummaries ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeTableSummaries) and  [DeserializationOptions.DeserializeGroupSummaries ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeGroupSummaries)to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeCaptionSummary = false;
    options.DeserializeGroupSummaries = false;
    options.DeserializeTableSummaries = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeCaptionSummary = False
	options.DeserializeGroupSummaries = False
	options.DeserializeTableSummaries = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize Stacked Headers

By default, SfDataGrid allows to deserialize the stacked headers operation. The stacked headers deserialization can be disabled by setting the [DeserializationOptions.DeserializeStackedHeaders ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeStackedHeaders)to false.

{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeStackedHeaders = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeStackedHeaders = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize Unbound Row

By default, SfDataGrid allows to deserialize the unbound rows settings. The unbound rows deserialization can be disabled by setting the [DeserializationOptions.DeserializeUnboundRows ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeUnboundRows)to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeUnboundRows = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeUnboundRows = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}

### Deserialize Style

By default, SfDataGrid allows to deserialize the style settings. The style deserialization can be disabled by setting the [DeserializationOptions.DeserializeStyle ](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Serialization.DeserializationOptions.html#Syncfusion_WinForms_DataGrid_Serialization_DeserializationOptions_DeserializeStyle)to false.
{% tabs %}
{% highlight c# %}
using (var file = File.Open("DataGrid.xml", FileMode.Open))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeStyle = false;
    this.sfDataGrid1.Deserialize(file, options);
}
{% endhighlight %}
{% highlight vb %}
Using file = File.Open("DataGrid.xml", FileMode.Open)
	Dim options As New DeserializationOptions()
	options.DeserializeStyle = False
	Me.sfDataGrid1.Deserialize(file, options)
End Using
{% endhighlight %}
{% endtabs %}
