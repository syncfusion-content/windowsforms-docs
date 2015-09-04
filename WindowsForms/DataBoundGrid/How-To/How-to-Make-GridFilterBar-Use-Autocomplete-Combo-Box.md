---
layout: post
title: How-to-Make-GridFilterBar-Use-Autocomplete-Combo-Box
description: how to make gridfilterbar use autocomplete combo box
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Make GridFilterBar Use Autocomplete Combo Box

### Introduction

To get autocomplete using standard GridFilterBar, try the following code.

#### Example

{% highlight c# %}



//Binds FilterBar to the grid.

theFilterBar.WireGrid(this.gridDataBoundGrid1);

{% endhighlight %}

{% highlight vbnet %}



'Binds FilterBar to the grid.

theFilterBar.WireGrid(Me.gridDataBoundGrid1)

{% endhighlight %}

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



And replace it with this code.

{% endhighlight %}

{% highlight vbnet %}



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

This adds the DropDownStyle = Autocomplete, setting it to the default combobox.

{% endhighlight %}