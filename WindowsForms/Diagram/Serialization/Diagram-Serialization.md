---
layout: post
title: Diagram Serialization in Windows Forms Diagram control | Syncfusion
description: Learn about Diagram Serialization support in Syncfusion Windows Forms Diagram control and more details.
platform: windowsforms
control: Diagram
documentation: ug
---

# Serialization in Windows Forms Diagram
Serialization is the process of converting the state of Diagram objects into a byte stream, allowing them to be recreated later when needed. These streams can be stored in a database, a file, or in memory. The reverse process is known as Deserialization.

## Save
In the Diagram, [DataContractSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractserializer?view=net-8.0) is used for serialization. The features provided by `DataContractSerializer` apply to Diagram serialization, supporting the saving of the diagram to a stream while preserving all its properties.

### Saving Diagram via Filename

{% tabs %}
{% highlight c# %}

SaveFileDialog saveFileDialog = new SaveFileDialog();
saveFileDialog.Filter = @"XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
{
    // Save Diagram via file path
    diagram1.SaveXml(this.saveFileDialog.FileName);

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Saving Diagram via Stream

{% tabs %}
{% highlight c# %}

SaveFileDialog saveFileDialog = new SaveFileDialog();
saveFileDialog.Filter = @"XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
{
    // Save Diagram via file stream
    using (Stream stream = File.Open(saveFileDialog.FileName, FileMode.CreateNew))
    {
        diagram1.SaveXml(stream);
    }

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

## Load
On Deserialization, the saved stream is used to load the Diagram’s nodes and connectors into the current view. This allows you to continue working on the previously saved Diagram by loading the appropriate stream.

### Loading Diagram from File Path
{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load Diagram from file path
    diagram1.LoadXml(filePath);

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Loading Diagram from Stream
{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load Diagram from file stream
    using (Stream myStream = openFileDialog.OpenFile())
    {
        diagram1.LoadXml(myStream);
    }

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Loading Diagram from file with Exception Handling
{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load Diagram from File with Exception Handling
    diagram1.LoadXml(filePath, out Exception exception);

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

### Loading Diagram from Stream with Exception Handling
{% tabs %}
{% highlight c# %}

OpenFileDialog openFileDialog = new OpenFileDialog();
openFileDialog.Filter = "XML Diagram (*.xml)|*.xml|All files (*.*)|*.*";
openFileDialog.DefaultExt = "*.xml";
openFileDialog.Title = "Open Diagram";
if (openFileDialog.ShowDialog(this) == DialogResult.OK)
{
    string filePath = openFileDialog.FileName;

    // Load Diagram from Stream with Exception Handling
    using (Stream myStream = openFileDialog.OpenFile())
    {
        diagram1.LoadXml(myStream, out Exception ex);
    }

    this.diagram1.Refresh();
}

{% endhighlight %}
{% endtabs %}

## Is the Diagram's Model Modified?  
[Modified](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html#Syncfusion_Windows_Forms_Diagram_Model_Modified) property of the Diagram's [Model](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Diagram.Model.html) is a boolean that indicates whether the `Model` has been updated. It tracks all changes made to the `Model`, including the addition of nodes and other modifications to the Diagram elements.

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