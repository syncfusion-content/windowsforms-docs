---
layout: post
title: DataManipulation
description: This section explains about the data manipulation support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---
## AddNewRow
SfDataGrid provides built-in row (called AddNewRow) to add new records to underlying collection. AddNewRow can be enabled by specifying the position where it should be displayed by setting [SfDataGrid.AddNewRowPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AddNewRowPosition.html) property.
When start editing in AddNewRow, the SfDataGrid control creates an instance for the underlying data object and adds it to underlying collection when editing completed.

N> The underlying data object must be defined with default constructor. Otherwise, create instance of data object by handling [AddNewRowInitiating](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AddNewRowInitiating_EV.html) event.

{% tabs %}
{% highlight c# %}
 sfDataGrid.AddNewRowPosition = RowPosition.Top;
{% endhighlight %}
{% highlight vb %}
 sfDataGrid.AddNewRowPosition = RowPosition.Top
{% endhighlight %}
{% endtabs %}
![](DataManipulation_images/AddNewRow_img1.png)

### Placing AddNewRow at Various Positions
SfDataGrid allows to add the AddNewRow at either top or fixed top or bottom or fixed bottom by setting the `AddNewRowPosition` property.
{% tabs %}
{% highlight c# %}
 sfDataGrid.AddNewRowPosition = RowPosition.FixedBottom;
{% endhighlight %}
{% highlight vb %}
 sfDataGrid.AddNewRowPosition = RowPosition.FixedBottom
{% endhighlight %}
{% endtabs %}
![](DataManipulation_images/AddNewRow_img2.png)

SfDataGrid allows to check whether the specified row index is AddNewRow index, by using [SfDataGrid.IsAddNewRowIndex](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.DataGridIndexResolver~IsAddNewRowIndex.html)  helper method.
{% tabs %}
{% highlight c# %}
sfDataGrid.IsAddNewRowIndex(1);
{% endhighlight %}
{% highlight vb %}
sfDataGrid.IsAddNewRowIndex(1)
{% endhighlight %}
{% endtabs %}

### Customize the Newly Added Row Position
SfDataGrid adds new data item from AddNewRow at the end of collection. When data operations (sorting, grouping) performed, the new item added based on data operations. The newly added data item position can be customized by setting [NewItemPlaceholderPosition](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~NewItemPlaceholderPosition.html) property.
{% tabs %}
{% highlight c# %}
sfDataGrid.NewItemPlaceholderPosition = Syncfusion.Data.NewItemPlaceholderPosition.AtBeginning;
{% endhighlight %}
{% highlight vb %}
sfDataGrid.NewItemPlaceholderPosition = Syncfusion.Data.NewItemPlaceholderPosition.AtBeginning
{% endhighlight %}
{% endtabs %}

### Initializing Default Values for AddNewRow
SfDataGrid allows to set the default values for AddNewRow while initiating, through [AddNewRowInitiatingEventArgs.NewObject](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.AddNewRowInitiatingEventArgs~NewObject.html) property in `AddNewRowInitiating` event.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.AddNewRowInitiating += dataGrid_AddNewRowInitiating;

void dataGrid_AddNewRowInitiating(object sender, AddNewRowInitiatingEventArgs args)
{
    var data = args.NewObject as OrderInfo;
    data.OrderID = 101;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.AddNewRowInitiating, AddressOf dataGrid_AddNewRowInitiating

Private Sub dataGrid_AddNewRowInitiating(ByVal sender As Object, ByVal args As AddNewRowInitiatingEventArgs)
	Dim data = TryCast(args.NewObject, OrderInfo)
	data.OrderID = 101
End Sub
{% endhighlight %}
{% endtabs %}
![](DataManipulation_images/AddNewRow_img7.png)

### Validating the AddNewRow
The data in AddNewRow can validate like other data rows through built-in validation or custom validation. Here, AddNewRow is validated using [RowValidating](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~RowValidating_EV.html) event by setting [RowValidatingEventArgs.IsValid](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.RowValidatingEventArgs~IsValid.html) to false which doesn’t allow users to commit the AddNewRow until the validation gets succeeded.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.RowValidating += dataGrid_RowValidating;

void dataGrid_RowValidating(object sender, RowValidatingEventArgs args)
{
    if (this.sfDataGrid.IsAddNewRowIndex(args.DataRow.RowIndex))
    {
        var data = args.DataRow.RowData as OrderInfo;
        if (data.OrderID < 10000)
        {
            args.IsValid = false;
            args.ErrorMessage = "OrderID should greater than 10000.";
        }
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.RowValidating, AddressOf dataGrid_RowValidating

Private Sub dataGrid_RowValidating(ByVal sender As Object, ByVal args As RowValidatingEventArgs)
	If Me.sfDataGrid.IsAddNewRowIndex(args.DataRow.RowIndex) Then
		Dim data = TryCast(args.DataRow.RowData, OrderInfo)

		If data.OrderID < 10000 Then
			args.IsValid = False
			args.ErrorMessage = "OrderID should greater than 10000."
		End If
	End If
End Sub
{% endhighlight %}
{% endtabs %}
![](DataManipulation_images/AddNewRow_img3.png)

Similarly, the cells can validate in AddNewRow by using the[CurrentCellValidating](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellValidating_EV.html) event.

### Customizing AddNewRow Text using Default Resource File
SfDataGrid allows to customize the watermark text of AddNewRow by changing value of AddNewRowText in Resource Designer. To customize the AddNewRowText, add the default `Syncfusion.SfDataGrid.WinForms.resx` file in **Resources** folder and then customize the value of AddNewRowText.

![](DataManipulation_images/AddNewRow_img4.png)

![](DataManipulation_images/AddNewRow_img5.png)

### Appearance
The appearance of the AddNewRow can be customized by setting the [AddNewRowStyle](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~AddNewRowStyle.html).
{% tabs %}
{% highlight c# %}
this.sfDataGrid.Style.AddNewRowStyle.BackColor = Color.DarkCyan;
this.sfDataGrid.Style.AddNewRowStyle.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.Style.AddNewRowStyle.BackColor = Color.DarkCyan
Me.sfDataGrid.Style.AddNewRowStyle.TextColor = Color.White
{% endhighlight %}
{% endtabs %}

![](DataManipulation_images/AddNewRow_img6.png)

### Adding a new row programmatically

Programmatically, a new row can be added to the SfDataGrid.

{% tabs %}
{% highlight c# %}
OrderInfoCollection orderInfoCollection = new OrderInfoCollection();
sfDataGrid.DataSource = orderInfoCollection.OrdersListDetails;

OrderInfo orderInfo = new OrderInfo() { OrderID = 10111, CustomerID = "FRANS", ProductName = "Alice Mutton", Quantity = 55, UnitPrice = 90, ContactNumber = 999789845, ShipCountry = "Brazil" };
orderInfoCollection.OrdersListDetails.Add(orderInfo);
{% endhighlight %}
{% highlight vb %}
Dim orderInfoCollection As New OrderInfoCollection()
sfDataGrid.DataSource = orderInfoCollection.OrdersListDetails

Dim orderInfo As New OrderInfo() With {.OrderID = 10111, .CustomerID = "FRANS", .ProductName = "Alice Mutton", .Quantity = 55, .UnitPrice = 90, .ContactNumber = 999789845, .ShipCountry = "Brazil"}
orderInfoCollection.OrdersListDetails.Add(orderInfo)
{% endhighlight %}
{% endtabs %}

## Delete Row
SfDataGrid provides built-in support to delete the selected records in user interface (UI) by pressing &lt;kbd&gt;Delete&lt;/kbd&gt; key. The deleting support can be enabled by setting the [SfDataGrid.AllowDeleting](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~AllowDeleting.html) property to true.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.AllowDeleting = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.AllowDeleting = True
{% endhighlight %}
{% endtabs %}

### Delete the Selected Records through Code
The selected records can be deleted by using the [DeleteSelectedRecords](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~DeleteSelectedRecords.html) method in SfDataGrid.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.DeleteSelectedRecords();
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid.DeleteSelectedRecords()
{% endhighlight %}
{% endtabs %}

### Customizing the Delete Operations

#### Conditionally Deleting Records
[RecordDeleting](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~RecordDeleting_EV.html) event occurs when the record is being deleted from SfDataGrid. The record deletion can be cancel by using the [RecordDeletingEventArgs.Cancel](https://msdn.microsoft.com/query/dev10.query?appId=Dev10IDEF1&l=EN-US&k=k(System.ComponentModel.CancelEventArgs.Cancel)&rd=true) of `RecordDeleting` event. The certain records can be skipped when deleting more than one record by removing items from [RecordDeletingEventArgs.Items](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.RecordDeletingEventArgs~Items.html).
{% tabs %}
{% highlight c# %}
this.sfDataGrid.RecordDeleting += dataGrid_RecordDeleting;

void dataGrid_RecordDeleting(object sender, RecordDeletingEventArgs args)
{
    foreach (var item in args.Items)
    {
        if ((item as OrderInfo).OrderID == 10001)
        {
            args.Cancel = true;
        }
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.RecordDeleting, AddressOf dataGrid_RecordDeleting

Private Sub dataGrid_RecordDeleting(ByVal sender As Object, ByVal args As RecordDeletingEventArgs)
	For Each item In args.Items
		If (TryCast(item, OrderInfo)).OrderID = 10001 Then
			args.Cancel = True
		End If
	Next item
End Sub
{% endhighlight %}
{% endtabs %}


#### Handling Selection after Deleting the Record

[RecordDeleted](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~RecordDeleted_EV.html) event occurs after the record is deleted. The selection can be changed after remove the records through [SelectedIndex](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Events.RecordDeletedEventArgs~SelectedIndex.html) property of `RecordDeleted` event.
{% tabs %}
{% highlight c# %}
this.sfDataGrid.RecordDeleted += dataGrid_RecordDeleted;

void dataGrid_RecordDeleted(object sender, RecordDeletedEventArgs args)
{
    args.SelectedIndex = -1;
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.RecordDeleted, AddressOf dataGrid_RecordDeleted

Private Sub dataGrid_RecordDeleted(ByVal sender As Object, ByVal args As RecordDeletedEventArgs)
	args.SelectedIndex = -1
End Sub
{% endhighlight %}
{% endtabs %}

### Deleting a row programmatically

Programmatically, a row can be deleted from the SfDataGrid. The following code shows how to delete particular row based on the values.

{% tabs %}
{% highlight c# %}
var orderInfo = orderInfoCollection.OrdersListDetails.FirstOrDefault(order => order.OrderID == 10000);
orderInfoCollection.OrdersListDetails.Remove(orderInfo);
{% endhighlight %}
{% highlight vb %}
Dim orderInfo = orderInfoCollection.OrdersListDetails.FirstOrDefault(Function(order) order.OrderID = 10000)
orderInfoCollection.OrdersListDetails.Remove(orderInfo)
{% endhighlight %}
{% endtabs %}

The following code shows how to delete a row using the index of the row.

{% tabs %}
{% highlight c# %}
orderInfoCollection.OrdersListDetails.RemoveAt(1);
{% endhighlight %}
{% highlight vb %}
orderInfoCollection.OrdersListDetails.RemoveAt(1)
{% endhighlight %}
{% endtabs %}