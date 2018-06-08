---
layout: post
title: Syncfusion Essential Windows Forms
description: This section explains about the SfListView
platform: windowsforms
control: SfListView
documentation: ug
---

# Getting Started 
This section provides a quick overview for getting started with the SfListView for WinForms. Walk through the entire process of creating the real world SfListView. 

## Assembly Deployment
The following list of assemblies should be added as reference from the Assemblies folder to use the SfListView in the application:

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
Syncfusion.DataSource.WinForms assembly contains fundamental and base classes for view responsible for data processing operations handled in SfListView.
</td>
</tr>
<tr>
<td>
Syncfusion.SfListView.WinForms
</td>
<td>
Syncfusion.SfListView.WinForms assembly contains classes that handles all UI operations of SfListView and SfListView. The SfListView control is present in Syncfusion.WinForms.ListView namespace.
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

## Creating Application with SfListView control
In this walk through, users will create WinForms application that contains SfListView control.

### Creating the Project
Create new Windows Forms Project in Visual Studio to display SfListView with data objects.

### Adding Control via Designer
SfListView control can be added to the application by dragging it from Toolbox and dropping it in Designer. The required assembly references will be added automatically.

![](GettingStarted_images/GettingStarted_img1.png)

### Adding Control in Code
To add control manually, follow the steps:

1.Add the below required assembly references to the project,

* 	Syncfusion.Core.WinForms

*	Syncfusion.DataSource.WinForms

* 	Syncfusion.GridCommon.WinForms

*   Syncfusion.SfListView.WinForms


2.Create the SfListView control instance and add it to the control collection of Form.

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
            SfListView sfListView1 = new SfListView ();
            sfListView1.Location = new Point(100, 100);
            sfListView1.Size = new Size(300,320);
            this.Controls.Add(sfListView1);
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
			Dim listView As New SfListView()
            listView.Location = New Point(100,100)
            listView.Size = New Size(300,320)
            Me.Controls.Add(listview)   
		End Sub
	End Class
End Namespace
{% endhighlight %}
{% endtabs %}

### Creating Data for Sample Application


1) Create data object class named “CountryInfo” and declare properties as shown below,

{% tabs %}
{% highlight c# %}

public class CountryInfo
    {
        public string CountryName { get; set; }
        public string Continent { get; set; }
    }
{% endhighlight %}
{% highlight vb %}

Public Class CountryInfo
		Public Property CountryName() As String
		Public Property Continent() As String
 End Class
 {% endhighlight %}
 {% endtabs %}
 
 
2) Create a List<CountryInfo> collection is initialized in GetDataSource method to add several data objects.
     
