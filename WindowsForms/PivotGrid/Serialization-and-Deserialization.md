---
layout: post
title: Serialization and Deserialization | Windows Forms | Syncfusion
description: Serialization and deserialization support in pivot grid
platform: windowsforms
control: PivotGrid
documentation: ug
---
# Serialization and Deserialization

Serialization and deserialization support allows to serialize and deserialize the settings of pivot grid control.

## Serializing pivot grid

Serialization is a process that allows to save the settings of pivot grid control by exporting its current settings to an XML file. It can be achieved with the help of any of the following methods.

### Serializing using save file dialog

Pivot grid control allows to save its settings to the desired location in _*.xml_ format by using the [Serialize()](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Serialize().html) method.

Refer to the below code sample to serialize the pivot grid control using save file dialog.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Serialize();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Serialize()

{% endhighlight %}

{% endtabs %}

The below screenshot illustrates the serialized content of pivot grid control.

![Serialized_PivotGrid](Serialization-and-Deserialization_images/Serialized_PivotGrid.png)

### Serializing using stream

Pivot grid control allows to save its settings with the help of [Serialize(Stream)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Serialize(Stream).html) method by passing the stream as parameter.

Refer to the below code sample to serialize the pivot grid control as stream.

{% tabs %}

{% highlight C# %}

using (FileStream fileStream = File.Create("PivotGrid.xml"))
{
    this.pivotGridControl1.Serialize(fileStream);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.Create("PivotGrid.xml")
    Me.pivotGridControl1.Serialize(fileStream)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing using specific file

Pivot grid control allows to save its settings with the help of [Serialize(String)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Serialize(String).html) method by passing the file path as parameter.

Refer to the below code sample to serialize the pivot grid control as xml file.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Serialize(@"D:\PivotGrid.xml");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Serialize("D:\PivotGrid.xml")

{% endhighlight %}

{% endtabs %}

### Serializing to XML string

Pivot grid control allows to save its settings into a XML string using the [SerializeToXml()](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~SerializeToXml.html) method.

Refer to the below code sample to serialize the pivot grid control as xml string.

{% tabs %}

{% highlight C# %}

string xmlString = this.pivotGridControl1.SerializeToXml();

{% endhighlight %}

{% highlight vb %}

Dim xmlString As String = Me.pivotGridControl1.SerializeToXml()

{% endhighlight %}

{% endtabs %}

## Customizing serialization using options

The serialization of pivot grid control can be customized by using the instance of [SerializationOptions](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions.html). The instance of serialization options needs to be passed as an argument of [Serialize(String,SerializationOptions)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Serialize(String,SerializationOptions).html) or [Serialize(Stream,SerializationOptions)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Serialize(Stream,SerializationOptions).html) method based on the requirement.

### Serializing grouping bar items

By default, the pivot grid control allows to serialize the items of grouping bar. The serialization of grouping bar items can be disabled by setting the [SerializeGrouping](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializeGrouping.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeGrouping = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializeGrouping = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing sorted items

By default, the pivot grid control allows to serialize the sorted items. The serialization of sorted items can be disabled by setting the [SerializeSorting](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializeSorting.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeSorting = false;
    this.pivotGridControl1.Serialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializeSorting = False
    Me.pivotGridControl1.Serialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing filtered items

By default, the pivot grid control allows to serialize the filtered items. The serialization of filtered items can be disabled by setting the [SerializeFiltering](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializeFiltering.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeFiltering = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializeFiltering = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing pivot row items

By default, the pivot grid control allows to serialize the collection of pivot row items. The serialization of pivot row items can be disabled by setting the [SerializePivotRows](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializePivotRows.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializePivotRows = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializePivotRows = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing pivot column items

By default, the pivot grid control allows to serialize the collection of pivot column items. The serialization of pivot column items can be disabled by setting the [SerializePivotColumns](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializePivotColumns.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializePivotColumns = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializePivotColumns = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing pivot calculation items

By default, the pivot grid control allows to serialize the collection of pivot column items. The serialization of pivot column items can be disabled by setting the [SerializePivotCalculations](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializePivotCalculations.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializePivotCalculations = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializePivotCalculations = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing conditional formats

By default, the pivot grid control allows to serialize the conditional formats applied to it. The serialization of conditional formats can be disabled by setting the [SerializeConditionalFormats](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializeConditionalFormats.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeConditionalFormats = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializeConditionalFormats = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serializing expand and collapse state

By default, the pivot grid control allows to serialize the expand and collapse state of expanders in row and column headers. The serialization of expand and collapse state of expanders can be disabled by setting the [SerializeExpandCollapseState](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.SerializationOptions~SerializeExpandCollapseState.html) property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializeExpandCollapseState = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializeExpandCollapseState = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

## Deserializing pivot grid

Deserialization is a process that allows to reconstruct the pivot grid control based on the settings stored in the XML file. It can be done with the help of any of the following methods.

### Deserializing using open file dialog

The settings of pivot grid control can be deserialized with the help of [Deserialize()](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Deserialize().html) method.

Refer to the below code sample to deserialize the pivot grid control using open file dialog.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Deserialize();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Deserialize()

{% endhighlight %}

{% endtabs %}

### Deserializing using stream

The settings of pivot grid control can be deserialized with the help of [Deserialize(Stream)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Deserialize(Stream).html) method.

Refer to the below code sample to deserialize the pivot grid from stream.

{% tabs %}

{% highlight C# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    this.pivotGridControl1.Deserialize(fileStream);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Me.pivotGridControl1.Deserialize(fileStream)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing using specific file

The settings of pivot grid control can be deserialized with the help of [Deserialize(String)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Deserialize(String).html) method by passing the path of the file as parameter.

Refer to the below code sample to deserialize the pivot grid from xml file.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Deserialize(@"D:\PivotGrid.xml");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Deserialize("D:\PivotGrid.xml")

{% endhighlight %}

{% endtabs %}

### Deserializing from XML string

Pivot grid control allows to load its settings from the XML string using the  [DeserializeFromXml()](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~DeserializeFromXml.html) method.

Refer to the below code sample to deserialize the pivot grid from xml string.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.DeserializeFromXml(xmlString);

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.DeserializeFromXml(xmlString)

{% endhighlight %}

{% endtabs %}

## Customizing deserialization using options

The deserialization of pivot grid control can be customized by using the instance of [DeserializationOptions](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions.html). The instance of deserialization options needs to be passed as an argument of [Deserialize(String,DeserializationOptions)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Deserialize(String,DeserializationOptions).html) or [Deserialize(Stream,DeserializationOptions)](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~Deserialize(Stream,DeserializationOptions).html) method based on the requirement.

### Deserializing grouping bar items

By default, the pivot grid control allows to deserialize the items of grouping bar. The deserialization of grouping bar items can be disabled by setting the [DeserializeGrouping](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializeGrouping.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeGrouping = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializeGrouping = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing sorted items

By default, the pivot grid control allows to deserialize the sorting operation. The deserialization of sorted items can be disabled by setting the [DeserializeSorting](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializeSorting.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeSorting = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.Create("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializeSorting = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing filtered items

By default, the pivot grid control allows to deserialize the filtering operation. The deserialization of filtered items can be disabled by setting the [DeserializeFiltering](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializeFiltering.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeFiltering = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializeFiltering = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing pivot row items

By default, the pivot grid control allows to deserialize the collection of pivot row items. The deserialization of pivot row items can be disabled by setting the [DeserializePivotRows](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializePivotRows.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializePivotRows = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializePivotRows = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing pivot column items

By default, the pivot grid control allows to deserialize the collection of pivot column items. The deserialization of pivot column items can be disabled by setting the [DeserializePivotColumns](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializePivotColumns.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializePivotColumns = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializePivotColumns = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing pivot calculation items

By default, the pivot grid control allows to deserialize the collection of pivot calculation items. The deserialization of pivot calculation items can be disabled by setting the [DeserializePivotCalculations](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializePivotCalculations.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializePivotCalculations = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializePivotCalculations = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing conditional formats

By default, the pivot grid control allows to deserialize the conditional formats applied to the it. The deserialization of conditional formats can be disabled by setting the [DeserializeConditionalFormats](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializeConditionalFormats.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeConditionalFormats = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializeConditionalFormats = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserializing expand and collapse state

By default, the pivot grid control allows to deserialize the expand and collapse state of expanders in column and row headers. The deserialization of expand and collapse state of expanders can be disabled by setting the [DeserializeExpandCollapseState](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.Serialization.DeserializationOptions~DeserializeExpandCollapseState.html) property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserializeExpandCollapseState = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserializeExpandCollapseState = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Serialization\Serialization Demo