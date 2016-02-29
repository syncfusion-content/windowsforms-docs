---
layout: post
title: What-are-the-events-implemented-in-MultiSelectionComboBox | Windows Forms | Syncfusion
description: what are the events implemented in multiselectioncombobox
platform: windowsforms
control: Editors Package
documentation: ug
---

# What are the events implemented in MultiSelectionComboBox?

### SelectedItemCollectionChanged

This event is triggered once SelectedItems collection is modified in MultiSelectionComboBox.

#### Event Arguments



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
SelectedItems</td><td>
Returns the SelectedItem collection in MultiSelectionComboBox.</td></tr>
<tr>
<td>
Action</td><td>
Returns the VisualItem collection modified state detail.Added, once item was added to the collection;Removed, once item was removed from the collection;</td></tr>
</table>


{% highlight c# %}

private void MultiSelectionComboBox1_SelectedItemCollectionChanged(object sender, SelectedItemCollectionChangedArgs e)

        {

            // To define collection modification

            if (e.Action == Actions.Added)

            {

                string text = e.SelectedItems[0].ToString();

            }

        }

{% endhighlight %}

{% highlight vbnet %}

Private Sub MultiSelectionComboBox1_SelectedItemCollectionChanged(sender As Object, e As SelectedItemCollectionChangedArgs)

            ' To define collection modification

            If e.Action = Actions.Added Then

                Dim text As String = e.SelectedItems(0).ToString()

            End If

End Sub

{% endhighlight %}

### VisualItemCollectionChanged

This event is triggered once VisualItem collection is modified in MultiSelectionComboBox.

#### Event Arguments



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
VisualItems</td><td>
Returns the visual items collection in MultiSelectionComboBox.</td></tr>
<tr>
<td>
Action</td><td>
Returns the VisualItem collection modified state detail.Added, once item was added to the collection;Removed, once item was removed from the collection;</td></tr>
</table>


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

### AutoSizeModeChanged

This event is triggered once AutoSizeMode is modified in MultiSelectionComboBox.

#### Event Arguments



<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
AutoSizeMode</td><td>
Returns AutoSizeMode of the MultiSelectionComboBox control.</td></tr>
</table>


{% highlight c# %}

void MultiSelectionComboBox1_AutoSizeStateChanged(object sender, AutoSizeModeEventArgs e)

{

     //To Get AutoSizeMode

     AutoSizeModes mode = e.AutoSizeMode;

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub MultiSelectionComboBox1_AutoSizeStateChanged(sender As Object, e As AutoSizeModeEventArgs)

        'To Get AutoSizeMode

        Dim mode As AutoSizeModes = e.AutoSizeMode

End Sub

{% endhighlight %}

### DataSourceChanged

This event is triggered once MultiSelectionComboBox datasource is changed.

{% highlight c# %}

Private void MultiSelectionComboBox1_DataSourceChanged(object sender, EventArgs e)

{



}

{% endhighlight %}

{% highlight vbnet %}

Private Sub MultiSelectionComboBox1_DataSourceChanged(sender As System.Object, e As System.EventArgs) Handles MultiSelectionComboBox1.DataSourceChanged



End Sub

{% endhighlight %}

### DropDown

This event is triggered once MultiSelectionComboBox DropDown visibility is changed.

{% highlight c# %}

private void MultiSelectionComboBox1_DropDown(object sender, DropDownStateEventArgs e)

        {

            // To define whether the dropdown is opened or not

            bool isDropDownOpened = e.IsDropDown;

        }

{% endhighlight %}

{% highlight vbnet %}

Private Sub MultiSelectionComboBox1_DropDown(sender As Object, e As DropDownStateEventArgs)

        ' To define whether the dropdown is opened or not

        Dim isDropDownOpened As Boolean = e.IsDropDown

    End Sub
	
{% endhighlight %}





