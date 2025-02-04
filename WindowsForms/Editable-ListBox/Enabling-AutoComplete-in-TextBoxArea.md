---
layout: post
title: Enabling Autocomplete in Textboxarea in Editable ListBox | Syncfusion®
description: Learn about Enabling Autocomplete in Textboxarea support in Syncfusion® Windows Forms Editable ListBox (EditableList) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Enabling Autocomplete in Textbox area in WinForms Editable ListBox

We can associate an AutoComplete with the editing TextBox of the EditableList. The following steps help to achieve this.

1. Create an instance of the AutoComplete.
2. In the Form load event, place this code.

{% capture codesnippet1 %}
{% tabs %} 
{% highlight c# %}

private void form1_Load(object sender,EventArgs e)
{
// Sets the AutoComplete.
autoComplete1.DataSource=editableList1.ListBox.Items;
autoComplete1.SetAutoComplete(editableList1.TextBox,AutoCompleteModes.Both);
}

{% endhighlight %}

{% highlight vb %}

Private  Sub form1_Load(ByVal sender As Object, ByVal e As EventArgs)

' Sets the AutoComplete.
autoComplete1.DataSource=editableList1.ListBox.Items
autoComplete1.SetAutoComplete(editableList1.TextBox,AutoCompleteModes.Both)
End Sub

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }} 

The data source may vary according to your choice.

![Enabling-AutoComplete-in-TextBoxArea_img1](Enabling-AutoComplete-in-TextBoxArea_images/Enabling-AutoComplete-in-TextBoxArea_img1.png)
