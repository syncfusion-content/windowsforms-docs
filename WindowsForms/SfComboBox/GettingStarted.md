---
layout: post
title: Syncfusion Essential Windows Forms
description: This section explains about the SfComboBox
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Getting Started 
This section provides a quick overview for working with combo box in WinForms. 

## Assembly Deployment
Following assemblies should be added as reference to use the SfComboBox control in any application.

<table>
<tr>
<td>
{{'**Required assemblies**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Syncfusion.Core.WinForms
</td>
<td>
Syncfusion.Core.WinForms assembly contains the theme related classes for the Syncfusion controls and basic components like SfScrollFrame, SfButton, SfForm and SfToolTip.
</td>
</tr>
<tr>
<td>
Syncfusion.DataSource.WinForms
</td>
<td>
Syncfusion.DataSource.WinForms assembly contains fundamental and base classes for view responsible for data processing operations handled in SfComboBox.
</td>
</tr>
<tr>
<td>
Syncfusion.SfListView.WinForms
</td>
<td>
Syncfusion.SfListView.WinForms assembly contains classes that handles all UI operations of SfComboBox and SfListView. The SfComboBox control is present in Syncfusion.WinForms.ListView namespace.
</td>
</tr>
<tr>
<td>
Syncfusion.GridCommon.WinForms
</td>
<td>
Syncfusion.GridCommon.WinForms assembly contains base classes for scrolling and utilities.
</td>
</tr>
</table>

## Creating Application with SfComboBox control
In this walk through, user will create a WinForms application that contains SfComboBox control.

### Creating the Project
Create a new Windows Forms Project in Visual Studio to display the SfCombobox control.

### Adding Control via Designer
The SfCombobox control can be added to the application by dragging it from the toolbox and dropping it in designer. The required assembly references will be added automatically.

![](GettingStarted_images/GettingStarted_img1.png)

### Adding Control in Code
To add control manually, follow the steps:

1.Add the below required assembly references to the project,

* 	Syncfusion.Core.WinForms

*	Syncfusion.DataSource.WinForms

* 	Syncfusion.GridCommon.WinForms

*   Syncfusion.SfListView.WinForms


2.Create the SfComboBox control instance and add it to the control collection of Form.

{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.ListView;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            SfComboBox sfComboBox1 = new SfComboBox();
            sfComboBox1.Location = new Point(100, 100);
            this.Controls.Add(sfComboBox1);
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Imports Syncfusion.WinForms.ListView

Namespace WindowsFormsApplication1
	Partial Public Class Form1
		Inherits Form
		Public Sub New()
			InitializeComponent()
			Dim sfComboBox1 As New SfComboBox()
			sfComboBox1.Location = New Point(100, 100)
			Me.Controls.Add(sfComboBox1)
		End Sub
	End Class
End Namespace
{% endhighlight %}
{% endtabs %}

### Binding to data

To bind the SfComboBox to data, set the `SfComboBox.DataSource` property to `IEnumerable` implementation.

{% tabs %}
{% highlight c# %}
List<string> usStates = new List<string>();
usStates.Add("Alaska");
usStates.Add("Arizona");
usStates.Add("Arkansas");
usStates.Add("California");
usStates.Add("Colorado");
usStates.Add("Connecticut");
usStates.Add("Delaware");
usStates.Add("Florida");
usStates.Add("Georgia");
sfComboBox1.DataSource = usStates;
{% endhighlight %}
{% highlight vb %}
Dim usStates As New List(Of String)()
usStates.Add("Alaska")
usStates.Add("Arizona")
usStates.Add("Arkansas")
usStates.Add("California")
usStates.Add("Colorado")
usStates.Add("Connecticut")
usStates.Add("Delaware")
usStates.Add("Florida")
usStates.Add("Georgia")
sfComboBox1.DataSource = usStates
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img2.png)

## Auto complete
Auto complete provides three different ways to display suggestions in drop-down list.

They are, 
 
* Suggest: Displays suggestion in drop-down list.

* Append: Appends first suggestion to the text.

* SuggestAppend: Both of these.

Auto complete can be set by using the `AutoCompleteMode` property.

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Append;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Append
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img3.png)

## Multi selection
This allows you to select multiple values from the drop-down list. The multi selection combo box can be enabled by setting the `ComboBoxMode` property as `MultiSelection`.

{% tabs %}
{% highlight c# %}
sfComboBox1.ComboBoxMode = ComboBoxMode.MultiSelection;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.ComboBoxMode = ComboBoxMode.MultiSelection
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img4.png)

## Select all
This enables you to choose all items in the drop-down list for multi select combo box by setting the `AllowSelectAll` property to `true`.
{% tabs %}
{% highlight c# %}
sfComboBox1.AllowSelectAll = true;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AllowSelectAll = True
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img5.png)
