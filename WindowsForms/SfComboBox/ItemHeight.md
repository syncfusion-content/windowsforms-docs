---
layout: post
title: ItemHeight
description: This section explains about the item height in SfComboBox.
platform: windowsforms
control: SfComboBox
documentation: ug
---

# Item Height

## Setting height for the items

Height of the items in the drop-down list can be customized by using the `ItemHeight` property. The default item height is 20.

{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownListView.ItemHeight = 40;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.DropDownListView.ItemHeight = 40
{% endhighlight %}
{% endtabs %}

![](ItemHeight_images/ItemHeight_img1.png)

## Auto fit the items based on content

The SfComboBox allows dynamically adjusting size of the items based on the loaded content by defining the `sfComboBox1.DropDownListView.AutoFitMode` property. The control has two types of `AutoFitMode` as listed as follows:

* Height: Auto fits the items based on the content. It considers height of the item when the orientation is vertical.
* None: Layouts the items by `ItemHeight`.

{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownListView.AutoFitMode = AutoFitMode.Height;
{% endhighlight %}
{% highlight vb %}
sfComboBox1.DropDownListView.AutoFitMode = AutoFitMode.Height
{% endhighlight %}
{% endtabs %}

## Setting the height conditionally

The SfComboBox allows customizing the size of the drop-down item on-demand by the `sfComboBox1.DropDownListView.QueryItemHeight` event using the item index. This event is raised whenever items come to view and triggered with `QueryItemHeightEventArgs`.

The `sfComboBox1.DropDownListView.QueryItemHeight` event provides the following properties in their arguments:

* `ItemIndex`: Identifies a particular item in the SfListView.
* `ItemData`: Identifies the underlying data bound to that item.
* `ItemHeight`: Identifies the height of the queried item.
* `ItemType`: Identifies the item type of the queried item.
* `Handled`: Decides whether the specified height can be set to the item or not. The default value is false. When this property is not set, the decided size will not set to the item.

{% tabs %}
{% highlight c# %}
sfComboBox1.DropDownListView.QueryItemHeight += new EventHandler<QueryItemHeightEventArgs>(DropDownListView_QueryItemHeight);
private void DropDownListView_QueryItemHeight(object sender, QueryItemHeightEventArgs e)
{
  if (e.ItemIndex == 1)
    {
       e.ItemHeight = 70;
       e.Handled = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfComboBox1.DropDownListView.QueryItemHeight, AddressOf DropDownListView_QueryItemHeight
Private Sub DropDownListView_QueryItemHeight(ByVal sender As Object, ByVal e As QueryItemHeightEventArgs)
  If e.ItemIndex = 1 Then
	   e.ItemHeight = 70
	   e.Handled = True
  End If
End Sub
{% endhighlight %}
{% endtabs %}

![](ItemHeight_images/ItemHeight_img2.png)