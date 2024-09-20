---
layout: post
title: Diagram Serialization in Windows Forms Diagram control | Syncfusion
description: Learn about Diagram Serialization support in Syncfusion Windows Forms Diagram control and more details.
platform: windowsforms
control: Diagram
documentation: ug
---

# Serialization in Windows Forms Diagram

Serialization is the process of converting the state of diagram objects into a byte stream, allowing them to be recreated later. These streams can be stored in a database, a file, or memory. The reverse process is known as deserialization.

## Save

In the diagram, [DataContractSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractserializer?view=net-8.0) is used for serialization. The features provided by `DataContractSerializer` apply to diagram serialization, supporting saving the diagram to a stream while preserving all its properties.

### Saving a Diagram via Filename

{% tabs %}
{% highlight c# %}

SaveFileDialog saveFileDialog = new SaveFileDialog();
saveFileDialog.Filter = @"XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
{
    // Save the diagram to a file path
    diagram1.SaveXml(this.saveFileDialog.FileName);

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Saving a Diagram via Stream

{% tabs %}
{% highlight c# %}

SaveFileDialog saveFileDialog = new SaveFileDialog();
saveFileDialog.Filter = @"XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
{
    // Save the diagram to a file stream
    using (Stream stream = File.Open(saveFileDialog.FileName, FileMode.CreateNew))
    {
        diagram1.SaveXml(stream);
    }

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

## Load

Deserialization uses the saved stream to load the diagram's nodes and connectors into the current view. This allows you to continue working on the previously saved diagram by loading the appropriate stream.

### Loading a Diagram from a File Path

{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load the diagram from the file path
    diagram1.LoadXml(filePath);

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Loading a Diagram from a Stream

{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load the diagram from a file stream
    using (Stream myStream = openFileDialog.OpenFile())
    {
        diagram1.LoadXml(myStream);
    }

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Loading a Diagram from a File with Exception Handling

{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load the diagram from the file path with exception handling
    diagram1.LoadXml(filePath, out Exception exception);

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Loading a Diagram from a Stream with Exception Handling

{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load the diagram from the stream with exception handling
    using (Stream myStream = openFileDialog.OpenFile())
    {
        diagram1.LoadXml(myStream, out Exception ex);
    }

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

## Checking if the Diagram's Model is Modified

The [Modified](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_Modified) property of the Diagram's [Model](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html) is a boolean value indicating whether the diagram has any unsaved changes. It tracks all changes made to the diagram, including node additions and other modifications to the diagram elements.

{% tabs %}
{% highlight c# %}
if (diagram1 != null && diagram1.Model.Modified)
{
    MessageBoxResult messageBoxResult = System.Windows.MessageBox.Show(
                        "Do you want to save the Diagram?",
                        "SfDiagram",
                        MessageBoxButton.YesNo);
    if (messageBoxResult == MessageBoxResult.Yes)
    {
        SaveDiagram();
    }
}
{% endhighlight %}
{% endtabs %}
