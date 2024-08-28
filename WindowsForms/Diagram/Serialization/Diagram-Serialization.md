---
layout: post
title: Diagram Serialization in Windows Forms Diagram control | Syncfusion
description: Learn about Diagram Serialization support in Syncfusion Windows Forms Diagram control and more details.
platform: windowsforms
control: Diagram
documentation: ug
---

# Diagram Serialization in WinForms

Serialization is the process of converting an object into a format that can be easily stored or transmitted and then reconstructed later. In WinForms, diagram serialization allows you to save and load diagrams with all their properties, nodes, connectors, and other elements. Previously, [BinaryFormatter](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.formatters.binary.binaryformatter?view=net-7.0) was commonly used for this purpose. However, with the introduction of .NET 9, `BinaryFormatter` has been deprecated due to security risks and other concerns.

## Why BinaryFormatter No Longer Works in .NET 9

`BinaryFormatter` has been officially removed from .NET 9 due to several security vulnerabilities and the lack of compatibility with modern security standards. Applications that use `BinaryFormatter` for serialization will encounter runtime exceptions or compile-time errors in .NET 9 and later versions.

Due to these issues, it is essential to migrate to a more secure and reliable serialization method. The recommended alternative is the `DataContractSerializer`, which offers better security, performance, and flexibility for serializing and deserializing complex objects.

## Implementing DataContractSerializer for Diagram Serialization

[DataContractSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractserializer?view=net-8.0) is a safer and more flexible option for serializing objects in .NET. It uses XML format for serialization, which is both human-readable and easy to debug. 

### Saving Diagrams Using DataContractSerializer

{% tabs %}
{% highlight c# %}
private void SaveDiagramAsXML(object sender, EventArgs e)
{
    saveFileDialog1.Filter = @"XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
    if (this.saveFileDialog1.ShowDialog(this) == DialogResult.OK)
    {
        diagram1.SaveXml(this.saveFileDialog1.FileName);
        this.diagram1.Refresh();
    }
}
{% endhighlight %}
{% endtabs %}

In the new approach, diagrams are saved in an XML format, which makes them more readable and easier to integrate with other systems.

### Loading Diagrams Using DataContractSerializer

{% tabs %}
{% highlight c# %}
private void LoadDiagramFromXML(object sender, EventArgs e)
{
    openFileDialog1.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
    openFileDialog1.DefaultExt = "*.xml";
    openFileDialog1.Title = "Open Diagram";
    if (this.openFileDialog1.ShowDialog(this) == DialogResult.OK)
    {
        string filePath = this.openFileDialog1.FileName;
        diagram1.LoadXml(filePath);
        this.diagram1.Refresh();
    }
}
{% endhighlight %}
{% endtabs %}


## How to Serialize Your Own Classes

When you need to serialize a class that is not part of the Syncfusion source code, you can use the [DataContract](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractattribute?view=net-8.0) attribute along with the [KnownTypes](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.knowntypeattribute?view=net-8.0) property. 

To serialize a class, you must:

1. **Apply the `DataContract` Attribute:** Ensure that your class is decorated with the `DataContract` attribute. This attribute marks the class as serializable and allows you to control which properties are serialized.

2. **Define the DataMember Attributes:** Add the [DataMember](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datamemberattribute?view=net-8.0) attribute to the properties you wish to include in the serialization process.

3. **Register Known Types:** Configure the `KnownTypes` parameter of the `DataContractSerializer` object to include the types of the classes you are serializing. This step ensures that the serializer recognizes and correctly processes the types of your objects.

By following these steps, you can effectively serialize classes that are outside the Syncfusion source and integrate them into your diagram serialization process.

To learn more about the DataContractSerializer and its usage in .NET applications, refer to the [ MSDN Documentation: DataContractSerializer Overview](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractserializer)

