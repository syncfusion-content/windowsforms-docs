---
layout: post
title: Item Sizing
description: This section explains about the Item Sizing support in SfListView.
platform: windowsforms
control: SfListView
documentation: ug
---

# Item Sizing
This section explains how to customize the item size in the SfListView.

## Customizing item and group height
Height of an item and the group header can be changed by using the [SfListView.ItemHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~ItemHeight.html) and [SfListView.GroupHeaderHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~GroupHeaderHeight.html) properties respectively.

{% tabs %}
{% highlight c# %}
sfListView1.ItemHeight = 35;
sfListView1.GroupHeaderHeight = 50;
{% endhighlight %}
{% highlight vb %}
sfListView1.ItemHeight = 35
sfListView1.GroupHeaderHeight = 50
{% endhighlight %}
{% endtabs %}

![](Item Sizing_images/ItemSizing_img1.png)

## Customize item size of an item on-demand
The SfListView allows customizing the height of an item on-demand by the [SfListView.QueryItemHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~QueryItemHeight_EV.html) event using the item index. This event is raised whenever items come to view and triggered with [QueryItemHeightEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.Events.QueryItemHeightEventArgs.html).

The SfListView.QueryItemHeight event provides the following properties in their arguments:

*	`ItemIndex`: Identifies a particular item in the SfListView.
*	`ItemData`: Identifies the underlying data bound to that item.
*	`ItemHeight`: Identifies the height of the queried item. 
*	`ItemType`: Identifies the item type of the queried item.
*	`Handled`: Decides whether the specified height can be set to the item or not. The default value is false. When this property is not set, the decided size will not set to the item.

{% tabs %}
{% highlight c# %}
sfListView1.QueryItemHeight += new EventHandler<QueryItemHeightEventArgs>(SfListView1_QueryItemHeight);
private void SfListView1_QueryItemHeight(object sender, QueryItemHeightEventArgs e)
{
   if(e.ItemIndex == 1)
   {
       e.ItemHeight = 70;
       e.Handled = true;
   }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfListView1.QueryItemHeight, AddressOf SfListView1_QueryItemHeight
Private Sub SfListView1_QueryItemHeight(ByVal sender As Object, ByVal e As QueryItemHeightEventArgs)
   If e.ItemIndex = 1 Then
	   e.ItemHeight = 70
	   e.Handled = True
   End If
End Sub
{% endhighlight %}
{% endtabs %}

![](Item Sizing_images/ItemSizing_img2.png)

## Auto fit the items based on content
The SfListView allows dynamically adjusting size of the items based on the loaded content by defining the [SfListView.AutoFitMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.SfListView.WinForms~Syncfusion.WinForms.ListView.SfListView~AutoFitMode.html) property. The control has two types of auto fit modes as listed as follows:

*	`Height`: Auto fits the items based on the content.
*	`None`: Layouts the items by `SfListView.ItemHeight`.

{% tabs %}
{% highlight c# %}
sfListView1.AutoFitMode = AutoFitMode.Height;
{% endhighlight %}
{% highlight vb %}
sfListView1.AutoFitMode = AutoFitMode.Height
{% endhighlight %}
{% endtabs %}
