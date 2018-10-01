---
layout: post
title: Populating-and-Editing-the-List | WindowsForms | Syncfusion
description: populating and editing the list
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Populating and Editing the List

## Populate the list

The List can be populated in 2 ways. One is to specify the DataSource and another is to edit the list manually in the property editor.

To populate through DataSource.

{% tabs %}
{% highlight c# %}

// Specifies the DataSource.
editableList1.ListBox.DataSource=DataSource;

{% endhighlight %}

{% highlight vb %}

' Specifies the DataSource.
editableList1.ListBox.DataSource=DataSource

{% endhighlight %}
{% endtabs %}

Otherwise go to the property editor, expand the ListBox property of the EditableList and then select Items. This Items property is editable like any other Items property.

## Editing the list

The List can be edited in the following way during runtime:

1. Select the Item you want to edit by clicking or by using keyboard.
2.  Click again. There appears a TextBox. Now edit the text.
3.  After editing change the focus, the list will get updated.

![](Populating-and-Editing-the-List_images/Populating-and-Editing-the-List_img1.png)
