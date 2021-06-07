---
layout: post
title: Interactive Features in Windows Forms DataGrid control | Syncfusion
description: Learn about Interactive Features support in Syncfusion Windows Forms DataGrid (SfDataGrid) control and more.
platform: windowsforms
control: SfDataGrid
documentation: ug
---
# Interactive Features in Windows Forms DataGrid (SfDataGrid)

## Context Menu

SfDataGrid provides an entirely customizable menu to expose the functionality on user interface by using [ContextMenuStrip](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.contextmenustrip?view=net-5.0). It allows to create context menus for different rows in an efficient manner.

### ContextMenu for Records

The context menu for the data rows can be set by using [SfDataGrid.RecordContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_RecordContextMenu) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.RecordContextMenu = new ContextMenuStrip();
this.sfDataGrid1.RecordContextMenu.Items.Add("Cut", null, OnCutClicked);
this.sfDataGrid1.RecordContextMenu.Items.Add("Copy", null, OnCopyClicked);
this.sfDataGrid1.RecordContextMenu.Items.Add("Paste", null, OnPasteClicked);	
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.RecordContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.RecordContextMenu.Items.Add("Cut", Nothing, OnCutClicked)
Me.sfDataGrid1.RecordContextMenu.Items.Add("Copy", Nothing, OnCopyClicked)
Me.sfDataGrid1.RecordContextMenu.Items.Add("Paste", Nothing, OnPasteClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for the data row](InteractiveFeatures_Images/ContextMenu1.png)

### ContextMenu for Column Header

The context menu for the column header row can be set by using [SfDataGrid.ColumnHeaderContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ColumnHeaderContextMenu) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ColumnHeaderContextMenu = new ContextMenuStrip();
this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Sort Ascending", Image.FromFile("sortasc.png"), OnSortAscendingClicked);
this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Sort Descending", Image.FromFile("sortdesc.png"), OnSortDescendingClicked);
this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Clear Sorting", null, OnClearSortingClicked);
this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Show GroupDropArea", null, OnShowGroupDropAreaClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ColumnHeaderContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Sort Ascending", Image.FromFile("sortasc.png"), OnSortAscendingClicked)
Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Sort Descending", Image.FromFile("sortdesc.png"), OnSortDescendingClicked)
Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Clear Sorting", Nothing, OnClearSortingClicked)
Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Show GroupDropArea", Nothing, OnShowGroupDropAreaClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for column header](InteractiveFeatures_Images/ContextMenu2.png)

### ContextMenu for RowHeader
The context menu for the row headers can be set by using [SfDataGrid.RowHeaderContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_RowHeaderContextMenu) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.RowHeaderContextMenu = new ContextMenuStrip();
this.sfDataGrid1.RowHeaderContextMenu.Items.Add("Delete", null, OnDeleteClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.RowHeaderContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.RowHeaderContextMenu.Items.Add("Delete", Nothing, OnDeleteClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for row header](InteractiveFeatures_Images/ContextMenu3.png)

### ContextMenu for GroupDropArea

The context menu for the group drop area can be set by using [SfDataGrid.GroupDropAreaContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_GroupDropAreaContextMenu) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.GroupDropAreaContextMenu = new ContextMenuStrip();
this.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Hide GroupDropArea", null, OnHideGroupDropAreaClicked);
this.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Expand All", null, OnExpandAllClicked);
this.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Collapse All", null, OnCollapseAllClicked);
this.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Clear Groups", null, OnClearGroupsClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.GroupDropAreaContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Hide GroupDropArea", Nothing, OnHideGroupDropAreaClicked)
Me.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Expand All", Nothing, OnExpandAllClicked)
Me.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Collapse All", Nothing, OnCollapseAllClicked)
Me.sfDataGrid1.GroupDropAreaContextMenu.Items.Add("Clear Groups", Nothing, OnClearGroupsClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for group drop area](InteractiveFeatures_Images/ContextMenu4.png)

### ContextMenu for GroupDropAreaItem

