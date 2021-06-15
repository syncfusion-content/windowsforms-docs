---
layout: post
title: Sorting in Windows Forms ListView Control | Syncfusion
description: Learn here all about sorting feature of Syncfusion Windows Forms ListView (SfListView) control and more.
platform: windowsforms
control: SfListView
documentation: ug
---

# Sorting in Windows Forms ListView (SfListView)
The SfListView supports sorting the data either in ascending or descending order by using [DataSource.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_SortDescriptors) property and by using the custom logic.

## Programmatic sorting
Sort the data by creating the [SortDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.SortDescriptor.html) with required property name and direction and add it into the [DataSource.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_SortDescriptors) property.

SortDescriptor object holds the following three properties:

*	`PropertyName`: Describes the name of the sorted property.
*	`Direction`: Describes an object of type `ListSortDirection` that defines the sorting direction.
*	`Comparer`: Describes the comparer to be applied when sorting the items.

{% tabs %}
{% highlight c# %}
listView.View.SortDescriptors.Add(new SortDescriptor()
{
    PropertyName = "CountryName",
    Direction = ListSortDirection.Ascending,
});
{% endhighlight %}
{% highlight vb %}
listView.View.SortDescriptors.Add(New SortDescriptor() With {.PropertyName = "Continent", .Direction = ListSortDirection.Ascending})
{% endhighlight %}
{% endtabs %}
      
![Programmatic Sorting in Windows Forms ListView](Sorting_images/Sorting_img1.png)
               
## Custom sorting
Sort the items based on the custom logic. It can be applied to the [SfListView.DataSource.SortComparer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_SortComparer) or [SortDescriptor.Comparer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.SortDescriptor.html#Syncfusion_DataSource_SortDescriptor_Comparer) property added to the [DataSource.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_SortDescriptors) collection.

In custom sort comparer, all the items in SfListView is sorted with length of an item.

{% tabs %}
{% highlight c# %}
sfListView1.View.SortDescriptors.Add(new Syncfusion.DataSource.SortDescriptor()
{
    PropertyName = "CountryName",
    Direction = Syncfusion.DataSource.ListSortDirection.Descending,
    Comparer = new CustomSortComparer()
});
public class CustomSortComparer : IComparer<object>, ISortDirection
{
   public CustomSortComparer()
   {
      this.SortDirection = Syncfusion.DataSource.ListSortDirection.Ascending;
   }

   public Syncfusion.DataSource.ListSortDirection SortDirection
   {
      get;
      set;
   }

   public int Compare(object x, object y)
   {
       int groupX;
       int groupY;
       groupX = (x as CountryInfo).CountryName.Length;
       groupY = (y as CountryInfo).CountryName.Length;
            
        if (groupX.CompareTo(groupY) > 0)
             return SortDirection == Syncfusion.DataSource.ListSortDirection.Ascending ? 1 : -1;
        else if (groupX.CompareTo(groupY) == -1)
             return SortDirection == Syncfusion.DataSource.ListSortDirection.Ascending ? -1 : 1;
        else
             return 0;
   }
}
{% endhighlight %}
{% highlight vb %}
sfListView1.View.SortDescriptors.Add(New Syncfusion.DataSource.SortDescriptor() With {.PropertyName = "Continent", .Direction = Syncfusion.DataSource.ListSortDirection.Descending, .Comparer = New CustomGroupComparer()})
public class CustomSortComparer : IComparer(Of Object), ISortDirection
   public CustomSortComparer()
	  Me.SortDirection = Syncfusion.DataSource.ListSortDirection.Ascending

   public Syncfusion.DataSource.ListSortDirection SortDirection {get;set;}

   public Integer Compare(Object x, Object y)
	   Dim groupX As Integer
	   Dim groupY As Integer

	   groupX = (TryCast(x, CountryInfo)).CountryName.Length
	   groupY = (TryCast(y, CountryInfo)).CountryName.Length

		If groupX.CompareTo(groupY) > 0 Then
			 Return If(SortDirection = Syncfusion.DataSource.ListSortDirection.Ascending, 1, -1)
		ElseIf groupX.CompareTo(groupY) = -1 Then
			 Return If(SortDirection = Syncfusion.DataSource.ListSortDirection.Ascending, -1, 1)
		Else
			 Return 0
		End If
{% endhighlight %}
{% endtabs %}

![ Custom Sorting in Windows Forms ListView](Sorting_images/Sorting_img2.png)

## Sort the items with grouping
The SfListView allows sorting the items with grouping by adding the [DataSource.GroupDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_GroupDescriptors) and the [DataSource.SortDescriptors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_SortDescriptors) with required property name.

{% tabs %}
{% highlight c# %}
listView.View.GroupDescriptors.Add(new GroupDescriptor()
{
   PropertyName = "Continent",                     
});
listView.View.SortDescriptors.Add(new SortDescriptor()
{
   PropertyName = "Continent",
   Direction = ListSortDirection.Descending,
});
{% endhighlight %}
{% highlight vb %}
listView.View.GroupDescriptors.Add(New GroupDescriptor() With {.PropertyName = "Continent"})
listView.View.SortDescriptors.Add(New SortDescriptor() With {.PropertyName = "Continent", .Direction = ListSortDirection.Descending})
{% endhighlight %}
{% endtabs %}

![Sort item with Grouping in Windows Forms ListView](Sorting_images/Sorting_img3.png)
