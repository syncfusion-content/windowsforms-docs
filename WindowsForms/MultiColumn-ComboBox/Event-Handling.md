---
layout: post
title: Event Handling in Windows Forms MultiColumn ComboBox | Syncfusion
description: Learn here all about the event handling feature of Syncfusion Windows Forms MultiColumn ComboBox control and more.
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Event Handling in Windows Forms MultiColumn ComboBox

The events of ComboBoxAdv present in the MultiColumnComboBox.

## Selection events

The MultiColumnComboBox fires different events for the different user interaction scenarios. The occurrence and order of the events are tabulated below: 



<table>
<tr>
<th>
Scenarios</th><th>
Selection Changed Committed</th><th>
Selected Value Changed</th><th>
Selected Index Changed</th><th>
Validating/Validated</th></tr>
<tr>
<td>
TextArea-Change Selection by Keys</td><td>
Yes:1</td><td>
Yes:2</td><td>
Yes:3</td><td>
No</td></tr>
<tr>
<td>
TextArea-On AutoComplete</td><td>
No</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down List-Change Selection by Keys</td><td>
No</td><td>
Yes:1</td><td>
Yes:2</td><td>
No</td></tr>
<tr>
<td>
Drop-Down List-Change Selection by Mouse Move</td><td>
No</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down Close by Enter Key</td><td>
Yes:1</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down Close by Escape Key</td><td>
No</td><td>
No</td><td>
No</td><td>
No</td></tr>
<tr>
<td>
Drop-Down Close by clicking</td><td>
Yes:1</td><td>
Yes:2</td><td>
Yes:3</td><td>
No</td></tr>
<tr>
<td>
Losing Focus</td><td>
Yes:2 (in DropDownStyle.DropDown (editable) mode only)</td><td>
No</td><td>
No</td><td>
Yes:1</td></tr>
<tr>
<td>
Changing Text Property in Code</td><td>
Yes:1</td><td>
No</td><td>
No</td><td>
No</td></tr>
</table>


You can refer the following topics which gives you an idea on implementing the above events.

* [How to display multiple members in a MultiColumnComboBox?](/windowsforms/multicolumncombobox/faq/how-to-display-multiple-members-in-a-multicolumncombobox)
* [How to retrieve the columns other than Display and Value members in a MultiColumnComboBox?](/windowsforms/multicolumncombobox/faq/how-to-change-the-back-color-and-text-color-of-the-selected-item)

## SelectedValueChanged event


This event is handled when the selected value is changed in the combobox. This section discusses a use case illustrating the event.

### Setting text according to selection

The process of accessing the selected item is a complex one. We need to access DataRowView from the control and then to get the values. Include the below code in the SelectedValueChanged event handler to set the text of MultiColumnComboBox to the text in the first column of the selected row.

{% tabs %}
{% highlight c# %}

private void multiColumnComboBox1_SelectedValueChanged(object sender, System.EventArgs e) 
{
    ComboBoxBaseDataBound c=multiColumnComboBox1 as ComboBoxBaseDataBound;
    if (c.SelectedIndex!=-1)        
    {
        // Sets the text of MultiColumnComboBox to the text in the first column of selected row.
        DataRowView drv=c.Items[c.SelectedIndex] as DataRowView;
        c.Text=drv.Row[1].ToString();
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub multiColumnComboBox1_SelectedValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) 
Dim c As ComboBoxBaseDataBound = CType(multiColumnComboBox1, ComboBoxBaseDataBound) 
If Not (c.SelectedIndex = -1) Then 

' Sets the text of MultiColumnComboBox to the text in the first column of selected row.
Dim drv As DataRowView = CType(c.Items(c.SelectedIndex), DataRowView) 
c.Text = drv.Row(1).ToString 
End If 
End Sub

{% endhighlight %}
{% endtabs %}

![Setting text according to selection in MultiColumn ComboBox](Overview_images/Overview_img331.jpeg) 

## SelectedIndexChanged event

This event is illustrated in [How to retrieve the columns other than Display and Value members in a MultiColumnComboBox?](/windowsforms/multicolumncombobox/faq/how-to-change-the-back-color-and-text-color-of-the-selected-item) topic.