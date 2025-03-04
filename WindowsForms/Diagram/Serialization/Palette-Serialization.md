---
layout: post
title: Palette Serialization in Windows Forms Diagram control | Syncfusion®
description: Learn about Palette Serialization support in Syncfusion® Windows Forms Diagram control and more details.
platform: windowsforms
control: Diagram
documentation: ug
---

# Palette Serialization in Windows Forms Diagram

Palette serialization allows users to save and load the state of a palette, including all its symbols and their properties. This makes it easier to persist the palette across sessions or share it between applications.

### Saving a Palette

In a palette, the [DataContractSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractserializer?view=net-8.0) is used for serialization. The functionalities provided by `DataContractSerializer` apply to palette serialization, supporting saving the palette to an XML file while preserving all symbols. The palette's state is fully maintained during serialization.

{% tabs %}
{% highlight c# %}

SaveFileDialog saveFileDialog = new SaveFileDialog();
saveFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
{
    SymbolPalette currentSymbolPalette = paletteGroupBar1.CurrentSymbolPalette;
    string strSavePath = saveFileDialog.FileName;
    if (currentSymbolPalette != null)
    {
        currentSymbolPalette.SavePalette(strSavePath);
    }
}

{% endhighlight %}
{% endtabs %}


### Loading Palettes Using DataContractSerializer

Loading a palette from an XML file involves deserializing the XML data back into a palette object, ensuring that all symbols and their properties are accurately restored.

{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string strFileName = openFileDialog.FileName;
    paletteGroupBar1.LoadPalette(strFileName);
}

{% endhighlight %}
{% endtabs %}
