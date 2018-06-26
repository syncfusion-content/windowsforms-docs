---
layout: post
title: Serialization-and-Deserialization | PivotGrid | Windows Forms | Syncfusion
description: serialization and deserialization
platform: windows forms
control: PivotGrid
documentation: ug
---
# Serialization and Deserialization

This feature allows you to serialize and deserialize the settings of pivot grid control.

## Serialization

Serialization allows you to save the settings of pivot grid control by using `Serialize` method. It exports the current settings of pivot grid control to an XML file and it can be done with the help of any of the following methods.

### Serialize using save file dialog

It allows you to save the settings of pivot grid control to the desired location in _*.xml_ format by using the `Serialize` method as specified in the below code sample.

{% tabs %}

{% highlight C# %}

this.Control1.Serialize();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Serialize()

{% endhighlight %}

{% endtabs %}

As a result, the pivot grid control will be serialized in XML file as shown below:

![PivotGrid_Serialization](Serialization-and-Deserialization_images/Serialized_PivotGrid.png)

### Serialize using stream

It allows you to save the settings of pivot grid control with the help of `Serialize` method by passing the stream as parameter as specified in the below code sample.

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

### Serialize using specific file

It allows you to save the settings of pivot grid control with the help of `Serialize` method by passing the file path as parameter as specified in the below code sample.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Serialize(@"D:\PivotGrid.xml");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Serialize("D:\PivotGrid.xml")

{% endhighlight %}

{% endtabs %}

### Serialize to XML string

It allows you to save the settings of pivot grid control into a XML string using the method of `SerializeToXml` as specified in the below code sample.

{% tabs %}

{% highlight C# %}

string xmlString = this.pivotGridControl1.SerializeToXml();

{% endhighlight %}

{% highlight vb %}

Dim xmlString As String = Me.pivotGridControl1.SerializeToXml()

{% endhighlight %}

{% endtabs %}

## Serialization options

The serialization of pivot grid control can be customized by passing the instance of 'SerializationOptions' as parameter in the `Serialize` method. Refer to the below code sample to handle the default serialization happened in the pivot grid control.

*Using stream*

{% tabs %}

{% highlight C# %}

using (FileStream fileStream = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    this.pivotGridControl1.Serialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    Me.pivotGridControl1.Serialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

*using specific file*

{% tabs %}

{% highlight C# %}

SerializationOptions options = new SerializationOptions();
this.pivotGridControl1.Serialize(@"D:\PivotGrid.xml", options);

{% endhighlight %}

{% highlight vb %}

Dim options As New SerializationOptions()
Me.pivotGridControl1.Serialize("D:\PivotGrid.xml", options)

{% endhighlight %}

{% endtabs %}

### Serialize sorted items

By default, the pivot grid control allows to serialize the sorting operation. The serialization of sorted items can be disabled by setting the 'SerializeSorting' property to false.

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

### Serialize grouping bar

By default, the pivot grid control allows to serialize the settings of grouping bar. The serialization of settings of grouping bar can be disabled by setting the `SerializeGrouping' property to false.

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

### Serialize filtered items

By default, the pivot grid control allows to serialize the filtering operation. The serialization of filtered items can be disabled by setting the 'SerializeFiltering' property to false.

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

### Serialize pivot items

By default, the pivot grid control allows to serialize the collection of pivot items and pivot calculations. The serialization of row pivot items and column pivot items can be disabled by setting the properties of 'SerializePivotRows' and `SerializePivotColumns` to false. Similarly, the serialization of pivot calculation items can be disabled by setting the 'SerializePivotCalculations' property to false.

{% tabs %}

{% highlight c# %}

using (var file = File.Create("PivotGrid.xml"))
{
    SerializationOptions options = new SerializationOptions();
    options.SerializePivotRows = false;
    options.SerializePivotColumns = false;
    options.SerializePivotCalculations = false;
    this.pivotGridControl1.Serialize(file, options);
}

{% endhighlight %}

{% highlight vb %}

Using file = File.Create("PivotGrid.xml")
    Dim options As New SerializationOptions()
    options.SerializePivotRows = False
    options.SerializePivotColumns = False
    options.SerializePivotCalculations = False
    Me.pivotGridControl1.Serialize(file, options)
End Using

{% endhighlight %}

{% endtabs %}

### Serialize conditional formats

By default, the pivot grid control allows to serialize the conditional formats applied on the pivot grid. The serialization of conditional formats can be disabled by setting the 'SerializeConditionalFormats' property to false.

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

### Serialize expand and collapse state

By default, pivot grid allows to serialize the expand and collapse operation. The serialization of expand and collapse state of pivot items can be disabled by setting the 'SerializeExpandCollapseState' property to false.

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

## Deserialization

Deserialization allows you to load the settings of pivot grid control by using `Deserialize` method. It reconstructs the pivot grid control based on the settings stored in the XML file and it can be done with the help of any of the following methods.

### Deserialize using open file dialog

The settings of pivot grid control can be deserialized with the help of 'Deserialize' method as specified in the below code sample.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Deserialize();

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Deserialize()

{% endhighlight %}

{% endtabs %}

### Deserialize using stream

The settings of pivot grid control can be deserialized with the help of 'Deserialize' method by passing the stream as parameter as specified in the below code sample.

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

### Deserialize using specific file

The settings of pivot grid control can be deserialized with the help of 'Deserialize' method by passing the path of the file as parameter as specified in the below code sample.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.Deserialize(@"D:\PivotGrid.xml");

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.Deserialize("D:\PivotGrid.xml")

{% endhighlight %}

{% endtabs %}

### Deserialize from XML string

It allows you to load the settings of pivot grid control from the XML string using the method of `DeserializeFromXml` as specified in the below code sample.

{% tabs %}

{% highlight C# %}

this.pivotGridControl1.DeserializeFromXml(xmlString);

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.DeserializeFromXml(xmlString)

{% endhighlight %}

{% endtabs %}

## Deserialization options

The deserialization of pivot grid control can be customized by passing the instance of 'DeserializationOptions' as parameter in the `Deserialize` method. Refer to the below code sample to handle the default deserialization happened in the pivot grid control.

*Using stream*

{% tabs %}

{% highlight C# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

*using specific file*

{% tabs %}

{% highlight C# %}

DeserializationOptions options = new DeserializationOptions();
this.pivotGridControl1.Deserialize(@"D:\PivotGrid.xml", options);

{% endhighlight %}

{% highlight vb %}

Dim options As New DeserializationOptions()
Me.pivotGridControl1.Deserialize("D:\PivotGrid.xml", options)

{% endhighlight %}

{% endtabs %}

### Deserialize sorted items

By default, the pivot grid control allows to deserialize the sorting operation. The deserialization of sorted items can be disabled by setting the 'DeserializeSorting' property to false.

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

### Deserialize grouping bar

By default, the pivot grid control allows to deserialize the settings of grouping bar. The deserialization of settings of grouping bar can be disabled by setting the 'DeserializeGrouping' property to false.

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

### Deserialize filtered items

By default, the pivot grid control allows to deserialize the filtering operation. The deserialization of filtered items can be disabled by setting the 'DeserializeFiltering' property to false.

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

### Deserialize pivot items

By default, the pivot grid control allows to deserialize the collection of pivot items and pivot calculations. The deserialization of row pivot items and column pivot items can be disabled by setting the properties of 'DeserializePivotRows' and `DeserializePivotColumns` to false. Similarly, the deserialization of pivot calculation items can be disabled by setting the 'DeserializePivotCalculations' property to false.

{% tabs %}

{% highlight c# %}

using (FileStream fileStream = File.OpenRead("PivotGrid.xml"))
{
    DeserializationOptions options = new DeserializationOptions();
    options.DeserailizePivotRows = false;
    options.DeserializePivotColumns = false;
    options.DeserializePivotCalculations = false;
    this.pivotGridControl1.Deserialize(fileStream, options);
}

{% endhighlight %}

{% highlight vb %}

Using fileStream As FileStream = File.OpenRead("PivotGrid.xml")
    Dim options As New DeserializationOptions()
    options.DeserailizePivotRows = False
    options.DeserializePivotColumns = False
    options.DeserializePivotCalculations = False
    Me.pivotGridControl1.Deserialize(fileStream, options)
End Using

{% endhighlight %}

{% endtabs %}

### Deserialize conditional formats

By default, the pivot grid control allows to deserialize the conditional formats applied on the pivot grid. The deserialization of conditional formats can be disabled by setting the 'DeserializeConditionalFormats' property to false.

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

### Deserialize expand and collapse state

By default, the pivot grid control allows to deserialize the expand and collapse state of pivot items. The deserialization of expand and collapse state of pivot items can be disabled by setting the 'DeserializeExpandCollapseState' property to false.

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