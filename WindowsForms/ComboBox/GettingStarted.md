---
layout: post
title: Getting Started with Windows Forms ComboBox control | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Getting Started with Windows Forms ComboBox (SfComboBox)
This section provides a quick overview for working with the ComboBox in WinForms.

## Assembly Deployment
Refer to the [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#sfcombobox) section for the list of assemblies or NuGet package that must be referenced to use the control in any application.

To install via NuGet Package Manager Console, run:
```
Install-Package Syncfusion.SfListView.WinForms
```

## Creating Application with SfComboBox control
In this walkthrough, you will create a WinForms application that contains the SfComboBox control.

### Creating the Project
Create a new Windows Forms project in Visual Studio to display the SfComboBox control.

### Adding Control via Designer
The SfComboBox control can be added to the application by dragging it from the toolbox and dropping it in the designer. The required assembly references will be added automatically.

![GettingStarted_img1](GettingStarted_images/GettingStarted_img1.png)

### Adding Control in Code
To add the control manually, follow these steps:

1. Add the required assembly references below to the project.

    * 	Syncfusion.Core.WinForms

    *	Syncfusion.DataSource.WinForms

    * 	Syncfusion.GridCommon.WinForms

    *   Syncfusion.SfListView.WinForms


2. Create the SfComboBox control instance and add it to the control collection of the form.

{% capture codesnippet1 %}
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
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

### Binding to data

To bind the SfComboBox to data, set the [SfComboBox.DataSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_DataSource) property to an `IEnumerable` implementation. You can bind a property of the underlying data source to display for SfComboBox by using the [DisplayMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_DisplayMember) property, and you can bind a property to use as the actual value for the items by using the [ValueMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_ValueMember) property.

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

> When the underlying data is a primitive type such as `string` or `int`, `DisplayMember` and `ValueMember` are not required.

![GettingStarted_img2](GettingStarted_images/GettingStarted_img2.png)

## Auto complete
Auto complete provides three different ways to display suggestions in the drop-down list.

They are, 
 
* Suggest: Displays suggestion in drop-down list.

* Append: Appends first suggestion to the text.

* SuggestAppend: Both of these.

Auto complete can be set by using the [AutoCompleteMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteMode) property. Use the [AutoCompleteSuggestMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_AutoCompleteSuggestMode) property to control case sensitivity (e.g., `StartsWith`, `Contains`, `Equals`).

{% tabs %}
{% highlight c# %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Append;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.AutoCompleteMode = AutoCompleteMode.Append
{% endhighlight %}
{% endtabs %}

![GettingStarted_img3](GettingStarted_images/GettingStarted_img3.png)

## Multi selection
This allows you to select multiple values from the drop-down list. The multi selection combo box can be enabled by setting the [ComboBoxMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_ComboBoxMode) property as `MultiSelection`.

{% tabs %}
{% highlight c# %}
sfComboBox1.ComboBoxMode = ComboBoxMode.MultiSelection;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.ComboBoxMode = ComboBoxMode.MultiSelection
{% endhighlight %}
{% endtabs %}

![GettingStarted_img4](GettingStarted_images/GettingStarted_img4.png)

## Selected Items

The index of the selected item can be retrieved by using the [SelectedIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_SelectedIndex) property. The value of the selected item can be retrieved by using the [SelectedValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_SelectedValue) property. It returns the value of the property bound to the `ValueMember` property. If the `ValueMember` is not initialized, it returns the value of the property bound to the `DisplayMember`. The selected item of the SfComboBox can be retrieved by using the [SelectedItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_SelectedItem) property. In `MultiSelection` mode, use the [SelectedItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.ListView.SfComboBox.html#Syncfusion_WinForms_ListView_SfComboBox_SelectedItems) collection to retrieve all selected values.

N> You can also explore our [WinForms ComboBox example](https://github.com/syncfusion/winforms-demos/tree/master/sfcombobox) that shows how to allows users to type a value, choose an item, or choose multiple items using a multiselect option. 