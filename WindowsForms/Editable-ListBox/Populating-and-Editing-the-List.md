---
layout: post
title: Populating and Editing the List in Editable ListBox | Syncfusion®
description: Learn about Populating and Editing the List support in Syncfusion® Windows Forms Editable ListBox (EditableList) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Populating and Editing the List in WinForms Editable ListBox

## Populate the list

The List can be populated in 2 ways. One is to specify the DataSource and another is to edit the list manually in the property editor.

To populate through DataSource.

{% tabs %}
{% highlight c# %}

// Specifies the DataSource.
    List<string>  dataSource= new List<string>();
    dataSource.Add("item 1");
    dataSource.Add("item 2");
    dataSource.Add("item 3");
    this.editableList1.ListBox.DataSource = dataSource;

{% endhighlight %}

{% highlight vb %}

' Specifies the DataSource.
   Dim dataSource As List(Of String) = New List(Of String)()
    dataSource.Add("item 1")
    dataSource.Add("item 2")
    dataSource.Add("item 3")
    Me.editableList1.ListBox.DataSource = dataSource

{% endhighlight %}
{% endtabs %}

Otherwise go to the property editor, expand the ListBox property of the EditableList and then select Items. This Items property is editable like any other Items property.

## Editing the list

The List can be edited in the following way during runtime:

1. Select the Item you want to edit by clicking or by using keyboard.
2.  Click again. There appears a TextBox. Now edit the text.
3.  After editing change the focus, the list will get updated.

![populating the items in the list](Populating-and-Editing-the-List_images/Populating-and-Editing-the-List_img1.png)
