---
layout: post
title: Palette Serialization in Windows Forms Diagram | Syncfusion®
description: Learn about palette serialization in the Syncfusion® Windows Forms Diagram control, including saving and loading symbol palettes.
platform: windowsforms
control: Diagram
documentation: ug
---

# Palette Serialization in Windows Forms Diagram

Palette serialization allows users to save and load the state of a palette, including all its symbols and their properties. This makes it easier to persist the palette across sessions or share it between applications.

## Saving a Palette

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
{% highlight vb %}

Dim saveFileDialog As New SaveFileDialog()
saveFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*"
If saveFileDialog.ShowDialog(Me) = DialogResult.OK Then
    Dim currentSymbolPalette As SymbolPalette = paletteGroupBar1.CurrentSymbolPalette
    Dim strSavePath As String = saveFileDialog.FileName
    If currentSymbolPalette IsNot Nothing Then
        currentSymbolPalette.SavePalette(strSavePath)
    End If
End If

{% endhighlight %}
{% endtabs %}


## Loading Palettes Using DataContractSerializer

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
{% highlight vb %}

Dim openFileDialog As New OpenFileDialog()
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*"
If openFileDialog.ShowDialog(Me) = DialogResult.OK Then
    Dim strFileName As String = openFileDialog.FileName
    paletteGroupBar1.LoadPalette(strFileName)
End If

{% endhighlight %}
{% endtabs %}
