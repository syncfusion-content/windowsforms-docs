---
layout: post
title: Unbound Row
description: This section explains about the unbound row support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Unbound Rows
SfDataGrid allows to add **additional rows** at top and also bottom of the SfDataGrid which are **not bound with data object** from underlying data source. The unbound rows can add by using [SfDataGrid.UnboundRows](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.UnboundRows.html) collection property. SfDataGrid allows to add any number of unbound rows. Unbound rows can be exported to excel and PDF.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.UnboundRows.Add(new GridUnboundRow() { Position = VerticalPosition.Top });

{% endhighlight %}
{% endtabs %}
![](images/UnboundRow_images/UnboundRow_img1.png)

## Positioning unbound rows
Unbound row can be placed in top or bottom of the SfDataGrid. Unbound row positioned based on [GridUnboundRow.Position](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridUnboundRow~Position.html) and [GridUnboundRow.ShowBelowSummary](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridUnboundRow~ShowBelowSummary.html) properties.
Below table shows the unbound row positioning based on property settings of Position and ShowBelowSummary.
<table>
<tr>
<td>
{{'**UnboundRow Position**'| markdownify }}
</td>
<td>
{{'**ShowBelowSummary**'| markdownify }}
</td>
<td>
{{'**Position in DataGrid**'| markdownify }}
</td>
</tr>
<tr>
<td>
Top
</td>
<td>
True
</td>
<td>
Unbound row placed at top, right above the record rows. In this position, unbound row is selectable and {{'**editable**'| markdownify }}.

</td>
</tr>
<tr>
<td>
Top
</td>
<td>
False
</td>
<td>
Unbound row placed at top, right next to Header row. In this position, unbound row is not selectable, {{'**not editable** '| markdownify }}and {{'**frozen** '| markdownify }}when scrolling.

</td>
</tr>
<tr>
<td>
Bottom
</td>
<td>
True
</td>
<td>
Unbound row placed at bottom of SfDataGrid. In this position, unbound row is {{'**not selectable**'| markdownify }}, {{'**not editable** '| markdownify }}and {{'**frozen** '| markdownify }}when scrolling.