The context menu for the group drop area items can be set by using [SfDataGrid.GroupDropAreaItemContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_GroupDropAreaItemContextMenu) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.GroupDropAreaItemContextMenu = new ContextMenuStrip();
this.sfDataGrid1.GroupDropAreaItemContextMenu.Items.Add("Expand All", null, OnItemExpandAllClicked);
this.sfDataGrid1.GroupDropAreaItemContextMenu.Items.Add("Collapse All", null, OnItemCollapseAllClicked);
this.sfDataGrid1.GroupDropAreaItemContextMenu.Items.Add("Clear Group", null, OnGroupClearClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.GroupDropAreaItemContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.GroupDropAreaItemContextMenu.Items.Add("Expand All", Nothing, OnItemExpandAllClicked)
Me.sfDataGrid1.GroupDropAreaItemContextMenu.Items.Add("Collapse All", Nothing, OnItemCollapseAllClicked)
Me.sfDataGrid1.GroupDropAreaItemContextMenu.Items.Add("Clear Group", Nothing, OnGroupClearClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for group drop area item](InteractiveFeatures_Images/ContextMenu5.png)

### ContextMenu for GroupCaptionSummaryRow

The context menu for the group caption can be set by using [SfDataGrid.GroupCaptionContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_GroupCaptionContextMenu) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.GroupCaptionContextMenu = new ContextMenuStrip();
this.sfDataGrid1.GroupCaptionContextMenu.Items.Add("Expand", null, OnExpandClicked);
this.sfDataGrid1.GroupCaptionContextMenu.Items.Add("Collapse", null, OnCollapseClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.GroupCaptionContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.GroupCaptionContextMenu.Items.Add("Expand", Nothing, OnExpandClicked)
Me.sfDataGrid1.GroupCaptionContextMenu.Items.Add("Collapse", Nothing, OnCollapseClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for group caption](InteractiveFeatures_Images/ContextMenu6.png)

### ContextMenu for GroupSummaryRow

The context menu for the group summary can be set by using [SfDataGrid.GroupSummaryContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_GroupSummaryContextMenu) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.GroupSummaryContextMenu = new ContextMenuStrip();
this.sfDataGrid1.GroupSummaryContextMenu.Items.Add("Sum", null, OnSumClicked);
this.sfDataGrid1.GroupSummaryContextMenu.Items.Add("Count", null, OnCountClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.GroupSummaryContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.GroupSummaryContextMenu.Items.Add("Sum", Nothing, OnSumClicked)
Me.sfDataGrid1.GroupSummaryContextMenu.Items.Add("Count", Nothing, OnCountClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for group summary](InteractiveFeatures_Images/ContextMenu7.png)

### ContextMenu for TableSummaryRow

The context menu for the table summary can be set by using [SfDataGrid.TableSummaryContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_TableSummaryContextMenu) property.
{% tabs %}
{% highlight c# %}
this.sfDataGrid1.TableSummaryContextMenu = new ContextMenuStrip();
this.sfDataGrid1.TableSummaryContextMenu.Items.Add("Sum", null, OnSumClicked);
this.sfDataGrid1.TableSummaryContextMenu.Items.Add("Count", null, OnCountClicked);
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.TableSummaryContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.TableSummaryContextMenu.Items.Add("Sum", Nothing, OnSumClicked)
Me.sfDataGrid1.TableSummaryContextMenu.Items.Add("Count", Nothing, OnCountClicked)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays context menu for table summary](InteractiveFeatures_Images/ContextMenu8.png)

### Appearance

The appearance of the context menus can be customized as given below.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.RecordContextMenu.BackColor = Color.AliceBlue;
this.sfDataGrid1.RecordContextMenu.ForeColor = Color.DarkBlue;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.RecordContextMenu.BackColor = Color.AliceBlue
Me.sfDataGrid1.RecordContextMenu.ForeColor = Color.DarkBlue
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays applied color to context menus](InteractiveFeatures_Images/ContextMenu9.png)

### Cancel ContextMenu Opening

The context menu opening can be canceled for any particular cell/row or column through [ContextMenuOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ContextMenuOpening += SfDataGrid1_ContextMenuOpening;

private void SfDataGrid1_ContextMenuOpening(object obj, ContextMenuOpeningEventArgs e)
{
    if (e.ColumnIndex == 1 && e.RowIndex == 1)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ContextMenuOpening, AddressOf SfDataGrid1_ContextMenuOpening

Private Sub SfDataGrid1_ContextMenuOpening(ByVal obj As Object, ByVal e As ContextMenuOpeningEventArgs)
	If e.ColumnIndex = 1 AndAlso e.RowIndex = 1 Then
		e.Cancel = True
	End If
End Sub
{% endhighlight %}
{% endtabs %}

[ContextMenuOpened](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event occurs when any context menu is opened in SfDataGrid. This will not occur if `ContextMenuOpening` event is canceled.

### Customization of Context Menu

#### Change the Menu Items when Opening the Context Menu.

The menu items for  the context menu can be change when opening the context menu by handling the [ContextMenuOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ContextMenuOpening += SfDataGrid1_ContextMenuOpening;

private void SfDataGrid1_ContextMenuOpening(object obj, ContextMenuOpeningEventArgs e)
{
    if (e.ContextMenutype == ContextMenuType.TableSummary)
    {
        e.ContextMenu.Items.Clear();
        e.ContextMenu.Items.Add("Min", null, OnMinClicked);
        e.ContextMenu.Items.Add("Max", null, OnMaxClicked);
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ContextMenuOpening, AddressOf SfDataGrid1_ContextMenuOpening

Private Sub SfDataGrid1_ContextMenuOpening(ByVal obj As Object, ByVal e As ContextMenuOpeningEventArgs)
	If e.ContextMenutype = ContextMenuType.TableSummary Then
		e.ContextMenu.Items.Clear()
		e.ContextMenu.Items.Add("Min", Nothing, OnMinClicked)
		e.ContextMenu.Items.Add("Max", Nothing, OnMaxClicked)
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays change the menu items while opening the context menu](InteractiveFeatures_Images/ContextMenu10.png)

#### Create a New Column by using ColumnHeaderContextMenu 

SfDataGrid allows to copy a column and paste it in a new column. `ColumnHeaderContextMenu` can be used to provide options for copy column and paste column. The below code example shows how to provide this support.

{% tabs %}
{% highlight c# %}
SfDataGrid grid = null;
GridColumn column = null;
GridColumn copiedColumn = null

public Form1()
{
    InitializeComponent();
    orderInfo = new OrderInfoCollection();
    this.sfDataGrid1.DataSource = orderInfo.OrdersListDetails;
    this.sfDataGrid1.ColumnHeaderContextMenu = new ContextMenuStrip();
    this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Copy Column", null, OnCopyColumnClicked);
    this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Paste Column", null, OnPasteColumnClicked);
    this.sfDataGrid1.ContextMenuOpening += SfDataGrid1_ContextMenuOpening;

}

private void SfDataGrid1_ContextMenuOpening(object obj, ContextMenuOpeningEventArgs e)
{
    if (e.ContextMenutype == ContextMenuType.ColumnHeader)
    {
        grid = (e.ContextMenuInfo as ColumnContextMenuInfo).DataGrid;
        column = (e.ContextMenuInfo as ColumnContextMenuInfo).Column;
    }
}

private void OnCopyColumnClicked(object sender, EventArgs e)
{
    //The selected column stored in to CopiedColumn
    copiedColumn = column;
}

private void OnPasteColumnClicked(object sender, EventArgs e)
{
    if (copiedColumn != null)
    {
        var index = grid.Columns.IndexOf(column);
        grid.Columns.Insert(index + 1, new GridTextColumn()
        {
            MappingName = copiedColumn.MappingName
        });
    }
}
{% endhighlight %}
{% highlight vb %}
Dim grid As SfDataGrid = Nothing
Dim column As GridColumn = Nothing
Dim copiedColumn As GridColumn = Nothing


Public Sub New()
	InitializeComponent()

	orderInfo = New OrderInfoCollection()
	Me.sfDataGrid1.DataSource = orderInfo.OrdersListDetails

	Me.sfDataGrid1.ColumnHeaderContextMenu = New ContextMenuStrip()
	Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Copy Column", Nothing, OnCopyColumnClicked)
	Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Paste Column", Nothing, OnPasteColumnClicked)
      AddHandler sfDataGrid1.ContextMenuOpening, AddressOf SfDataGrid1_ContextMenuOpening

End Sub


Private Sub SfDataGrid1_ContextMenuOpening(ByVal obj As Object, ByVal e As ContextMenuOpeningEventArgs)
	If e.ContextMenutype = ContextMenuType.ColumnHeader Then
		grid = (TryCast(e.ContextMenuInfo, ColumnContextMenuInfo)).DataGrid
		column = (TryCast(e.ContextMenuInfo, ColumnContextMenuInfo)).Column
	End If
End Sub


Private Sub OnCopyColumnClicked(ByVal sender As Object, ByVal e As EventArgs)
	'The selected column stored in to CopiedColumn
	copiedColumn = column
End Sub


Private Sub OnPasteColumnClicked(ByVal sender As Object, ByVal e As EventArgs)
	If copiedColumn IsNot Nothing Then
		Dim index = grid.Columns.IndexOf(column)
		grid.Columns.Insert(index + 1, New GridTextColumn() With {.MappingName = copiedColumn.MappingName})
	End If
End Sub


{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays create a new column by using context menu](InteractiveFeatures_Images/ContextMenu11.png)

![Windows forms datagrid displays paste the data into new column by using context menu](InteractiveFeatures_Images/ContextMenu12.png)

#### Clipboard Options by using RecordContextMenu

The below code example shows how to provide clipboard options for the SfDataGrid by using  `RecordContextMenu`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.RecordContextMenu = new ContextMenuStrip();
this.sfDataGrid1.RecordContextMenu.Items.Add("Cut", null, OnCutClicked);
this.sfDataGrid1.RecordContextMenu.Items.Add("Copy", null, OnCopyClicked);
this.sfDataGrid1.RecordContextMenu.Items.Add("Paste", null, OnPasteClicked);

private void OnCutClicked(Object sender, EventArgs e)
{
    this.sfDataGrid1.ClipboardController.Cut();
}

private void OnCopyClicked(Object sender, EventArgs e)
{
    this.sfDataGrid1.ClipboardController.Copy();
}

private void OnPasteClicked(Object sender, EventArgs e)
{
    this.sfDataGrid1.ClipboardController.Paste();
}
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.RecordContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.RecordContextMenu.Items.Add("Cut", Nothing, AddressOf OnCutClicked)
Me.sfDataGrid1.RecordContextMenu.Items.Add("Copy", Nothing, AddressOf OnCopyClicked)
Me.sfDataGrid1.RecordContextMenu.Items.Add("Paste", Nothing, AddressOf OnPasteClicked)

private void OnCutClicked(Object sender, EventArgs e)
	Me.sfDataGrid1.ClipboardController.Cut()

private void OnCopyClicked(Object sender, EventArgs e)
	Me.sfDataGrid1.ClipboardController.Copy()

private void OnPasteClicked(Object sender, EventArgs e)
	Me.sfDataGrid1.ClipboardController.Paste()
{% endhighlight %}
{% endtabs %}

####  Clear Filtering by using ColumnHeaderContextMenu

The below code example shows how to provide option to clear filters in all the columns by using `ColumnHeaderContextMenu`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ColumnHeaderContextMenu = new ContextMenuStrip();
this.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Clear Filtering", null, OnClearFilteringClicked);

void OnClearFilteringClicked(object sender, EventArgs e)
{
    this.sfDataGrid1.ClearFilters();
}
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ColumnHeaderContextMenu = New ContextMenuStrip()
Me.sfDataGrid1.ColumnHeaderContextMenu.Items.Add("Clear Filtering", Nothing, AddressOf OnClearFilteringClicked)

void OnClearFilteringClicked(Object sender, EventArgs e)
	Me.sfDataGrid1.ClearFilters()
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays clear filtering menu item in context menu](InteractiveFeatures_Images/ContextMenu13.png)

## Column chooser 

Columns visibility in the SfDataGrid can be changed at runtime by using the [ColumnChooserPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Interactivity.ColumnChooserPopup.html) or [ColumnChooser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Interactivity.ColumnChooser.html) control. 

### Load column chooser pop-up

Column chooser pop-up can be enabled in the application by creating an instance of ColumnChooserPopup when passing SfDataGrid to the constructor. You can display the pop-up by using the Show method. Columns visibility will be changed when clicking `OK` based on the checked state of the checked list box of the column chooser pop-up.

{% tabs %}
{% highlight c# %}
//Attach the column chooser popup to the sfdatagrid.
ColumnChooserPopup columnChooser = new ColumnChooserPopup(this.sfDataGrid);
columnChooserPopup.Show();
{% endhighlight %}
{% highlight vb %}
'Attach the column chooser popup to the sfdatagrid.
Dim columnChooser As New ColumnChooserPopup(Me.sfDataGrid)
columnChooserPopup.Show()
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays column chooser popup](InteractiveFeatures_Images/ColumnChooser1.png)

### Load column chooser as control

Column chooser can also be loaded as a control by creating an instance of the `ColumnChooser` control and adding it to the container control of the application.

{% tabs %}
{% highlight c# %}
// Add column chooser as control
ColumnChooser columnChooser = new ColumnChooser(sfDataGrid);
columnChooser.Location = new Point(500, 10);
this.Controls.Add(columnChooser);
{% endhighlight %}
{% highlight vb %}
' Add column chooser as control
Dim columnChooser As New ColumnChooser(sfDataGrid)
columnChooser.Location = New Point(500, 10)
Me.Controls.Add(columnChooser)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays column chooser control](InteractiveFeatures_Images/ColumnChooser2.png)

### Appearance customization

Appearance of the column chooser can be customized by accessing the inner controls of the column chooser: CheckedListBox, OKButton, CancelButton, and SearchTextBox. 

You can change the selection backcolor of the checked listbox by setting the style properties.

{% tabs %}
{% highlight c# %}
//Set the selection backcolor for the checked listbox.
ColumnChooserPopup columnChooser = new ColumnChooserPopup(this.sfDataGrid);
columnChooserPopup.ColumnChooser.CheckedListBox.Style.SelectionStyle.SelectionBackColor = Color.LightGreen;
columnChooserPopup.Show();
{% endhighlight %}
{% highlight vb %}
'Set the selection backcolor for the checked listbox.
Dim columnChooser As New ColumnChooserPopup(Me.sfDataGrid)
columnChooserPopup.ColumnChooser.CheckedListBox.Style.SelectionStyle.SelectionBackColor = Color.LightGreen
columnChooserPopup.Show()
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays column chooser appearance](InteractiveFeatures_Images/ColumnChooser3.png)

### Loading custom column chooser

By default, the column chooser will be loaded with OK and Cancel buttons. Columns visibility will be applied only by clicking the OK button. You can also change the visibility by clicking the checked list box item. 

#### Creating custom column chooser control

{% tabs %}
{% highlight c# %}
/// <summary>
/// Represents the class that provides the custom column chooser control.
/// </summary>
public class ColumnChooserExt : ColumnChooser
{
    /// <summary>
    /// The grid attached with the column chooser.
    /// </summary>
    private SfDataGrid dataGrid;

    /// <summary>
    /// Initializes a new instance of the sfDataGrid
    /// </summary>
    /// <param name="sfDataGrid">The data grid which needs to be attached to the control.</param>
    public ColumnChooserExt(SfDataGrid sfDataGrid): base(sfDataGrid)
    {
        dataGrid = sfDataGrid;
    }

    /// <summary>
    /// Overridden to updated the setting of the checked list box.
    /// </summary>
    protected override void AddCheckedListBox()
    {
        base.AddCheckedListBox();
        this.CheckedListBox.CheckBoxSelectionMode = Syncfusion.WinForms.ListView.Enums.CheckBoxSelectionMode.CheckOnItemClick;
        this.CheckedListBox.ItemChecked += CheckedListBox_ItemChecking;
    }

    /// <summary>
    /// Change the visibility of the columns on checking the checked list box item.
    /// </summary>
    /// <param name="sender">The object of the sender.</param>
    /// <param name="e">An <see cref=""/></param>
    void CheckedListBox_ItemChecking(object sender, Syncfusion.WinForms.ListView.Events.ItemCheckedEventArgs e)
    {
        dataGrid.Columns[e.ItemData.ToString()].Visible = e.NewState == CheckState.Checked;
    }

    /// <summary>
    /// Overridden to cancel the adding of OK button.
    /// </summary>
    protected override void AddOKButton()
    {
        // Do nothing to avod adding the OK button.
    }
    
    /// <summary>
    /// Overridden to cancel the adding of Cancel button.
    /// </summary>
    protected override void AddCancelButton()
    {
        // Set the height for the checked listbox and column chooser.
        this.CheckedListBox.Size = new Size(this.CheckedListBox.Size.Width, CheckedListBox.Size.Height + CancelButton.Height + 15);
        this.MaximumSize = new Size(this.Size.Width, this.Size.Height - (CancelButton.Height + 15));
    }  
}
{% endhighlight %}
{% highlight vb %}
''' <summary>
''' Represents the class that provides the custom column chooser control.
''' </summary>
Public Class ColumnChooserExt
	Inherits ColumnChooser
	''' <summary>
	''' The grid attached with the column chooser.
	''' </summary>
	Private dataGrid As SfDataGrid

	''' <summary>
	''' Initializes a new instance of the sfDataGrid
	''' </summary>
	''' <param name="sfDataGrid">The data grid which needs to be attached to the control.</param>
	Public Sub New(ByVal sfDataGrid As SfDataGrid)
		MyBase.New(sfDataGrid)
		dataGrid = sfDataGrid
	End Sub

	''' <summary>
	''' Overridden to updated the setting of the checked listbox.
	''' </summary>
	Protected Overrides Sub AddCheckedListBox()
		MyBase.AddCheckedListBox()
		Me.CheckedListBox.CheckBoxSelectionMode = Syncfusion.WinForms.ListView.Enums.CheckBoxSelectionMode.CheckOnItemClick
		AddHandler Me.CheckedListBox.ItemChecked, AddressOf CheckedListBox_ItemChecking
	End Sub

	''' <summary>
	''' Change the visibility of the columns on checking the checked list box item.
	''' </summary>
	''' <param name="sender">The object of the sender.</param>
	''' <param name="e">An <see cref=""/></param>
	Private Sub CheckedListBox_ItemChecking(ByVal sender As Object, ByVal e As Syncfusion.WinForms.ListView.Events.ItemCheckedEventArgs)
		dataGrid.Columns(e.ItemData.ToString()).Visible = e.NewState = CheckState.Checked
	End Sub

	''' <summary>
	''' Overridden to cancel the adding of OK button.
	''' </summary>
	Protected Overrides Sub AddOKButton()
		' Do nothing to avod adding the OK button.
	End Sub
	
	''' <summary>
	''' Overridden to cancel the adding of Cancel button.
	''' </summary>
	Protected Overrides Sub AddCancelButton()
	    Me.CheckedListBox.Size = New Size(Me.CheckedListBox.Size.Width, CheckedListBox.Size.Height + CancelButton.Height + 15)
	    Me.MaximumSize = New Size(Me.Size.Width, Me.Size.Height - (CancelButton.Height + 15))
	End Sub
End Class
{% endhighlight %}
{% endtabs %}

#### Adding custom column chooser control

{% tabs %}
{% highlight c# %}
// Add column chooser as control
ColumnChooserExt columnChooser = new ColumnChooserExt(sfDataGrid);
columnChooser.Location = new Point(500, 10);
this.Controls.Add(columnChooser);
{% endhighlight %}
{% highlight vb %}
' Add column chooser as control
Dim columnChooser As New ColumnChooserExt(sfDataGrid)
columnChooser.Location = New Point(500, 10)
Me.Controls.Add(columnChooser)
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays custom column chooser control](InteractiveFeatures_Images/ColumnChooser4.png)

You can download the custom column chooser sample [here](http://www.syncfusion.com/downloads/support/directtrac/general/ze/CustomColumnChooser_Sample-1194097955).

## ToolTip

SfDataGrid provides the support to show the pop-up window that displays the information when the mouse hover on the cells by using [SfToolTip](https://help.syncfusion.com/windowsforms/sftooltip/overview). The ToolTip for the SfDataGrid can be enabled by setting the[SfDataGrid.ShowToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ShowToolTip) property to true.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ShowToolTip = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ShowToolTip = True
{% endhighlight %}
{% endtabs %}

The ToolTip for any particular column can be enabled by setting [GridColumnBase.ShowToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_ShowToolTip) property to true.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderID"].ShowToolTip = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("OrderID").ShowToolTip = True
{% endhighlight %}
{% endtabs %}

N>[GridColumnBase.ShowToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_ShowToolTip) takes higher priority than [SfDataGrid.ShowToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ShowToolTip).


![Windows forms datagrid displays tooltip when the mouse hover the cell](InteractiveFeatures_Images/ToolTip1.png)

### Displaying ToolTip on Header

The ToolTip can be displayed for the header cells by setting the [SfDataGrid.ShowHeaderToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ShowHeaderToolTip) property to true.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ShowHeaderToolTip = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ShowHeaderToolTip = True
{% endhighlight %}
{% endtabs %}

The header ToolTip for any particular column can be enabled by setting [GridColumnBase.ShowHeaderToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_ShowHeaderToolTip) property to true.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Columns["OrderID"].ShowHeaderToolTip = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Columns("OrderID").ShowHeaderToolTip = True
{% endhighlight %}
{% endtabs %}

N>[GridColumnBase.ShowHeaderToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.GridColumnBase.html#Syncfusion_WinForms_DataGrid_GridColumnBase_ShowHeaderToolTip) takes higher priority than [SfDataGrid.ShowHeaderToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ShowHeaderToolTip).

![Windows forms datagrid displays tootip when the mouse hover the header](InteractiveFeatures_Images/ToolTip2.png)

### Displaying ToolTip Only for the Trimmed Cells

By default, ToolTip will be displayed for all the cells. SfDataGrid provides support to display ToolTip only for the cells that contains trimmed text by setting value for [SfDataGrid.ToolTipOption.ToolTipMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Interactivity.ToolTipOptions.html#Syncfusion_WinForms_DataGrid_Interactivity_ToolTipOptions_ToolTipMode) property as `TrimmedCells`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOption.ToolTipMode = ToolTipMode.TrimmedCells;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ToolTipOption.ToolTipMode = ToolTipMode.TrimmedCells
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays tooltip only for the trimmed cells](InteractiveFeatures_Images/ToolTip3.png)

### Setting ToolTip Delay	

#### Initial Delay

The [SfDataGrid.ToolTipOption.InitialDelay](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Interactivity.ToolTipOptions.html#Syncfusion_WinForms_DataGrid_Interactivity_ToolTipOptions_InitialDelay) property provides supports to shorten or lengthen the time before displaying a ToolTip.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOption.InitialDelay = 1000;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ToolTipOption.InitialDelay = 1000
{% endhighlight %}
{% endtabs %}

#### Auto Pop Delay

The [SfDataGrid.ToolTipOption.AutoPopDelay](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Interactivity.ToolTipOptions.html#Syncfusion_WinForms_DataGrid_Interactivity_ToolTipOptions_ToolTipMode) property provides support to shorten or lengthen the time duration that the tooltip is displayed when the mouse pointer is on a cell.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOption.AutoPopDelay = 3000;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.ToolTipOption.AutoPopDelay = 3000
{% endhighlight %}
{% endtabs %}

### Appearance

#### Styling

SfDataGrid allows to customize the appearance of the ToolTip through [SfDataGrid.Style.ToolTipStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.Styles.DataGridStyle.html#Syncfusion_WinForms_DataGrid_Styles_DataGridStyle_ToolTipStyle) property.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.Style.ToolTipStyle.BackColor = Color.AliceBlue;
this.sfDataGrid1.Style.ToolTipStyle.ForeColor = Color.Red;
this.sfDataGrid1.Style.ToolTipStyle.BorderThickness = 2;
this.sfDataGrid1.Style.ToolTipStyle.BorderColor = Color.DarkBlue;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.Style.ToolTipStyle.BackColor = Color.AliceBlue
Me.sfDataGrid1.Style.ToolTipStyle.ForeColor = Color.Red
Me.sfDataGrid1.Style.ToolTipStyle.BorderThickness = 2
Me.sfDataGrid1.Style.ToolTipStyle.BorderColor = Color.DarkBlue
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays the appearance of tooltip](InteractiveFeatures_Images/ToolTip4.png)

#### Conditional Styling

SfDataGrid allows to customize the appearance of the ToolTip based on conditions through [ToolTipOpening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ToolTipOpening) event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOpening += SfDataGrid1_ToolTipOpening1;

private void SfDataGrid1_ToolTipOpening1(object sender, ToolTipOpeningEventArgs e)
{
    if(e.RowIndex%2 == 0)
    {
        e.ToolTipInfo.Items[0].Style.BackColor = Color.PaleTurquoise;
        e.ToolTipInfo.Items[0].Style.ForeColor = Color.Red;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ToolTipOpening, AddressOf SfDataGrid1_ToolTipOpening1

Private Sub SfDataGrid1_ToolTipOpening1(ByVal sender As Object, ByVal e As ToolTipOpeningEventArgs)
	If e.RowIndex Mod 2 = 0 Then
		e.ToolTipInfo.Items(0).Style.BackColor = Color.PaleTurquoise
		e.ToolTipInfo.Items(0).Style.ForeColor = Color.Red
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays the appearance of the tooltip based on the condition](InteractiveFeatures_Images/ToolTip5.png)

### Cancel ToolTip Opening

SfDataGrid allows to cancel displaying the ToolTip for any particular cell/row or column by handling the `ToolTipOpening` event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOpening += SfDataGrid1_ToolTipOpening1;

private void SfDataGrid1_ToolTipOpening1(object sender, ToolTipOpeningEventArgs e)
{
    if (e.RowIndex == 1 && e.ColumnIndex == 3)
        e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ToolTipOpening, AddressOf SfDataGrid1_ToolTipOpening1

Private Sub SfDataGrid1_ToolTipOpening1(ByVal sender As Object, ByVal e As ToolTipOpeningEventArgs)
	If e.RowIndex = 1 AndAlso e.ColumnIndex = 3 Then
		e.Cancel = True
	End If
End Sub

{% endhighlight %}
{% endtabs %}

[ToolTipOpened](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_ToolTipOpened) event occurs when ToolTip for any cell is displayed. This will not occur if the `ToolTipOpening` event is canceled.

### Customization of ToolTip

#### Change the Display Text for a Cell

By default, SfDataGrid displays the ToolTip with the cell content as the ToolTip text. The ToolTip text for any particular cell can be changed by handling the `ToolTipOpening` event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOpening += SfDataGrid1_ToolTipOpening1;

private void SfDataGrid1_ToolTipOpening1(object sender, ToolTipOpeningEventArgs e)
{
    if (e.DisplayText == "6/21/2011")
    {
        e.ToolTipInfo.Items[0].Text = "June 21, 2011";
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ToolTipOpening, AddressOf SfDataGrid1_ToolTipOpening1

Private Sub SfDataGrid1_ToolTipOpening1(ByVal sender As Object, ByVal e As ToolTipOpeningEventArgs)
	If e.DisplayText = "6/21/2011" Then
		e.ToolTipInfo.Items(0).Text = "June 21, 2011"
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays the tooltip with cell content as the tooltip text](InteractiveFeatures_Images/ToolTip6.png)

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOpening += SfDataGrid1_ToolTipOpening1;

private void SfDataGrid1_ToolTipOpening1(object sender, ToolTipOpeningEventArgs e)
{
    if (e.DisplayText == "Frans")
    {
        e.ToolTipInfo.Items[0].Text = String.Empty;
        e.ToolTipInfo.Items[0].Image = Image.FromFile(@"Images/FRANS.png");
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ToolTipOpening, AddressOf SfDataGrid1_ToolTipOpening1

Private Sub SfDataGrid1_ToolTipOpening1(ByVal sender As Object, ByVal e As ToolTipOpeningEventArgs)
	If e.DisplayText = "Frans" Then
		e.ToolTipInfo.Items(0).Text = String.Empty
		e.ToolTipInfo.Items(0).Image = Image.FromFile("Images/FRANS.png")
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays the tooltip with cell content as the tooltip image](InteractiveFeatures_Images/ToolTip7.png)

#### Display ToolTip with Beak

ToolTip can be displayed with beak by handling the `ToolTipOpening` event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOpening += SfDataGrid1_ToolTipOpening1;

private void SfDataGrid1_ToolTipOpening1(object sender, ToolTipOpeningEventArgs e)
{
    e.ToolTipInfo.ToolTipStyle = Syncfusion.WinForms.Controls.Enums.ToolTipStyle.Balloon;
    e.ToolTipInfo.ToolTipLocation = Syncfusion.WinForms.Controls.Enums.ToolTipLocation.BottomRight;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ToolTipOpening, AddressOf SfDataGrid1_ToolTipOpening1

Private Sub SfDataGrid1_ToolTipOpening1(ByVal sender As Object, ByVal e As ToolTipOpeningEventArgs)
	e.ToolTipInfo.ToolTipStyle = Syncfusion.WinForms.Controls.Enums.ToolTipStyle.Balloon
	e.ToolTipInfo.ToolTipLocation = Syncfusion.WinForms.Controls.Enums.ToolTipLocation.BottomRight
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays the tooltip with beak](InteractiveFeatures_Images/ToolTip8.png)

#### Showing ToolTip for empty cells

By default, DataGrid do not show tooltip for empty cells. You can show tooltip for empty cells by handling the `ToolTipOpening` event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.ToolTipOpening += SfDataGrid1_ToolTipOpening;

private void SfDataGrid1_ToolTipOpening(object sender, ToolTipOpeningEventArgs e)
{
    if (string.IsNullOrEmpty(e.DisplayText))
    {
        e.ToolTipInfo.Items[0].Text = "CurrentCell value is Empty";
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.ToolTipOpening, AddressOf SfDataGrid1_ToolTipOpening

Private Sub SfDataGrid1_ToolTipOpening(ByVal sender As Object, ByVal e As ToolTipOpeningEventArgs)
    If String.IsNullOrEmpty(e.DisplayText) Then
        e.ToolTipInfo.Items(0).Text = "CurrentCell value is Empty"
    End If
End Sub
{% endhighlight %}
{% endtabs %}

![Windows forms datagrid displays the tooltip for a empty cell](InteractiveFeatures_Images/ToolTip9.png)

N> SfToolTip has used for the ToolTip support in the SfDataGrid. Refer [user guide](https://help.syncfusion.com/windowsforms/sftooltip/overview) of SfToolTip for more customizations options.

