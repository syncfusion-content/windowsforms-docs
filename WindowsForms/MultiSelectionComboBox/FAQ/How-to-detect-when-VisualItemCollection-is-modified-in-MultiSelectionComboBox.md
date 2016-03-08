---
layout: post
title: How-to-detect-when-VisualItemCollection-is-modified-in-MultiSelectionComboBox | Windows Forms | Syncfusion
description: how to detect when visualitemcollection is modified in multiselectioncombobox
platform: windowsforms
control: Editors Package
documentation: ug
---

# How to detect when VisualItemCollection is modified in MultiSelectionComboBox?

The following code explains you on how to detect the VisualItemCollection modification using VisualItemCollectionChanged event. This event is triggered once VisualItem collection is modified in MultiSelectionComboBox.

{% highlight c# %}

private void MultiSelectionComboBox1_VisualItemsCollectionChanged(object sender, VisualItemCollectionChangedArgs e)

        {

            // To define collection modification

            if (e.Action == Actions.Added)

            {

                string text = e.VisualItems[0].ToString();

            }

        }

{% endhighlight %}

{% highlight vbnet %}

Private Sub MultiSelectionComboBox1_VisualItemsCollectionChanged(sender As Object, e As VisualItemCollectionChangedArgs)

            ' To define collection modification

            If e.Action = Actions.Added Then

                Dim text As String = e.VisualItems(0).ToString()

            End If

 End Sub
 
{% endhighlight %}