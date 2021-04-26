---
layout: post
title: How-to-Make-GridFilterBar-Use-Autocomplete-Combo-Box | Windows Forms | Syncfusion
description: Learn about How to Make Gridfilterbar use Autocomplete Combo Box support in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more details.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Make Grid filter bar use Autocomplete Combo Box in Windows Forms GridDataBoundGrid(Classic)

To get autocomplete using standard GridFilterBar, try the following code.

{% tabs %}
{% highlight c# %}

//Binds FilterBar to the grid.
theFilterBar.WireGrid(this.gridDataBoundGrid1);
{% endhighlight %}

{% highlight vb %}

'Binds FilterBar to the grid.
theFilterBar.WireGrid(Me.gridDataBoundGrid1)
{% endhighlight %}
{% endtabs %}

{% tabs %}
{% highlight c# %}

//Sets up a GridStyleInfo object.
GridStyleInfo style = new GridStyleInfo(); 
style.ModifyStyle(this.gridDataBoundGrid1.BaseStylesMap["Header"].StyleInfo,     StyleModifyType.Copy); 

//Sets cell type of the style object to ComboBox.
style.CellType = "ComboBox"; 
style.ExclusiveChoiceList = true;

//Applies style settings. 
style.BaseStyle = "Standard"; 
style.Font.Bold = false; 
style.BackColor = this.gridDataBoundGrid1.TableStyle.BackColor;
style.Borders.Bottom = new GridBorder(GridBorderStyle.Dashed);

//Sets DropDownStyle to Autocomplete. 
style.DropDownStyle = GridDropDownStyle.AutoComplete;

//Applies the StyleInfo object to FilterBar.
theFilterBar.WireGrid(this.gridDataBoundGrid1, style);

//And replace it with this code.

{% endhighlight %}

{% highlight vb %}

'Sets up a GridStyleInfo object.
Dim style As New GridStyleInfo
style.ModifyStyle(Me.gridDataBoundGrid1.BaseStylesMap("Header").StyleInfo, StyleModifyType.Copy)

'Sets cell type of the style object to ComboBox.
style.CellType = "ComboBox"
style.ExclusiveChoiceList = True

'Applies style settings.
style.BaseStyle = "Standard"
style.Font.Bold = False
style.BackColor = Me.gridDataBoundGrid1.TableStyle.BackColor
style.Borders.Bottom = New GridBorder(GridBorderStyle.Dashed)

'Sets DropDownStyle to Autocomplete.
style.DropDownStyle = GridDropDownStyle.AutoComplete

'Applies StyleInfo object to FilterBar.
theFilterBar.WireGrid(Me.gridDataBoundGrid1, style)

'This adds the DropDownStyle = Autocomplete, setting it to the default combobox.

{% endhighlight %}
{% endtabs %}
