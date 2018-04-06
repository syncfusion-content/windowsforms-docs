---
layout: post
title: AutoComplete Popup | WindowsForms | Syncfusion
description: AutoComplete Popup
platform: WindowsForms
control: Editors Package
documentation: ug
---

# AutoComplete Pop-Up

When a control is associated with an AutoComplete control, a popup is displayed, based on the source. This section illustrates various components of the AutoComplete Popup with their properties that can control the appearance and behavior of the components.

 ![](AutoComplete-Controls-Images/Overview_img13.png) 

This section discusses the various components in the AutoComplete popup.

## Header, Close Button, and Gripper

### Header Settings

DropDown item can have a header that is enabled using AutoComplete.ShowColumnHeader property. The AutoAddItem property must be set to "True"

{% tabs %}
{% highlight vb %}

Me.autoComplete1.AutoAddItem = True
Me.autoComplete2.ShowColumnHeader = True
Me.autoCompleteDataColumnInfo1.ColumnHeaderText = "Contents"

{% endhighlight %}
{% endtabs %}

 ![](AutoComplete-Controls-Images/Overview_img15.jpeg) 

N> You can also set multiple columns. Refer [Multiple Columns](http://help.syncfusion.com/windowsforms/autocomplete/multiple-columns) to know more.

## Close Button and Gripper Settings

Visibility of close button and the gripper in the popup can be determined by ShowCloseButton and ShowGripper properties.

Property Table

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowCloseButton</td><td>
Specifies whether to show the CloseButton at the bottom right of the DropDownContainer. By default it is true.</td></tr>
<tr>
<td>
ShowGripper</td><td>
Specifies whether to show gripper at the bottom right of a DropDownContainer. By default it is true.</td></tr>
</table>

N> The AutoComplete dropdown can be closed by calling AutoComplete.CloseDropDown() method.

{% tabs %}
{% highlight C# %}

this.autoComplete1.ShowCloseButton = true;
this.autoComplete1.ShowGripper = true;

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.ShowCloseButton = True
Me.autoComplete1.ShowGripper = True

{% endhighlight %}
{% endtabs %}

## Appearance Settings

### Appearance 

At runtime, the appearance of the AutoComplete window can be customized by using the following properties.

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
HeaderForeColor</td><td>
Gets or sets the HeaderForeColor of the AutoCompletePopup.</td></tr>
<tr>
<td>
TextColor</td><td>
Gets or sets the Item Text ForeColor of the AutoCompletePopup.</td></tr>
<tr>
<td>
HeaderFont</td><td>
Gets or sets the Header font of the AutoCompletePopup.</td></tr>
<tr>
<td>
ItemFont</td><td>
Gets or sets the Item font of the AutoCompletePopup.</td></tr>
<tr>
<td>
HeaderStyle</td><td>
Gets or sets the AutoCompletePopup Column Header style.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

//Specifies the header fore color of the AutoComplete Popup.
this.autoComplete1.HeaderForeColor = Color.Red;

//Specifies the item fore color of the AutoComplete Popup.
this.autoComplete1.TextColor = Color.Blue;

//Specifies the font of the ColumnHeader in AutoComplete Popup.
this.autoComplete1.HeaderFont = new System.Drawing.Font("Segoe UI", 11.25F);

//Specifies the font of the items in AutoComplete Popup.
this.autoComplete1.ItemFont = new System.Drawing.Font("Mistral", 8.25F);

//Specifies the style of ColumnHeader in AutoComplete Popup.
this.autoComplete1.HeaderStyle = ColumnHeaderStyle.Clickable;

{% endhighlight %}

{% highlight vb %}

'Specifies the header fore color of the AutoComplete Popup.
Me.autoComplete1.HeaderForeColor = Color.Red

'Specifies the item fore color of the AutoComplete Popup.
Me.autoComplete1.TextColor = Color.Blue

'Specifies the font of the ColumnHeader in AutoComplete Popup.
Me.autoComplete1.HeaderFont = New System.Drawing.Font("Segoe UI", 11.25F)

'Specifies the font of the items in AutoComplete Popup.
Me.autoComplete1.ItemFont = New System.Drawing.Font("Mistral", 8.25F)

'Specifies the style of ColumnHeader in AutoComplete Popup.
Me.autoComplete1.HeaderStyle = ColumnHeaderStyle.Clickable 

{% endhighlight %}
{% endtabs %}

 ![](AutoComplete-Controls-Images/Overview_img18.png) 

### Styles

Visual Styles for the AutoComplete control can be enabled through Style property.The styles are,

* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray
* Metro
* Default

{% tabs %}
{% highlight c# %}

this.autoComplete1.Style = AutoCompleteStyle.Office2016Colorful;

{%endhighlight%}

{%highlight vb %}

Me.autoComplete1.Style = AutoCompleteStyle.Office2016Colorful

{% endhighlight %}
{% endtabs %}

![](AutoComplete-Controls-Images/Overview_img37.png)

### Header Settings

DropDown item can have a header that is enabled by using the AutoComplete.ShowColumnHeader property. AutoAddItem property should be set to “True”.

Property Table

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
AutoAddItem</td><td>
Specifies whether the current item in the target control is to be automatically added during validation, when the ENTER key is pressed.</td></tr>
</table>
 
N> The header will be shown only for the text that is saved at run time. Set AutoCompleteMode and AutoCompleteSource properties to None.

 {% tabs %}
{% highlight C# %}

this.autoComplete1.AutoAddItem = true;
this.autoComplete2.ShowColumnHeader = true;
this.autoCompleteDataColumnInfo1.ColumnHeaderText = "Contents";

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.AutoAddItem = True
Me.autoComplete2.ShowColumnHeader = True
Me.autoCompleteDataColumnInfo1.ColumnHeaderText = "Contents"

{% endhighlight %}
{% endtabs %}

![](AutoComplete-Controls-Images/Overview_img20.png) 

N> You can also set multiple columns. Refer [Multiple Columns](http://help.syncfusion.com/windowsforms/autocomplete/multiple-columns) to know more.

### Close Button and Gripper Settings

Visibility of close button and the gripper in the popup can be determined by using the ShowCloseButton and ShowGripper properties.

Property Table

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowCloseButton</td><td>
Specifies whether the CloseButton should be displayed at the bottom right of the DropDownContainer. By default it is true.</td></tr>
<tr>
<td>
ShowGripper</td><td>
Specifies whether the gripper should be shown at the bottom right of a DropDownContainer. By default it is true.</td></tr>
</table>
 
N> The AutoComplete dropdown can be closed by calling AutoComplete.CloseDropDown() method.

{% tabs %}
{% highlight C# %}

this.autoComplete1.ShowCloseButton = true;
this.autoComplete1.ShowGripper = true;

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.ShowCloseButton = True
Me.autoComplete1.ShowGripper = True

{% endhighlight %}
{% endtabs %}

## Behavior Settings

### Case Sensitivity

At run time, the string entered in a textbox, for example, can be made case sensitive using the following properties.

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
IgnoreCase</td><td>
Specifies whether to ignore case sensitivity for string comparison. Default value is True.</td></tr>
<tr>
<td>
CaseSensitive</td><td>
Specifies whether the replacement of the matching entry is to be case sensitive.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.autoComplete1.IgnoreCase = false;
this.autoComplete1.CaseSensitive = true;

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.IgnoreCase = False
Me.autoComplete1.CaseSensitive = True

{% endhighlight %}
{% endtabs %}

![](AutoComplete-Controls-Images/Overview_img23.jpeg) 

### Overriding Combo

The Combobox dropdown can be suppressed and overridden by the AutoComplete control by using the OverrideCombo property.

{% tabs %}
{% highlight C# %}

this.autoComplete1.OverrideCombo = true;

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.OverrideCombo = True

{% endhighlight %}
{% endtabs %}

### Sorting

The items in the list can be sorted automatically by setting AutoSortList to True.

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
AutoSortList</td><td>
Specifies whether default sorting is to be performed.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.autoComplete1.AutoSortList = true;

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.AutoSortList = True

{% endhighlight %}
{% endtabs %}

### Duplicate Values

The duplicate values can be used in AutoComplete DataSource by setting EnableDuplicateValues to True.

_Properties_

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
EnableDuplicateValues</td><td>
Gets or sets whether to allow duplicate values in AutoComplete DataSource</td></tr>
</table>

{% tabs %}
{% highlight C# %}

//To use duplicate values in AutoComplete data source
this.autoComplete1.EnableDuplicateValues = true;

{% endhighlight %}

{% highlight vb %}

'To use duplicate values in AutoComplete data source
Me.autoComplete1.EnableDuplicateValues = True

{% endhighlight %}
{% endtabs %}

{% seealso %} 
 [Source for AutoComplete Control](/windowsforms/autocomplete/datasource#source-for-autocomplete-control), [External Datasource](/windowsforms/autocomplete/datasource#external-datasource)
{% endseealso %}

## Size Settings

The properties that can control the height and width of the AutoCompletePopup are as follows.

<table>
<tr>
<th>
AutoComplete Properties</th><th>
Description</th></tr>
<tr>
<td>
AdjustHeightToItemCount</td><td>
Specifies whether the height of the dropdown should be adjusted automatically, based on the number of items.</td></tr>
<tr>
<td>
AutoPersistentDropDownSize</td><td>
The Dropdown size of Autocomplete control is automatically persistent when this property is set to true.</td></tr>
<tr>
<td>
PreferredHeight</td><td>
Specifies preferred height for the dropdown displayed by the AutoComplete control when AdjustHeightToItemCount property is false. Default value is 200.</td></tr>
<tr>
<td>
PreferredWidth</td><td>
Specifies preferred width for the dropdown displayed by the AutoComplete control when AdjustHeightToItemCount property is false. Default value is -1.</td></tr>
</table>

{% tabs %}
{% highlight C# %}

this.autoComplete1.AdjustHeightToItemCount = false;
this.autoComplete1.AutoPersistentDropDownSize = true;
this.autoComplete1.PreferredHeight = 100;
this.autoComplete1.PreferredWidth = 300;

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.AdjustHeightToItemCount = False
Me.autoComplete1.AutoPersistentDropDownSize = True
Me.autoComplete1.PreferredHeight = 100
Me.autoComplete1.PreferredWidth = 300

{% endhighlight %}
{% endtabs %}

 ![](AutoComplete-Controls-Images/Overview_img24.jpeg)

