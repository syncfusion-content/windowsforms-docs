---
layout: post
title: Filtering in Windows Forms ComboBox control | Syncfusion
description: Learn about Filtering support in Syncfusion Windows Forms ComboBox (SfComboBox) control and more details.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Filtering in Windows Forms ComboBox (SfComboBox)

The [Windows Forms ComboBox](https://www.syncfusion.com/winforms-ui-controls/combobox) (SfComboBox) support you to filter the items by setting the [Filter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_Filter) property of `DropDownListView` to a predicate that will be called for every data item to determine whether the item is visible or not.

N> The [RefreshFilter()](https://help.syncfusion.com/cr/windowsforms/Syncfusion.DataSource.DataSource.html#Syncfusion_DataSource_DataSource_RefreshFilter) method should be called after the filter predicate set.

{% tabs %}
{% highlight c# %}
//Filter
sfComboBox1.DropDownListView.View.Filter = FilterItem;
sfComboBox1.DropDownListView.View.RefreshFilter();

//Filter predicate
private bool FilterItem(object data)
{
  if ((data as USState).LongName.StartsWith("C"))
    return true;
  return false;
}
{% endhighlight %}
{% highlight vb %}
'Filter
sfComboBox1.DropDownListView.View.Filter = AddressOf FilterItem
sfComboBox1.DropDownListView.View.RefreshFilter()

'Filter predicate
private Boolean FilterItem(Object data)
  If (TryCast(data, USState)).LongName.StartsWith("C") Then
	Return True
  End If
  Return False
{% endhighlight %}
{% endtabs %}

![Filtering_img1](Filtering_images/Filtering_img1.png)
