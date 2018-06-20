---
layout: post
title: Selection
description: This section explains about the Selection support in SfListView.
platform: windowsforms
control: SfListView
documentation: ug
---

# Selection
This section explains how to perform selection and its related operations in the SfListView.

## UI Selection
The control has different selection modes to perform selection operations as listed as follows:

*	None: Allows disabling selection.
*	One: Allows selecting single item only. When clicking on the selected item, selection not will not be cleared. This is the default value for `SfListView.SelectionMode`.
*	MultiSimple: Allows selecting more than one item. Selection is not cleared when selecting more than one items. When clicking on the selected item, selection gets cleared.
*	MultiExtended: Allows selecting more than one item by select and drag items. Also, we can select multiple items by tap and hold Ctrl key and select items.	
    
{% tabs %}
{% highlight c# %}
sfListView1.SelectionMode = SelectionMode.MultiSimple;
{% endhighlight %}
{% highlight vb %}
sfListView1.SelectionMode = SelectionMode.MultiSimple
{% endhighlight %}
{% endtabs %}   
         
![](Selection_images/Selection_img1.png)
 
## Programmatic Selection
When the `SfListView.SelectionMode` is other than None, the item or items in the SfListView can be selected from the code by setting the `SfListView.SelectedItem`, `SfListView.SelectedIndex` or adding items to the `SfListView.SelectedItems` property based on the `SfListView.SelectionMode`.

When the selection mode is `One`, programmatically select an item by setting the underlying object to the `SfListView.SelectedItem` or `SfListView.SelectedIndex` property.

{% tabs %}
{% highlight c# %}
sfListView1.SelectedItem = sfListView1.View.DisplayItems[4];
{% endhighlight %}
{% highlight vb %}
sfListView1.SelectedItem = sfListView1.View.DisplayItems[4];
{% endhighlight %}
{% endtabs %}    
 
 ![](Selection_images/Selection_img2.png)
 
{% tabs %}
{% highlight c# %}
sfListView1.SelectedIndex = 10;
{% endhighlight %}
{% highlight vb %}
sfListView1.SelectedIndex = 10
{% endhighlight %}
{% endtabs %} 
 
 ![](Selection_images/Selection_img3.png)
 
Multiple items can be selected by adding data objects to `SelectedItems` property.

{% tabs %}
{% highlight c# %}
foreach (var item in sfListView1.View.DisplayItems)
{
   var obj = item as CountryInfo;
   if (obj.CountryName[0].ToString() == "U")
      sfListView1.SelectedItems.Add(item);
}
{% endhighlight %}
{% highlight vb %}
For Each item In sfListView1.View.DisplayItems
   Dim obj = TryCast(item, CountryInfo)
   If obj.CountryName(0).ToString() = "U" Then
	  sfListView1.SelectedItems.Add(item)
   End If
Next item
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img4.png)

## Selected items

### Get selected items

The SfListView gets allthe selected items through the `SfListView.SelectedItems` property and gets the single item by using the `SfListView.SelectedItem` or `SfListView.SelectedIndex` property.                              

### Clear Selected items

The selected items can be cleared by calling the `SelectedItems.Clear()` method.

{% tabs %}
{% highlight c# %}
sfListView1.SelectedItems.Clear();
{% endhighlight %}
{% highlight vb %}
sfListView1.SelectedItems.Clear()
{% endhighlight %}
{% endtabs %}

## Hot tracking
SfListView supports hover selection on item, when mouse pointer moves over an item by setting `SfListview.HotTracking` as true.

{% tabs %}
{% highlight c# %}
sfListView1.HotTracking = true;
{% endhighlight %}
{% highlight vb %}
sfListView1.HotTracking = true
{% endhighlight %}
{% endtabs %}
 
![](Selection_images/Selection_img5.png)
 
## Appearance
SfListView allows to customize the appearance of the selected items or mouse hover items through `SfListView.Style `property.

### Change the Background and Foreground Color for Selection
The selection background and foreground color can be changed of by `SfListView.Style.SelectionStyle` property.

{% tabs %}
{% highlight c# %}
sfListView1.Style.SelectionStyle.SelectionBackColor = Color.LightSeaGreen;
sfListView1.Style.SelectionStyle.SelectionForeColor = Color.DarkBlue;
{% endhighlight %}
{% highlight vb %}
sfListView1.Style.SelectionStyle.SelectionBackColor = Color.LightSeaGreen
sfListView1.Style.SelectionStyle.SelectionForeColor = Color.DarkBlue
{% endhighlight %}
{% endtabs %}
 
![](Selection_images/Selection_img6.png)
 
### Change the Background and Foreground Color for Hover Selection
The selection background and foreground color can be changed of by `SfListView.Style.SelectionStyle` property.

{% tabs %}
{% highlight c# %}
sfListView1.Style.SelectionStyle.HoverBackColor = Color.PaleVioletRed;
sfListView1.Style.SelectionStyle.HoverForeColor = Color.GreenYellow;
{% endhighlight %}
{% highlight vb %}
sfListView1.Style.SelectionStyle.HoverBackColor = Color.PaleVioletRed
sfListView1.Style.SelectionStyle.HoverForeColor = Color.GreenYellow
{% endhighlight %}
{% endtabs %}

![](Selection_images/Selection_img7.png)
 
## Events

### SelectionChanging event

The `SelectionChanging` event is raised while selecting an item at the execution time. `ItemSelectionChangingEventArgs` has the following members which provides the information for SelectionChanging event:

* `AddedItems`: Gets collection of the underlying data objects where the selection is going to process.
* `RemovedItems`: Gets collection of the underlying data objects where the selection is going to remove.

You can cancel the selection process within this event by setting the ItemSelectionChangingEventArgs.Cancel property to true.
The SelectionChanging event is used for the following use case:
*	Disable the selection of the particular item based on the underlying data.

{% tabs %}
{% highlight c# %}
sfListView1.SelectionChanging += new EventHandler<ItemSelectionChangingEventArgs>(SfListView1_SelectionChanging);

private void SfListView1_SelectionChanging(object sender, ItemSelectionChangingEventArgs e)
{
    if ((sender as SfListView).SelectedItems.Count > 0)
                e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.SelectionChanging, AddressOf SfListView1_SelectionChanging

Private Sub SfListView1_SelectionChanging(ByVal sender As Object, ByVal e As ItemSelectionChangingEventArgs)
	If (TryCast(sender, SfListView)).SelectedItems.Count > 0 Then
				e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

### SelectionChanged event
The `SelectionChanged` event will occur once selection process has been completed for the selected item in the SfListView. `ItemSelectionChangedEventArgs` has the following members which provides information for SelectionChanged event:

* `AddedItems`: Gets collection of the underlying data objects where the selection has been processed.
* `RemovedItems`: Gets collection of the underlying data objects where the selection has been removed.

The SelectionChanged event used for the following use cases:
•	Clears all the selected item.
•	Removes the particular selected item.
•	Gets the index of the selected item.

{% tabs %}
{% highlight c# %}
sfListView1.SelectionChanged += new EventHandler<ItemSelectionChangedEventArgs>(SfListView1_SelectionChanged);
private void SfListView1_SelectionChanged(object sender, ItemSelectionChangedEventArgs e)
{
      if (e.AddedItems.Count > 0)
          (sender as SfListView).SelectedItems.Clear();
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.SelectionChanged, AddressOf SfListView1_SelectionChanged
Private Sub SfListView1_SelectionChanged(ByVal sender As Object, ByVal e As ItemSelectionChangedEventArgs)
	  If e.AddedItems.Count > 0 Then
		  TryCast(sender, SfListView).SelectedItems.Clear()
	  End If
End Sub
{% endhighlight %}
{% endtabs %}

## Disable Selection on particular item
The selection of a particular set of items can be disabled based on the `SfListView.SelectedItems` of the underlying collections.

{% tabs %}
{% highlight c# %}
public partial class Form1: Form
{
    Public Form1()
      {
         InitializeComponent();
         sfListView1.SelectionChanged += new EventHandler<ItemSelectionChangedEventArgs>(SfListView1_SelectionChanged);
   }
}
private void SfListView1_SelectionChanging(object sender, ItemSelectionChangingEventArgs e)
{
    if (e.AddedItems.Count > 0 && (e.AddedItems[0] as CountryInfo).CountryName == "Mexico")
          e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class Form1
	Inherits Form
	Private Public Sub New()
		 InitializeComponent()
		  AddHandler sfListView1.SelectionChanging, AddressOf SfListView1_SelectionChanging
	End Sub
End Class

Private Sub SfListView1_SelectionChanging(ByVal sender As Object, ByVal e As ItemSelectionChangingEventArgs)
	   If e.AddedItems.Count > 0 AndAlso (TryCast(e.AddedItems(0), CountryInfo)).CountryName = "Mexico" Then
				e.Cancel = True
	   End If
End Sub
{% endhighlight %}
{% endtabs %}