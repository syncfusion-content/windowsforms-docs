---
layout: post
title: Enabling-AutoComplete-in-TextBoxArea | WindowsForms | Syncfusion
description: enabling autocomplete in textboxarea
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# Enabling AutoComplete in TextBoxArea

We can associate an AutoComplete with the editing TextBox of the EditableList. The following steps help to achieve this.

1. Create an instance of the AutoComplete.
2.  In the Form load event, place this code.

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

The data source may vary according to your choice.

![](Enabling-AutoComplete-in-TextBoxArea_images/Enabling-AutoComplete-in-TextBoxArea_img1.png)
