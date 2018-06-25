---
layout: post
title: Filtering
description: This section explains about the filtering support in SfComboBox.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Filtering

The SfComboBox support you to filter the items by setting the `Filter` property of `DropDownListView` to a predicate that will be called for every data item to determine whether the item is visible or not.

N> The RefreshFilter() method should be called after the filter predicate set.

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

![](Filtering_images/Filtering_img1.png)
