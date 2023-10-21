---
layout: post
title: Grid Designer in Windows Forms GridGrouping control | Syncfusion
description: Learn about Grid Designer support in Syncfusion Windows Forms GridGrouping control, its elements and more details.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Grid Designer in Windows Forms GridGrouping control
The GridGroupingControl has strong designer support. The user can control all aspects of grid's appearance through the designer. Additional commands (verbs) will let you save layouts and restore them. 

The user can also use preview feature that will allow you load data into your control and then further set the GridGroupingControl properties that can be persisted as design-time properties.

## Getting Started
The GridGroupingControl can be previewed and edited at design time by following steps,

1. Open the `Designer` of application form which has GridGroupingControl.
2. Click the `Smart tag` button which is available in the top right corner and following dialog box will be opened,

   ![Grid-Designer_images1](Grid-Designer_images/Grid-Designer_img1.png)

3. Select the Preview and Edit option and following dialog will be opened,

   ![Grid-Designer_images2](Grid-Designer_images/Grid-Designer_img2.png)

It also displays help description for the properties that are being selected. The user can use the property grid to change GridGroupingControl's properties and see the effect immediately on the populated control. When you close the preview, you will have the option of saving any changed properties to the property grid in the designer.

## Grouping
Designer provides full drag and drop capability so that the user can group the records by dragging a column header and dropping it into GroupDropArea, provided the GroupDropArea is enabled by setting [ShowGroupDropArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_ShowGroupDropArea) to true. Likewise, user can group data against any number of columns across the tables when multiple nested tables are used.

The below example shows the `Sport` column is dragged for grouping,

![Grid-Designer_img3](Grid-Designer_images/Grid-Designer_img3.png)

The below example shows the `Sport` column is grouped in the Grid,

![Grid-Designer_img4](Grid-Designer_images/Grid-Designer_img4.png)

### Grouping Columns using Property window
The column can be grouped in the grid by using the [TableDescriptor.GroupedColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html) property.

![Grid-Designer_img5](Grid-Designer_images/Grid-Designer_img5.png)

The detailed information about `Grouping` has been discussed in this [Grouping](/windowsforms/gridgrouping/grouping) section.

## Sorting
Sorting can be done on the table data by simply clicking the desired column header by which the values need to be sorted. Once sorting is done, the grouping grid displays `Sort Icon` in the respective column header to indicate Sort Direction. 

![Grid-Designer_img6](Grid-Designer_images/Grid-Designer_img6.png)

### Column sorting using Property window
The user can also make use of the [TableDescriptor.SortedColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html) property to sort table data wherein you need to provide the column to be sorted and sort order.

![Grid-Designer_img7](Grid-Designer_images/Grid-Designer_img7.png)

The detailed information about `Sorting` has been discussed in this [Sorting](/windowsforms/gridgrouping/sorting) section.

## Summaries
Summaries can be added in the designer itself by accessing [TableDescriptor.SummaryRows](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableDescriptor_SummaryRows) property. The user can add as many summary rows as you need, each with a desired number of summary columns specifying the type of summary, summary format, the column based on whose values the summary has to be calculated and the like for each of the summary columns.

![Grid-Designer_img8](Grid-Designer_images/Grid-Designer_img8.png)

The below example shows the summary is added to the Grid,

![Grid-Designer_img9](Grid-Designer_images/Grid-Designer_img9.png)

The detailed information about `Summaries` has been discussed in this [Summaries](/windowsforms/gridgrouping/summaries) section.

## Record Filters
By using the [TableDescriptor.RecordFilters](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html) property, you can add row filters for your grid table. Once you have specified filter criteria and column name whose values have to be checked against the given criteria, the grouping grid will display only the subset of records that satisfies the given criteria.

![Grid-Designer_img10](Grid-Designer_images/Grid-Designer_img10.png)

The below example shows the `Sport` column is filtered based on the text `Baseball`,

![Grid-Designer_img11](Grid-Designer_images/Grid-Designer_img11.png)

### Filter bar
GridGroupingControl provides `AutoFilterRow`, which can be enabled by setting [ShowFilterBar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupOptionsStyleInfo_ShowFilterBar) property to `true`. Once that is done, the user must enable [AllowFilter](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridColumnDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridColumnDescriptor_AllowFilter) property for the desired columns to enable filtering on those columns.

The following example shows the `ShowFilterBar` property is enabled,

![Grid-Designer_img12](Grid-Designer_images/Grid-Designer_img12.png)

The following example shows the `AllowFilter` property is enabled for `Sport` column,

![Grid-Designer_img13](Grid-Designer_images/Grid-Designer_img13.png)

The following example shows the filter bar drop down showing filtering options for the column `Sport`,

![Grid-Designer_img14](Grid-Designer_images/Grid-Designer_img14.png)

The detailed information about `Filtering` has been discussed in this [Filtering](/windowsforms/gridgrouping/filtering) section.

## Expression Fields
When there is a need to display calculated values based on the values on other fields in the same record, ExpressionFields would be the right choice to use. ExpressionFields can be created by using [TableDescriptor.ExpressionFields](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html) property. This will open an editor wherein the user can add any number of expression fields each with its own expression used to calculate the results.

The following example shows the Expression field is added for `Winning %` column,

![Grid-Designer_img15](Grid-Designer_images/Grid-Designer_img15.png)

The following example shows the `Winning %` column shows the calculation result,

![Grid-Designer_img16](Grid-Designer_images/Grid-Designer_img16.png)

The detailed information about `ExpressionFields` has been discussed in this [ExpressionFields](/windowsforms/gridgrouping/expression-fields) section.

## Relations
It is possible to specify the relation to be used across the tables in case multiple tables are used. It can be done by accessing [TableDescriptor.Relations](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableDescriptor.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableDescriptor_Relations) property wherein the user can specify the relation type, name of the child table, relation keys consisting of the keys in parent and child tables and other information necessary to setup the relation.

![Grid-Designer_img17](Grid-Designer_images/Grid-Designer_img17.png)

The detailed information about `Relations` has been discussed in this [Relation and Hierarchy](/windowsforms/gridgrouping/relations-and-hierarchy) section.

## Appearance
The appearance of every grid element can be customized by accessing [Appearance](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_Appearance) property. It allows you to set[GridStyleInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStyleInfo.html) properties like cell type, value, back color, font, etc. for grid cells. It holds a sub tree of different grid elements, each with its own set of formatting properties. The appearance of alternate record field cell can be changed by using [Appearance.AlternateRecordFieldCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellAppearance.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableCellAppearance_AlternateRecordFieldCell) property.

To change the appearance of the summary cells, [Appearance.SummaryFieldCell](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellAppearance.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableCellAppearance_SummaryFieldCell) or related property can be used.

![Grid-Designer_img18](Grid-Designer_images/Grid-Designer_img18.png)

The detailed information about `Appearance` has been discussed in this [Appearance](/windowsforms/gridgrouping/appearance-and-formatting) section.

## Skins
The appearance and behavior of every grid element to provide grid with a rich look and feel can be changed by setting skins. 

The GridGroupingControl has the following skins,

* Office 2003
* Office 2007 (Blue, Silver and Black)
* Office 2010 (Blue, Silver and Black)
* Metro
* System Theme (Windows XP)

To set a skin, [GridVisualStyles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_GridVisualStyles) property can be used. It lists possible skin options in a drop down, which will make the entire grid redrawn with the chosen style.

![Grid-Designer_img19](Grid-Designer_images/Grid-Designer_img19.png)

The detailed information about `Skins` has been discussed in this [Visual Styles](/windowsforms/gridgrouping/visual-styles) section.
