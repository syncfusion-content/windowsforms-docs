---
layout: post
title: CheckBoxSelectionMode
description: This section explains about the CheckBoxSelectionMode support in SfListView.
platform: windowsforms
control: SfListView
documentation: ug
---

# Check Box Selection 

## Check Box Selection Mode

SfListView provides support for loading CheckBox to each item, which allows the user to check/uncheck the corresponding item. You can display check box in each item by setting `SfListView.ShowCheckBoxes` property as true. It also provides support to process the selection in the context of state of the checkbox based on `SfListView.CheckBoxSelectionMode` property.

SfListView has following modes for processing selection based on check box state.

1.	Default – Selection and state of checkbox works independent of each other.
2.	SelectOnCheck – Item can be selected or deselected based on state of checkbox.
3.	SynchronizeSelection – Item can be selected or deselected based on state of checkbox and vice versa.
4.	CheckOnItemClick – Checkbox can be check/uncheck by clicking on item.

* Default Mode: If you don’t want to affect the selection while checking/unchecking the node CheckBox, you need to set `SfListView.CheckBoxSelectionMode` as Default.

{% tabs %}
{% highlight c# %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.Default;
{% endhighlight %}
{% highlight vb %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.Default
{% endhighlight %}
{% endtabs %}         

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img1.png)

* SelectOnCheck: If you want to select/deselect the items using CheckBox only, you need to set `SfListView.CheckBoxSelectionMode` as SelectOnCheck. 
Navigation, editing and programmatic selection are not supported in this mode.

{% tabs %}
{% highlight c# %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.SelectOnCheck;
{% endhighlight %}
{% highlight vb %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.SelectOnCheck
{% endhighlight %}
{% endtabs %}

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img2.png)

* SynchronizeSelection: If you want to synchronize the selection with item CheckBox’s IsChecked state, you need to set `SfListView.CheckBoxSelectionMode` as SynchronizeSelection. In this mode, you can select by checking checkbox and selecting/deselecting the item will check/uncheck the corresponding item checkbox.

{% tabs %}
{% highlight c# %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.SynchronizeSelection;
{% endhighlight %}
{% highlight vb %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.SynchronizeSelection
{% endhighlight %}
{% endtabs %}

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img3.png)

* CheckOnItemClick: If you want to change check/uncheck the item checkbox state by clicking item, you need to set `SfListView.CheckBoxSelectionMode` is CheckOnItemClick.
`MultiSimple` and `MultiExtended` selectionmode was not supported in this mode.

{% tabs %}
{% highlight c# %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.CheckOnItemClick;
{% endhighlight %}
{% highlight vb %}
sfListView1.CheckBoxSelectionMode = CheckBoxSelectionMode.CheckOnItemClick
{% endhighlight %}
{% endtabs %}

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img4.png)

## TriStateMode
SfListView allows to enable or disable the indeterminate state for item CheckBox using `SfListView.AllowTriStateMode` property and it is uses only for BoundMode. 
The AllowTriStateMode make use, only if `SfListView.CheckedMember` property set and must be in `System.Windows.Forms.CheckState` type. 

{% tabs %}
{% highlight c# %}
sfListView1.ShowCheckBoxes = true;
sfListView1.AllowTriStateMode = true;
sfListView1.CheckedMember = "CheckState";
{% endhighlight %}
{% highlight vb %}
sfListView1.ShowCheckBoxes = true
sfListView1.AllowTriStateMode = true
sfListView1.CheckedMember = "CheckState"
{% endhighlight %}
{% endtabs %} 

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img5.png)

## Checked Items

### Get Checked Items

The SfListView gets all the checked items through the `SfListView.CheckedItems` property. 
     
### Clear Checked Items 
      
The checked items can be cleared by calling the ‘CheckedItems.Clear()` method.

{% tabs %}
{% highlight c# %}
sfListView1.CheckedItems.Clear();
{% endhighlight %}
{% highlight vb %}
sfListView1.CheckedItems.Clear()
{% endhighlight %}
{% endtabs %}

## Select all the items
SfListview allows all items to change checked state by checking `SelectAll` item. You can enable select all item by `SfListView.AllowSelectAll` and `SfListView.ShowCheckBoxes` property as true.
 
{% tabs %}
{% highlight c# %}
sfListView1.ShowCheckBoxes = true;
sfListView1.AllowSelectAll = true;
{% endhighlight %}
{% highlight vb %}
sfListView1.ShowCheckBoxes = true
sfListView1.AllowSelectAll = true
{% endhighlight %}
{% endtabs %}
  
 ![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img6.png) 
  
## Recursive Checking
SfListView provides support for recursive checking where the checked state of group header item and group items is changed recursively based on the state of currently changed node.
You can enable recursive checking by setting `SfListView.AllowRecursiveChecking` property and `SfListView.ShowCheckBoxes` property as true.

*	The group header item will be checked only if all its group items are checked.
*	The group header item will be unchecked if all its group items are unchecked.
*	The group header item will be in Indeterminate state in other combinations of its group items.

{% tabs %}
{% highlight c# %}
sfListView1.ShowCheckBoxes = true;
sfListView1.AllowRecursiveChecking = true;
{% endhighlight %}
{% highlight vb %}
sfListView1.ShowCheckBoxes = true
sfListView1.AllowSelectAll = true
{% endhighlight %}
{% endtabs %}

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img7.png)

## Appearance
SfListView allows the item checkbox can be customized by using through `SfListView.Style.CheckBoxStyle` property.

{% tabs %}
{% highlight c# %}
sfListView1.Style.CheckBoxStyle.CheckedBackColor = Color.BlueViolet;
sfListView1.Style.CheckBoxStyle.CheckedBorderColor = Color.Black;
sfListView1.Style.CheckBoxStyle.CheckedTickColor = Color.White;
{% endhighlight %}
{% highlight vb %}
sfListView1.Style.CheckBoxStyle.CheckedBackColor = Color.BlueViolet
sfListView1.Style.CheckBoxStyle.CheckedBorderColor = Color.Black
sfListView1.Style.CheckBoxStyle.CheckedTickColor = Color.White
{% endhighlight %}
{% endtabs %}
 
![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img8.png) 
 
## Conditional Styling
SfListView allows the item checkbox can be customized by using `SfListView.DrawCheckBox` event.

{% tabs %}
{% highlight c# %}
sfListView1.DrawCheckBox += new EventHandler<DrawCheckBoxEventArgs>(SfListView1_DrawCheckBox);
private void SfListView1_DrawCheckBox(object sender, DrawCheckBoxEventArgs e)
{
   if (e.ItemType == ItemType.Record && e.ItemIndex % 3 == 0)
   {
       e.Style.CheckedBackColor = Color.Moccasin;
       e.Style.CheckedBorderColor = Color.DarkSlateGray;
       e.Style.CheckedTickColor = Color.Black;
   }       
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.DrawCheckBox, AddressOf SfListView1_DrawCheckBox
Private Sub SfListView1_DrawCheckBox(ByVal sender As Object, ByVal e As DrawCheckBoxEventArgs)
   If e.ItemType Is ItemType.Record AndAlso e.ItemIndex Mod 3 = 0 Then
	   e.Style.CheckedBackColor = Color.Moccasin
	   e.Style.CheckedBorderColor = Color.DarkSlateGray
	   e.Style.CheckedTickColor = Color.Black
   End If
End Sub
{% endhighlight %}
{% endtabs %}

![](CheckBoxSelectionMode_images/CheckBoxSelectionMode_img9.png)

## Events 

### ItemChecking Event

The `ItemChecking` event is raised while checking an item at the execution time by using ItemChecking event:

*	`ItemData`: Gets the checked itemdata object.
*	`ItemIndex`: Gets an index of checked item.
*	`NewState`: Gets the new checkstate of checked item.
*	`OldState`: Gets the old checkstate of checked item.

You can cancel the checking process within this event by setting the `ItemCheckingEventArgs.Cancel` property to true.

The ItemChecking event is used for the following use case:
*	Disable the checking process of the particular item based on the underlying data.

{% tabs %}
{% highlight c# %}
sfListView1.ItemChecking += new EventHandler<ItemCheckingEventArgs>(SfListView1_ItemChecking);
private void SfListView1_ItemChecking(object sender, ItemCheckingEventArgs e)
{
  if ((sender as SfListView).CheckedItems.Count > 0)
      e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.ItemChecking, AddressOf SfListView1_ItemChecking
Private Sub SfListView1_ItemChecking(ByVal sender As Object, ByVal e As ItemCheckingEventArgs)
  If (TryCast(sender, SfListView)).CheckedItems.Count > 0 Then
	  e.Cancel = True
  End If
End Sub
{% endhighlight %}
{% endtabs %}

### ItemCheckedEvent
The `ItemChecked` event will occur once checking process has been completed for the checked item in the SfListView by using ItemChecked event.

The ItemChecked event used for the following use cases:

*	`ItemData`: Gets the checked itemdata object.
*	`ItemIndex`: Gets an index of checked item.
*	`NewState`: Gets the new checkstate of checked item.
*	`OldState`: Gets the old checkstate of checked item.

{% tabs %}
{% highlight c# %}
sfListView1.ItemChecked += new EventHandler<Syncfusion.WinForms.ListView.Events.ItemCheckedEventArgs>(SfListView1_ItemChecked);
private void SfListView1_ItemChecked(object sender, Syncfusion.WinForms.ListView.Events.ItemCheckedEventArgs e)
{
  if ((sender as SfListView).CheckedItems.Count > 0)
      (sender as SfListView).CheckedItems.Clear();
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.ItemChecked, AddressOf SfListView1_ItemChecked
Private Sub SfListView1_ItemChecked(ByVal sender As Object, ByVal e As Syncfusion.WinForms.ListView.Events.ItemCheckedEventArgs)
  If (TryCast(sender, SfListView)).CheckedItems.Count > 0 Then
	  TryCast(sender, SfListView).CheckedItems.Clear()
  End If
End Sub
{% endhighlight %}
{% endtabs %}