</td>
</tr>
<tr>
<td>
Bottom
</td>
<td>
False
</td>
<td>
Unbound row placed at bottom, right below record rows. In this position, unbound row is {{'**selectable** '| markdownify }}and {{'**editable**'| markdownify }}.
</td>
</tr>
</table>
{% tabs %}
{% highlight c# %}
// Add the unbound row at top and above the summary row.
this.sfDataGrid.UnboundRows.Add(new GridUnboundRow() { Position = VerticalPosition.Top, ShowBelowSummary = false });

// Add the unbound row at top and below the summary row.
this.sfDataGrid.UnboundRows.Add(new GridUnboundRow() { Position = VerticalPosition.Top, ShowBelowSummary = true });

// Add the unbound row at bottom and below the summary row.
this.sfDataGrid.UnboundRows.Add(new GridUnboundRow() { Position = VerticalPosition.Bottom, ShowBelowSummary = true });

// Add the unbound row at bottom and above the summary row.
this.sfDataGrid.UnboundRows.Add(new GridUnboundRow() { Position = VerticalPosition.Bottom, ShowBelowSummary = false });

{% endhighlight %}
{% endtabs %}
Below screen shot shows different unbound rows placed in all possible positions,
![](images/UnboundRow_images/UnboundRow_img2.png)

## Populating data for unbound rows
The data for the unbound row can populated by handling [QueryUnboundRowInfo](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~QueryUnboundRowInfo_EV.html) event of SfDataGrid. This event occurs for each cell in unbound row whenever the row gets refreshed. [QueryUnboundRowInfoArgs](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.QueryUnboundRowInfoArgs.html) of the `QueryUnboundRowInfo` event provides information about the cell triggered this event.
The [QueryUnboundRowInfoArgs.Value](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.QueryUnboundRowInfoArgs~Value.html) property can be get or set based on the [UnboundAction](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.QueryUnboundRowInfoArgs~UnboundAction.html). If `UnboundAction` is `QueryData` then the value can set for display. If the `UnboundAction` is `CommitData` then able to get the edited value.
{% tabs %}
{% highlight c# %}
//Select some records in SfDataGrid.
this.sfDataGrid.SelectedItems.Add(data.OrdersListDetails[2]);
this.sfDataGrid.SelectedItems.Add(data.OrdersListDetails[3]);
this.sfDataGrid.SelectedItems.Add(data.OrdersListDetails[4]);

//Raise the QueryUnboundRowInfo event
this.sfDataGrid.QueryUnboundRowInfo += sfDataGrid_QueryUnboundRowInfo;

void sfDataGrid_QueryUnboundRowInfo(object sender, QueryUnboundRowInfoArgs e)
{
    if (e.UnboundAction == UnboundActions.QueryData)
    {
        if (e.RowColumnIndex.ColumnIndex == 0)
        {
            e.Value = (sfDataGrid.SelectedItems.OrderBy(item => (item as OrderInfo).OrderID).Last() as OrderInfo).OrderID;
            e.Handled = true;
        }

        else if (e.RowColumnIndex.ColumnIndex == 2)
        {
            e.Value = (sfDataGrid.SelectedItems.First(item => (item as OrderInfo).ProductName.Contains("R")) as OrderInfo).ProductName;
            e.Handled = true;
        }
    }
}

{% endhighlight %}
{% endtabs %}
![](images/UnboundRow_images/UnboundRow_img3.png)

## Refreshing the unbound rows at runtime
The unbound rows can be add or remove using `UnboundRows` property which reflects in UI immediately. The `QueryUnboundRowInfo` event for the unbound row cells at runtime by invalidating the unbound row by calling [SfDataGrid.InValidateUnboundRow](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~InValidateUnboundRow.html) method.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.InValidateUnboundRow(sfDataGrid.UnboundRows[0], true);
this.sfDataGrid.TableControl.Invalidate();

{% endhighlight %}
{% endtabs %}

## Editing in unbound rows

### Cancel the editing for unbound row cell
The editing of unbound row cell can cancel by handling the [SfDataGrid.CurrentCellBeginEdit](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellBeginEdit_EV.html) event with the help of [SfDataGrid.GetUnboundRow](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.DataGridIndexResolver~GetUnboundRow.html) method and row index.
{% tabs %}
{% highlight c# %}
sfDataGrid.CurrentCellBeginEdit += dataGrid_CurrentCellBeginEdit;

void dataGrid_CurrentCellBeginEdit(object sender, CurrentCellBeginEditEventArgs args)
{
    var unboundRow = sfDataGrid.GetUnboundRow(args.DataRow.Index);

    if (unboundRow == null)
        return;
    args.Cancel = true;
}
{% endhighlight %}
{% endtabs %}

### Saving edited unbound row cell value to external source
The edited value of unbound row cell can get from `QueryUnboundRowInfoArgs.Value` property of QueryUnboundRowInfo event when `UnboundAction` is `CommitData`.
{% tabs %}
{% highlight c# %}
void sfDataGrid_QueryUnboundRowInfo(object sender, QueryUnboundRowInfoArgs e)
{
    if (e.UnboundAction == UnboundActions.CommitData)
    {
        var editedValue = e.Value;
    }
}
{% endhighlight %}
{% endtabs %}
## Appearance
The appearance of the unbound row can be customized by using the [UnboundRowStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~UnboundRowStyle.html) property.
{% tabs %}
{% highlight c# %}
sfDataGrid.Style.UnboundRowStyle.BackColor = Color.LightGray;
sfDataGrid.Style.UnboundRowStyle.TextColor = Color.Red;

{% endhighlight %}
{% endtabs %}
![](images/UnboundRow_images/UnboundRow_img4.png)

## Customizing the unbound row's behavior
SfDataGrid allows to customize the operations like key navigation and UI related interactions by overriding the corresponding renderer associated with the unbound row cell. Each renderer have set of virtual methods for handling the behaviors. Creating new renderers also supported.
The renderer of unbound row cell defined by [QueryUnboundRowInfoArgs.CellType](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.QueryUnboundRowInfoArgs~CellType.html) property in the `QueryUnboundRowInfo` event. If the `QueryUnboundRowInfoArgs.CellType` not defined then the UnboundRowCell set as default cell type.

### Overriding existing CellType
SfDataGrid allows to customize the unbound row cell behavior by overriding existing renderer and replace the default one in [UnboundRowCellRenderers](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~UnboundRowCellRenderers.html).
{% tabs %}
{% highlight c# %}
public class GridUnboundRowCellTextBoxRendererExt : GridUnboundRowCellRenderer
{
    protected override void OnEditingComplete(DataColumnBase dataColumn, TextBox currentRendererElement)
    {
        base.OnEditingComplete(dataColumn, currentRendererElement);
    }

    protected override void OnInitializeEditElement(DataColumnBase column, RowColumnIndex rowColumnIndex, TextBox uiElement)
    {
        base.OnInitializeEditElement(column, rowColumnIndex, uiElement);
        uiElement.ForeColor = Color.Red;
    }
}
{% endhighlight %}
{% endtabs %}
In the below code default renderer replaced using the above custom renderer in `SfDataGrid.UnboundRowCellRenderers`.
{% tabs %}
{% highlight c# %}
sfDataGrid.UnboundRowCellRenderers.Remove("UnboundRowCell");

sfDataGrid.UnboundRowCellRenderers.Add("UnboundRowCell", new GridUnboundRowCellTextBoxRendererExt());
{% endhighlight %}
{% endtabs %}
![](images/UnboundRow_images/UnboundRow_img5.png)

### Custom Renderer
SfDataGrid allows to customize the unbound row cell by creating new renderer, deriving from `GridUnboundRowCellRenderer` and setting the `QueryUnboundRowInfoArgs.CellType` property.
Below code creates **DatePickerRenderer** to load the DatePicker as editor element in the first cell of unbound row.
{% tabs %}
{% highlight c# %}
// The custom unbound row cell renderer.
public class DatePickerRenderer : GridVirtualizingCellRendererBase<DateTimePicker>
{    
    public DatePickerRenderer()
    {

    }

    protected override DateTimePicker OnCreateEditUIElement()
    {
        return new DateTimePicker();
    }

    protected override void OnInitializeEditElement(DataColumnBase dataColumn, RowColumnIndex rowColIndex,
        DateTimePicker uiElement)
    {
        SfDataGrid DataGrid = dataColumn.UnboundRowInfo.OriginalSender as SfDataGrid;
        DateTime time = DateTime.Now;
        if(dataColumn.UnboundRowInfo.Value != null)
        DateTime.TryParse(dataColumn.UnboundRowInfo.Value.ToString(), out time);
        (uiElement as DateTimePicker).Value = time;
        uiElement.Tag = dataColumn;

        Rectangle editorRectangle = this.TableControl.GetCellRectangle(DataGrid.CurrentCell.RowIndex,
            DataGrid.CurrentCell.ColumnIndex, true);
        var borderWeight = DataGrid.Style.CurrentCellStyle.BorderThickness;
        var weight = GetWidthForWeight(borderWeight);

        // Adjusts with border thickness for the editing control bounds.
        editorRectangle = new Rectangle(editorRectangle.X + weight, editorRectangle.Y + weight, editorRectangle.Width -
            (2 * weight), editorRectangle.Height - (2 * weight));

        uiElement.Size = editorRectangle.Size;
        uiElement.Location = editorRectangle.Location;
        uiElement.AutoSize = false;
        uiElement.MinimumSize = editorRectangle.Size;
        uiElement.Format = DateTimePickerFormat.Long;
        this.TableControl.Controls.Add(uiElement);
        uiElement.Focus();
    }
    
    protected override void OnRender(
        Graphics paint,
        Rectangle cellRect,
        string cellValue,
        CellStyleInfo style,
        DataColumnBase column,
        RowColumnIndex rowColumnIndex)
    {
        SfDataGrid DataGrid = column.UnboundRowInfo.OriginalSender as SfDataGrid;
        bool isEditing = DataGrid.CurrentCell != null && DataGrid.CurrentCell.RowIndex == rowColumnIndex.RowIndex
            && DataGrid.CurrentCell.ColumnIndex == rowColumnIndex.ColumnIndex && DataGrid.CurrentCell.IsEditing;

        SolidBrush backColor = new SolidBrush(style.BackColor);
        var fillRect = (style.HasBorders) ? cellRect : cellRect.X == 0 ? new Rectangle(cellRect.X, cellRect.Y + 1, 
            cellRect.Width, cellRect.Height - 1) : new Rectangle(cellRect.X + 1, cellRect.Y + 1, cellRect.Width - 1, cellRect.Height - 1);
        SolidBrush textColor = new SolidBrush(style.TextColor);
        GridFontInfo font = column.GridColumn.CellStyle.Font;;
        StringFormat format = new StringFormat();
        format.LineAlignment = StringAlignment.Center;
        if (isEditing)
        {
            paint.FillRectangle(new SolidBrush(style.BackColor), fillRect);
            this.UpdateEditElement(column, this.CurrentCellRendererElement, cellRect);
            this.CurrentCellRendererElement.Update();
            if (isEditing)
                return;

            cellValue = this.CurrentCellRendererElement.Text;
            textColor = new SolidBrush(style.TextColor);
            font = column.GridColumn.CellStyle.Font;

            cellRect.X = style.HorizontalAlignment == HorizontalAlignment.Left
             ? cellRect.X + 2
             : column.GridColumn.CellStyle.HorizontalAlignment == HorizontalAlignment.Right
                 ? cellRect.X - 2
                 : cellRect.X;
        }

        ////Filling BackColor
        if (backColor != SystemBrushes.Window)
            paint.FillRectangle(backColor, fillRect);

        if (!string.IsNullOrEmpty(cellValue))
        {
            //Draw String
            paint.DrawString(cellValue, font.GetFont(), textColor, cellRect, format);
        }

        format.Dispose();
        base.OnRender(paint, cellRect, cellValue, style, column, rowColumnIndex);
    }

    public override bool CanValidate()
    {
        return false;
    }

    protected override void OnWireEditUIElement(DateTimePicker uiElement)
    {
        base.OnWireEditUIElement(uiElement);
        uiElement.ValueChanged += uiElement_ValueChanged;
    }

    protected override void OnUnwireEditUIElement(DateTimePicker uiElement)
    {
        base.OnUnwireEditUIElement(uiElement);
        uiElement.ValueChanged -= uiElement_ValueChanged;
    }

    void uiElement_ValueChanged(object sender, EventArgs e)
    {
        var datePicker = sender as DateTimePicker;
        if (datePicker.Tag is DataColumn)
        {
            var dataColumn = datePicker.Tag as DataColumnBase;
            dataColumn.UnboundRowInfo.Value = (sender as DateTimePicker).Value;
        }
    }

    private static int GetWidthForWeight(GridBorderWeight weight)
    {
        int width = 1;
        switch (weight)
        {
            case GridBorderWeight.ExtraThin:
                width = 1;
                break;
            case GridBorderWeight.Thin:
                width = 1;
                break;
            case GridBorderWeight.Medium:
                width = 2;
                break;
            case GridBorderWeight.Thick:
                width = 3;
                break;
            case GridBorderWeight.ExtraThick:
                width = 4;
                break;
            case GridBorderWeight.ExtraExtraThick:
                width = 4;
                break;
        }
        return width;
    }

    protected override void OnEditingComplete(DataColumnBase dataColumn, DateTimePicker currentRendererElement)
    {
        dataColumn.UnboundRowInfo.Value = (this.CurrentCellRendererElement as DateTimePicker).Text;
        (dataColumn.UnboundRowInfo.OriginalSender as SfDataGrid).RaiseQueryUnboundRowInfo(dataColumn.UnboundRowInfo.UnboundRow, 
            dataColumn.UnboundRowInfo.UnboundAction, dataColumn.UnboundRowInfo.Value,
            dataColumn.UnboundRowInfo.Column, dataColumn.UnboundRowInfo.CellType, dataColumn.UnboundRowInfo.RowColumnIndex);

        base.OnEditingComplete(dataColumn, currentRendererElement);
    }
}
{% endhighlight %}
{% endtabs %}
In the below code newly created renderer added in `SfDataGrid.UnboundRowCellRenderers`
{% tabs %}
{% highlight c# %}
sfDataGrid.UnboundRowCellRenderers.Add("DateTimeRenderer", new DatePickerRenderer());

{% endhighlight %}
{% endtabs %}
Below code sets the CellType as DateTimeRenderer,
{% tabs %}
{% highlight c# %}
void sfDataGrid_QueryUnboundRowInfo(object sender, QueryUnboundRowInfoArgs e)
{            
    if (e.UnboundAction == UnboundActions.QueryData)
    {
        if (e.Column.MappingName == "OrderDate")
        {
            e.CellType = "DateTimeRenderer";
            e.Handled = true;
        }
   }
}
{% endhighlight %}
{% endtabs %}
![](images/UnboundRow_images/UnboundRow_img6.png)

## Changing unbound row height
The height of unbound row can changed by using [SfDataGrid.QueryRowHeight](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~QueryRowHeight_EV.html) event,
{% tabs %}
{% highlight c# %}
sfDataGrid.QueryRowHeight += dataGrid_QueryRowHeight;  

void dataGrid_QueryRowHeight(object sender, QueryRowHeightEventArgs e)
{

    if (sfDataGrid.IsUnboundRow(e.RowIndex))
    {
        e.Height = 40;
        e.Handled = true;
    }
}
{% endhighlight %}
{% endtabs %}
![](images/UnboundRow_images/UnboundRow_img7.png)

## Exporting unbound rows

### Export unbound rows to Excel
The unbound rows can export to excel by setting the [ExcelExportingOptions.ExportUnboundRows](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagridconverter/Syncfusion.SfDataGridConverter.WinForms~Syncfusion.WinForms.DataGridConverter.ExcelExportingOptions~ExportUnboundRows.html) property.
{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.DataGridConverter;

ExcelExportingOptions option = new ExcelExportingOptions();
option.ExportUnboundRows = true;
{% endhighlight %}
{% endtabs %}

### Export unbound rows to PDF
The unbound rows can export to PDF by setting the [PdfExportingOptions.ExportUnboundRows](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagridconverter/Syncfusion.SfDataGridConverter.WinForms~Syncfusion.WinForms.DataGridConverter.PdfExportingOptions~ExportUnboundRows.html) property.
{% tabs %}
{% highlight c# %}
using Syncfusion.WinForms.DataGridConverter;

PdfExportingOptions pdfExportingOption = new PdfExportingOptions();
pdfExportingOption.ExportUnboundRows = true;
{% endhighlight %}
{% endtabs %}

## Get unbound rows
The unbound row of specified row index can get by using [GetUnboundRow](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.DataGridIndexResolver~GetUnboundRow.html) method.
{% tabs %}
{% highlight c# %}
sfDataGrid.GetUnboundRow(1);
{% endhighlight %}
{% endtabs %}
