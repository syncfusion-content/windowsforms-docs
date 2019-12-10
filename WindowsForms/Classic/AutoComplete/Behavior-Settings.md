---
layout: post
title: Behavior Settings | WindowsForms | Syncfusion
description: Behavior Settings
platform: WindowsForms
control: ComboBoxAutoComplete
documentation: ug
---

# Behavior Settings

The behavior settings of a ComboBoxAutoComplete control includes the below properties.



<table>
<tr>
<th>
ComboAutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
AllowNewText</td><td>
Specifies whether the user is allowed to enter new text. User can be allowed to enter new text in the ComboAutoComplete by setting AllowNewText to true. AllowNewText is mainly used to prevent items that are not in the list while validating.</td></tr>
<tr>
<td>
ReadOnly</td><td>
Gets or Sets value indicating whether changes can be done to the combobox.</td></tr>
<tr>
<td>
UpdateComboSelectionProperties</td><td>
UpdateComboSelectionProperties set to true means the Property SelectedItem will return the AutoCompleteControl's SelectedItem. Else if it is set to false, then SelectedItem property should return the base class SelectedItem that is, the Windows ComboBox SelectedItem value.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.comboBoxAutoComplete1.AllowNewText= true;
this.comboBoxAutoComplete1.ReadOnly = true;
this.comboBoxAutoComplete1.UpdateComboSelectionProperties = false;

{% endhighlight %}

{% highlight vb %}

Me.comboBoxAutoComplete1.AllowNewText= True
Me.comboBoxAutoComplete1.ReadOnly = True
Me.comboBoxAutoComplete1.UpdateComboSelectionProperties = False

{% endhighlight %}
{% endtabs %}

<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
SetSelectedItem</td><td>
To set SelectedItem in ComboBoxAutoComplete, when loading AutoComplete control as its DropDown.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

//To set selected item in ComboBoxAutoComplete AutoComplete Popup
this.comboBoxAutoComplete1.SetSelectedItem("India");

{% endhighlight %}

{% highlight vb %}

'To set selected item in ComboBoxAutoComplete AutoComplete Popup
Me.comboBoxAutoComplete1.SetSelectedItem("India")

{% endhighlight %}
{% endtabs %}


N> When DisplayMember is defined, you can assign DisplayMember column value as selected item in ComboBoxAutoComplete. When DisplayMember is not defined or single level data source is assigned to ComboBoxAutoComplete, zeroth index column value needs to be used as argument value of the function named “SetSelectedItem”

## Refreshing the Columns 

When the datasource of the AutoComplete control is set to a valid datasource through the designer, the "Refresh Columns" verb can be clicked to automatically populate the Columns collection. This option is available in the context menu of the ComboBoxAutoComplete control and also as property grid command.

 ![](ComboBoxAutoComplete-Images/Overview_img45.jpeg) 



## Banner Text Support

We can set banner text for the ComboBoxAutoComplete control. Refer [BannerTextProvider](/windowsforms/bannertextprovider/overview) Component topic for more details.

 ![](ComboBoxAutoComplete-Images/Overview_img46.jpeg)