{% tabs %}
{% highlight c# %}

public List<CountryInfo> GetDataSource()
        {
            List<CountryInfo> countryInfoCollection = new List<CountryInfo>();
            countryInfoCollection.Add(new CountryInfo() { CountryName = "China", Continent = "Asia" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "India", Continent = "Asia" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Japan", Continent = "Asia" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Malaysia", Continent = "Asia" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Singapore", Continent = "Asia" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Kenya", Continent = "Africa" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Nigeria", Continent = "Africa" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "South Africa", Continent = "Africa" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Uganda", Continent = "Africa" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Zimbabwe", Continent = "Africa" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "France", Continent = "Europe" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Germany", Continent = "Europe" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Italy", Continent = "Europe" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Spain", Continent = "Europe" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "United Kingdom", Continent = "Europe" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Canada", Continent = "North America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Cuba", Continent = "North America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Jamaica", Continent = "North America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Mexico", Continent = "North America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "United States of America", Continent = "North America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Australia", Continent = "Oceania" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "New Zealand", Continent = "Oceania" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Argentina", Continent = "South America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Brazil", Continent = "South America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Chile", Continent = "South America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Colombia", Continent = "South America" });
            countryInfoCollection.Add(new CountryInfo() { CountryName = "Uruguay", Continent = "South America" });
            return countryInfoCollection;
        }
{% endhighlight %}
{% highlight vb %}

Public Function GetDataSource() As List(Of CountryInfo)
			Dim countryInfoCollection As New List(Of CountryInfo)()
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "China", .Continent = "Asia"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "India", .Continent = "Asia"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Japan", .Continent = "Asia"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Malaysia", .Continent = "Asia"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Singapore", .Continent = "Asia"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Kenya", .Continent = "Africa"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Nigeria", .Continent = "Africa"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "South Africa", .Continent = "Africa"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Uganda", .Continent = "Africa"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Zimbabwe", .Continent = "Africa"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "France", .Continent = "Europe"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Germany", .Continent = "Europe"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Italy", .Continent = "Europe"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Spain", .Continent = "Europe"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "United Kingdom", .Continent = "Europe"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Canada", .Continent = "North America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Cuba", .Continent = "North America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Jamaica", .Continent = "North America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Mexico", .Continent = "North America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "United States of America", .Continent = "North America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Australia", .Continent = "Oceania"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "New Zealand", .Continent = "Oceania"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Argentina", .Continent = "South America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Brazil", .Continent = "South America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Chile", .Continent = "South America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Colombia", .Continent = "South America"})
			countryInfoCollection.Add(New CountryInfo() With {.CountryName = "Uruguay", .Continent = "South America"})
			Return countryInfoCollection
End Function
{% endhighlight %}
{% endtabs %}
 
### Binding to data

To bind the SfListView to data, set the `SfListView.DataSource` property to an `IEnumerable` implementation.
You can bind a property of the underlying datasource to display for SfListView by using the `DisplayMember` property. 

{% tabs %}
{% highlight c# %}
sfListView1.DataSource = GetDataSource();
sfListView1.DisplayMember = “CountryName”;  

{% endhighlight %}
{% highlight vb %}
sfListView1.DataSource = GetDataSource()
sfListView1.DisplayMember = “CountryName”  

{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img2.png)

## Grouping
The SfListView allows displaying the items in a group using the `SfListView.View.GroupDescriptors` property. Create `GroupDescriptor` for the property to be grouped and add it in the View.GroupDescriptors collection.

GroupDescriptor object holds the following properties:

•	`PropertyName`: Describes name of the property to be grouped.

•	`KeySelector`: Describes selector to return the group key.

•	`Comparer`: Describes comparer to be applied when sorting takes place.

{% tabs %}
{% highlight c# %}
listView.View.GroupDescriptors.Add(new GroupDescriptor()
{
PropertyName = “Continent”,                     
});

{% endhighlight %}
{% highlight vb %}
listView.View.GroupDescriptors.Add(New GroupDescriptor() With {.PropertyName = “  Continent ”})
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img3.png)

## Sorting
The SfListView allows sorting on its data by using the `SfListView.View.SortDescriptorsproperty`. Create `SortDescriptor` for the property to be sorted and add it into the View.SortDescriptors collection.

SortDescriptor object holds the following three properties:

•	`PropertyName`: Describes name of the sorted property.

•	`Direction`: Describes an object of type `ListSortDirection` defines the sorting direction.

•	`Comparer`: Describes a comparer to be applied when sorting takes place.

{% tabs %}
{% highlight c# %}
listView.View.SortDescriptors.Add(new SortDescriptor()
{
PropertyName = “Continent”,
Direction = ListSortDirection.Descending,
});
{% endhighlight %}
{% highlight vb %}
listView.View.SortDescriptors.Add(New SortDescriptor() With {.PropertyName = “Continent”, .Direction = ListSortDirection.Descending})
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img4.png)

## Filtering
The SfListView supports to filter the records in view by setting predicate to the `SfListView.View.Filter` property. Call the `View.RefreshFilter` method after assigning the Filter property for refreshing the view.
To filter the items based on the Continent property of the underlying data, follow the code example:

{% tabs %}
{% highlight c# %}
listView.View.Filter = CustomFilter;
listView.View.RefreshFilter();
public bool CustomFilter(object obj)
{
    if ((obj as Country).Continent == "Asia" || (obj as Country).Continent == "North America" || (obj as Country).Continent == "Oceania")
        return true;
    return false;
}
{% endhighlight %}
{% highlight vb %}
listView.View.Filter = AddressOf CustomFilter
listView.View.RefreshFilter()
public Boolean CustomFilter(Object obj)
  If (TryCast(obj, Country)).Continent = "Asia" OrElse (TryCast(obj, Country)).Continent = "North America" OrElse (TryCast(obj, Country)).Continent = "Oceania" Then
	Return True
  End If
  Return False
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img5.png)

## Selection
The SfListView allows selecting the item by setting the` SfListView.SelectionMode` property. Set the SfListView.SelectionMode property to One, MultiSimple, MultiExtended and None based on the requirements. Information about the selected item can be tracked using the `SfListView.SelectedItem`, `SfListView.SelectedIndex` and `SfListView.SelectedItems` properties. 

The selection operations can be handled with the help of `SelectionChanging` and `SelectionChanged` events of the SfListView.

{% tabs %}
{% highlight c# %}
    listView.SelectionMode = SelectionMode.One;
{% endhighlight %}
{% highlight vb %}
    listView.SelectionMode = SelectionMode.One
{% endhighlight %}
{% endtabs %}

![](GettingStarted_images/GettingStarted_img6.png)
