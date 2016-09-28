---
layout: post
title: Preview Rows in GridGroupingControl for Syncfusion Essential Windows Forms 
description: This sections explains about how to add preview rows to the GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Preview Rows
Preview rows are the one which are used to show the additional description for the groups or records. In GridGroupingControl the additional information of the records can be displayed through record preview row and the groups can show the additional information in the group preview row or group Header/Footer section. This section explains about how to add the preview rows in GridGroupingControl.

## Adding record preview rows
The record preview row can be enabled in the GridGroupingControl by setting the [ShowRecordPreviewRow](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo~ShowRecordPreviewRow.html#) property to `true`.
{% tabs %}
{% highlight c# %}
//Enable record preview row 
this.gridGroupingControl1.TableOptions.ShowRecordPreviewRow = true;

//Changing the appearance of the record preview cells
this.gridGroupingControl1.Appearance.RecordPreviewCell.BackColor = Color.Orange;
this.gridGroupingControl1.Appearance.RecordPreviewCell.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
'Enable record preview row 
Me.gridGroupingControl1.TableOptions.ShowRecordPreviewRow = True

'Changing the appearance of the record preview cells
Me.gridGroupingControl1.Appearance.RecordPreviewCell.BackColor = Color.Orange
Me.gridGroupingControl1.Appearance.RecordPreviewCell.TextColor = Color.White
{% endhighlight %}
{% endtabs %}

![](PreviewRows_images/PreviewRows_img1.png)

### Customizing the text for record preview row
The record preview row text can be customized by using the [QueryCellStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~QueryCellStyleInfo_EV.html#) event. In this event, set the cell value of the[RecordPreviewCell](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellAppearance~RecordPreviewCell.html#) that need to be displayed in the record preview section.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo += new GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);

void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)
{
   if(e.TableCellIdentity.TableCellType == GridTableCellType.RecordPreviewCell)
   {
       Element el = e.TableCellIdentity.DisplayElement;
       e.Style.CellValue = "Preview notes for Record (" 
           + el.ParentTableDescriptor.Fields[0].Name + ": " 
           + el.ParentRecord.GetValue(el.ParentTableDescriptor.Fields[0].Name) + ")";
   }
}      
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs)
   If e.TableCellIdentity.TableCellType = GridTableCellType.RecordPreviewCell Then
	   Dim el As Element = e.TableCellIdentity.DisplayElement
	   e.Style.CellValue = "Preview notes for Record (" & el.ParentTableDescriptor.Fields(0).Name & ": " & el.ParentRecord.GetValue(el.ParentTableDescriptor.Fields(0).Name) & ")"
   End If
End Sub

{% endhighlight %}
{% endtabs %}

![](PreviewRows_images/PreviewRows_img2.png)

### Changing the height of the record preview row
The height of the record preview row can be changed by using the [RecordPreviewRowHeight](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo~RecordPreviewRowHeight.html#) property.
{% tabs %}
{% highlight c# %}
//Set the height for record preview section
this.gridGroupingControl1.TableOptions.RecordPreviewRowHeight = 20;

//Changing the appearance of the record preview cells
this.gridGroupingControl1.Appearance.RecordPreviewCell.BackColor = Color.Orange;
this.gridGroupingControl1.Appearance.RecordPreviewCell.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
'Set the height for record preview section
Me.gridGroupingControl1.TableOptions.RecordPreviewRowHeight = 20

'Changing the appearance of the record preview cells
Me.gridGroupingControl1.Appearance.RecordPreviewCell.BackColor = Color.Orange
Me.gridGroupingControl1.Appearance.RecordPreviewCell.TextColor = Color.White
{% endhighlight %}
{% endtabs %}
![](PreviewRows_images/PreviewRows_img3.png)

The following browser sample shows the customized appearance of record preview row,

**Sample:**
&lt;InstalledLocation&gt;\Windows\Grid.Grouping.Windows\Samples\Layout Customization\Record Customization Demo

## Adding group preview rows
Group preview section is the suitable place to display memo fields or add custom notes for a given group. It can be enabled by setting [GroupOptions.ShowGroupPreview](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupOptionsStyleInfo~ShowGroupPreview.html#) property to `true`. 
{% tabs %}
{% highlight c# %}
//Enable preview row for Groups
this.gridGroupingControl1.ChildGroupOptions.ShowGroupPreview = true;

//Changing the appearance of the group preview cells
this.gridGroupingControl1.Appearance.GroupPreviewCell.BackColor = Color.Orange;
this.gridGroupingControl1.Appearance.GroupPreviewCell.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
'Enable preview row for Groups
Me.gridGroupingControl1.ChildGroupOptions.ShowGroupPreview = True

'Changing the appearance of the group preview cells
Me.gridGroupingControl1.Appearance.GroupPreviewCell.BackColor = Color.Orange
Me.gridGroupingControl1.Appearance.GroupPreviewCell.TextColor = Color.White
{% endhighlight %}
{% endtabs %}

![](PreviewRows_images/PreviewRows_img4.png)

### Customizing the text for group preview row
The default text displayed in the group preview row can be customized by using the [QueryCellStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~QueryCellStyleInfo_EV.html#) event.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo += new GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);

void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)
{
    if (e.TableCellIdentity.TableCellType == GridTableCellType.GroupPreviewCell)
    {
        Element el = e.TableCellIdentity.DisplayElement;
        e.Style.CellValue = "Preview notes for Group (" + el.ParentGroup.Name + ": " + el.ParentGroup.Category.ToString() + ")";

    }
}  
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs)
	If e.TableCellIdentity.TableCellType = GridTableCellType.GroupPreviewCell Then
		Dim el As Element = e.TableCellIdentity.DisplayElement
		e.Style.CellValue = "Preview notes for Group (" & el.ParentGroup.Name & ": " & el.ParentGroup.Category.ToString() & ")"

	End If
End Sub
{% endhighlight %}
{% endtabs %}

![](PreviewRows_images/PreviewRows_img5.png)

### Changing the height of the group preview
The size of the preview rows can be changed by using the [TableOptions.GroupPreviewSectionHeight](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo~GroupPreviewSectionHeight.html#) property.
{% tabs %}
{% highlight c# %}
//Set the height for Group preview section
this.gridGroupingControl1.TableOptions.GroupPreviewSectionHeight = 25;

//Changing the appearance of the group preview cells
this.gridGroupingControl1.Appearance.GroupPreviewCell.BackColor = Color.Orange;
this.gridGroupingControl1.Appearance.GroupPreviewCell.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
'Set the height for Group preview section
Me.gridGroupingControl1.TableOptions.GroupPreviewSectionHeight = 25

'Changing the appearance of the group preview cells
Me.gridGroupingControl1.Appearance.GroupPreviewCell.BackColor = Color.Orange
Me.gridGroupingControl1.Appearance.GroupPreviewCell.TextColor = Color.White
{% endhighlight %}
{% endtabs %}

![](PreviewRows_images/PreviewRows_img6.png)

## Adding group header and footer
The group header/group footer sections can be added to the top and bottom of the groups. This can be used to show the additional information about the groups like the group preview rows.
![](PreviewRows_images/PreviewRows_img7.png)

To know more about group header/footer section, refer the following link,
[https://help.syncfusion.com/windowsforms/gridgrouping/grouping#group-headersfooters](https://help.syncfusion.com/windowsforms/gridgrouping/grouping#group-headersfooters) 
