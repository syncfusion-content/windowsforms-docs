---
layout: post
title: DataValidation
description: This section explains about the data validation support in SfDataGrid.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Data Validation
SfDataGrid allows to validate the data and display hints in case of validation is not passed. In case of invalid data, error icon is displayed at the left corner of cell. When mouse hover the error icon, error information will be displayed in tooltip.

## Built-in Validations
Built-in validations through[IDataErrorInfo](https://msdn.microsoft.com/en-us/library/system.componentmodel.idataerrorinfo.aspx), [INotifyDataErrorInfo](https://msdn.microsoft.com/en-us/library/system.componentmodel.inotifydataerrorinfo.aspx) and Data annotation attributes, can be enabled by setting [SfDataGrid.GridValidationMode](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ValidationMode.html) or [GridColumn.GridValidationMod](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.GridColumnBase~ValidationMode.html)e properties.
`GridColumn.GridValidationMode` takes priority than `SfDataGrid.GridValidationMode`.

* `GridValidation.InEdit` - display error icon & tips and also doesn’t allows the users to commit the invalid data without allowing users to edit other cells.
* `GridValidation.InView` - displays error icons and tips alone.
* `GridValidation.None` - disables built-in validation support.

### Using IDataErrorInfo

#### Cell Validation
SfDataGrid provides support to validate the data based on [IDataErrorInfo](https://msdn.microsoft.com/en-us/library/system.componentmodel.idataerrorinfo.aspx). This can be enabled by setting the [SfDataGrid.ValidationMode](https://help.syncfusion.com/cr/cref_files/wpf/sfdatagrid/Syncfusion.SfGrid.WPF~Syncfusion.UI.Xaml.Grid.SfGridBase~GridValidationMode.html) or [GridColumn.ValidationMode](https://help.syncfusion.com/cr/cref_files/wpf/sfdatagrid/Syncfusion.SfGrid.WPF~Syncfusion.UI.Xaml.Grid.GridColumnBase~GridValidationMode.html) property to `InEdit` or `InView`.

{% tabs %}
{% highlight c# %}
public partial class OrderInfo : IDataErrorInfo
{
    /// <summary>
    /// Initializes a new instance of the <see cref="OrderInfo"/> class.
    /// </summary>
    public OrderInfo()
    { }

    /// <summary>
    /// Gets or sets quantity
    /// </summary>
    /// <value>the quantity</value>     
    public int Quantity {get; set;}

    public string Error
    {
        get { return string.Empty; }
    }

    public string this[string columnName]
    {
        get
        {
            if (columnName == "Quantity" && this.Quantity < 30)
                return "The quantity is less than minimum";

            return string.Empty;
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class OrderInfo
	Implements IDataErrorInfo
	''' <summary>
	''' Initializes a new instance of the <see cref="OrderInfo"/> class.
	''' </summary>
	Public Sub New()
	End Sub

	''' <summary>
	''' Gets or sets quantity
	''' </summary>
	''' <value>the quantity</value>     
	Public Property Quantity() As Integer

	Public ReadOnly Property [Error]() As String
		Get
			Return String.Empty
		End Get
	End Property

	Default Public ReadOnly Property Item(ByVal columnName As String) As String
		Get
			If columnName = "Quantity" AndAlso Me.Quantity < 30 Then
				Return "The quantity is less than minimum"
			End If

			Return String.Empty
		End Get
	End Property
End Class
{% endhighlight %}
{% endtabs %}

Enable the validation for the SfDataGrid,

{% tabs %}
{% highlight c# %}
// Set the validation mode for the grid.
this.sfDataGrid.ValidationMode = GridValidationMode.InEdit;

//Or

// Set the validation mode only for the particular column.
this.sfDataGrid.Columns["Quantity"].ValidationMode = GridValidationMode.InEdit;
{% endhighlight %}]
{% highlight vb %}
' Set the validation mode for the grid.
Me.sfDataGrid.ValidationMode = GridValidationMode.InEdit

'Or

' Set the validation mode only for the particular column.
Me.sfDataGrid.Columns("Quantity").ValidationMode = GridValidationMode.InEdit
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img1.png)

#### Row Validation
The error icon can be displayed in the row header by using the [IDataErrorInfo.Error](https://msdn.microsoft.com/en-us/library/system.componentmodel.idataerrorinfo.error.aspx) property. The `IDataErrorInfo.Error` text will be displayed in the error tool tip of the row header,

{% tabs %}
{% highlight c# %}
public partial class OrderInfo : IDataErrorInfo
{
    /// <summary>
    /// Initializes a new instance of the <see cref="OrderInfo"/> class.
    /// </summary>
    public OrderInfo()
    { }

          [Display(AutoGenerateField = false)]
          public string Error
          {
                  get
                  { 
                           if (this.Country.Contains("Germany") || this.Country.Contains("UK"))
                                    return "Delivery not available for the country " + this.Country;
                           return string.Empty;
                   }
           }

    public string this[string columnName]
    {
        get
        {
            return string.Empty;
        }
    }
}
{% endhighlight %}
{% highlight vb %}
Partial Public Class OrderInfo
	Implements IDataErrorInfo
	''' <summary>
	''' Initializes a new instance of the <see cref="OrderInfo"/> class.
	''' </summary>
	Public Sub New()
	End Sub

		  <Display(AutoGenerateField := False)>
		  Public ReadOnly Property [Error]() As String
				  Get
						   If Me.Country.Contains("Germany") OrElse Me.Country.Contains("UK") Then
									Return "Delivery not available for the country " & Me.Country
						   End If
						   Return String.Empty
				  End Get
		  End Property

	Default Public ReadOnly Property Item(ByVal columnName As String) As String
		Get
			Return String.Empty
		End Get
	End Property
End Class
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img2.png)

### Using INotifyDataErrorInfo

#### Cell Validation
The data can be validated by inheriting the [INotifyDataErrorInfo](https://msdn.microsoft.com/en-us/library/system.componentmodel.inotifydataerrorinfo.aspx# "") interface in model class.

{% tabs %}
{% highlight c# %}
public class OrderInfo : INotifyDataErrorInfo
{
    private List<string> errors = new List<string>();    

    private string shipCountry;

    [Display(Name = "Ship Address")]
    public string ShipCountry
    {
        get { return shipCountry; }
        set { shipCountry = value; }
    }

    public System.Collections.IEnumerable GetErrors(string propertyName)
    {
        if (!propertyName.Equals("ShipCountry "))
            return null;

        if (this.ShipCity.Contains("Mexico"))
            errors.Add("Delivery not available for the city " + ShipCountry);

        return errors;
    }

    [Display(AutoGenerateField = false)]
    public bool HasErrors
    {
        get
        {
            return false;
        }
    }

    public event EventHandler<DataErrorsChangedEventArgs> ErrorsChanged;
}
{% endhighlight %}
{% highlight vb %}
Public Class OrderInfo
	Implements INotifyDataErrorInfo
	Private errors As New List(Of String)()

	Private _shipCountry As String

	<Display(Name := "Ship Address")>
	Public Property ShipCountry() As String
		Get
			Return _shipCountry
		End Get
		Set(ByVal value As String)
			_shipCountry = value
		End Set
	End Property

	Public Function GetErrors(ByVal propertyName As String) As System.Collections.IEnumerable
		If Not propertyName.Equals("ShipCountry ") Then
			Return Nothing
		End If

		If Me.ShipCity.Contains("Mexico") Then
			errors.Add("Delivery not available for the city " & ShipCountry)
		End If

		Return errors
	End Function

	<Display(AutoGenerateField := False)>
	Public ReadOnly Property HasErrors() As Boolean
		Get
			Return False
		End Get
	End Property

	Public Event ErrorsChanged As EventHandler(Of DataErrorsChangedEventArgs)
End Class
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img3.png)

#### Row Validation
The error message can be shown in a row header by setting [INotifyDataErrorInfo.HasErrors](https://msdn.microsoft.com/en-us/library/system.componentmodel.inotifydataerrorinfo.haserrors.aspx). By default error message “Row Containing Error” will be displayed as an error message. This can be modified by changing the `RowErrorMessage` in the resx file.

{% tabs %}
{% highlight c# %}
public class OrderInfo : INotifyDataErrorInfo
{
    private List<string> errors = new List<string>();    
    private string shipCountry;
    [Display(Name = "Ship Address")]
    public string ShipCountry
    {
        get { return shipCountry; }
        set { shipCountry = value; }
    }
    public System.Collections.IEnumerable GetErrors(string propertyName)
    {
        return null;
    }
    [Display(AutoGenerateField = false)]
    public bool HasErrors
    {
        get
        {
           if (this.ShipCountry.Contains("Mexico"))
               return true;
            return false;
        }
    }
    public event EventHandler&lt;DataErrorsChangedEventArgs&gt; ErrorsChanged;
}
{% endhighlight %}
{% highlight vb %}
Public Class OrderInfo
	Implements INotifyDataErrorInfo
	Private errors As New List(Of String)()
'INSTANT VB NOTE: The variable shipCountry was renamed since Visual Basic does not allow class members with the same name:
	Private shipCountry_Renamed As String
	<Display(Name := "Ship Address")>
	Public Property ShipCountry() As String
		Get
			Return shipCountry_Renamed
		End Get
		Set(ByVal value As String)
			shipCountry_Renamed = value
		End Set
	End Property
	Public Function GetErrors(ByVal propertyName As String) As System.Collections.IEnumerable
		Return Nothing
	End Function
	<Display(AutoGenerateField := False)>
	Public ReadOnly Property HasErrors() As Boolean
		Get
		   If Me.ShipCountry.Contains("Mexico") Then
			   Return True
		   End If
			Return False
		End Get
	End Property
	Public Event EventHandler And lt
	Private DataErrorsChangedEventArgs And gt
	Private ErrorsChanged
End Class
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img4.png)

N> The `INotifyDataErrorInfo` is available from the .NET framework 4.5.

### Using Data Annotation
The SfDataGrid allows to validate the data using data annotation attributes by setting `SfDataGrid.ValidationMode` or `GridColumn.ValidationMode` property to `InEdit` or `InView`.

#### Numeric Validation
The numeric type like int, double, decimal properties can be validated using [Range attributes](https://msdn.microsoft.com/en-us/library/system.componentmodel.dataannotations.rangeattribute.aspx).

{% tabs %}
{% highlight c# %}
private int orderID;
[Range(10001, 10005, ErrorMessage = "OrderID between 10001 and 10005 alone processed")]        
public int OrderID
{
    get { return orderID; }
    set { orderID = value; }
}

private decimal price;
[Range(typeof(decimal),"12","20")]
public decimal Price
{
    get { return price; }
    set { price = value; }
}
{% endhighlight %}
{% highlight vb %}
Private _orderID As Integer
<Range(10001, 10005, ErrorMessage := "OrderID between 10001 and 10005 alone processed")>
Public Property OrderID() As Integer
	Get
		Return _orderID
	End Get
	Set(ByVal value As Integer)
		_orderID = value
	End Set
End Property

'INSTANT VB NOTE: The variable price was renamed since Visual Basic does not allow class members with the same name:
Private price_Renamed As Decimal
<Range(GetType(Decimal),"12","20")>
Public Property Price() As Decimal
	Get
		Return price_Renamed
	End Get
	Set(ByVal value As Decimal)
		price_Renamed = value
	End Set
End Property
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img5.png)

#### String Validation
The string type property can be validated using [Required](https://msdn.microsoft.com/en-us/library/system.componentmodel.dataannotations.requiredattribute.aspx), [String Length attributes](https://msdn.microsoft.com/en-us/library/system.componentmodel.dataannotations.stringlengthattribute.aspx)

{% tabs %}
{% highlight c# %}
private string shippingCity;
[Required]
public string ShipCity
{
    get { return shippingCity; }
    set { shippingCity = value; }
}

private string productName;
[StringLength(17)]
public string ProductName
{
    get { return productName; }
    set { productName = value; }
}
{% endhighlight %}
{% highlight vb %}
Private shippingCity As String
<Required>
Public Property ShipCity() As String
	Get
		Return shippingCity
	End Get
	Set(ByVal value As String)
		shippingCity = value
	End Set
End Property

'INSTANT VB NOTE: The variable productName was renamed since Visual Basic does not allow class members with the same name:
Private _productName As String
<StringLength(17)>
Public Property ProductName() As String
	Get
		Return _productName
	End Get
	Set(ByVal value As String)
		_productName = value
	End Set
End Property
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img6.png)

#### RegularExpression validation
The data that has heterogeneous type (combination of number, special character) can be validated using RegularExpressions.

{% tabs %}
{% highlight c# %}
[RegularExpressionAttribute(@"^[a-zA-Z]{1,40}$", ErrorMessage = "Numbers and special characters not allowed")]
public string CustomerID
{
    get
    {
        return this.customerID;
    }
    set
    {
        this.customerID = value;
    }
}
{% endhighlight %}
{% highlight vb %}
<RegularExpressionAttribute("^[a-zA-Z]{1,40}$", ErrorMessage := "Numbers and special characters not allowed")>
Public Property CustomerID() As String
	Get
		Return Me.customerID
	End Get
	Set(ByVal value As String)
		Me.customerID = value
	End Set
End Property
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img7.png)

## Custom Validations
The current cell and row validations can be customized by using the [CurrentCellValidating](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellValidating_EV.html) and [RowValidating](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~RowValidating_EV.html) events. SfDataGrid will not allow to edit other cell / row if validation failed.

### Cell Validation
The cell validation can be customized by using the `CurrentCellValidating` event. This event will be raised when the edited cells tries to commit the data or lose the focus.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.CurrentCellValidating += sfDataGrid_CurrentCellValidating;
void sfDataGrid_CurrentCellValidating(object sender, CurrentCellValidatingEventArgs e)
{
    if (e.NewValue.ToString().Equals("10004"))
    {
        e.IsValid = false;
        e.ErrorMessage = "OrderID 10004 cannot be passed";
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.CurrentCellValidating, AddressOf sfDataGrid_CurrentCellValidating
Private Sub sfDataGrid_CurrentCellValidating(ByVal sender As Object, ByVal e As CurrentCellValidatingEventArgs)
	If e.NewValue.ToString().Equals("10004") Then
		e.IsValid = False
		e.ErrorMessage = "OrderID 10004 cannot be passed"
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img8.png)

The current cell will not end the editing until the CurrentCell validation is passed. To get pass the cell validation need to enter the valid input to the cell. 
The [SfDataGrid.CurrentCellValidated](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~CurrentCellValidated_EV.html) event triggered when the cell has finished validating with valid data.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.CurrentCellValidated += sfDataGrid_CurrentCellValidated;

void sfDataGrid_CurrentCellValidated(object sender, CurrentCellValidatedEventArgs e)
{
    MessageBox.Show("Cell validation is passed.");
}
{% endhighlight %}
{% highlight vb %}
Private Me.sfDataGrid.CurrentCellValidated += AddressOf sfDataGrid_CurrentCellValidated

Private Sub sfDataGrid_CurrentCellValidated(ByVal sender As Object, ByVal e As CurrentCellValidatedEventArgs)
	MessageBox.Show("Cell validation is passed.")
End Sub
{% endhighlight %}
{% endtabs %}

### Row Validation
The row can be validated by using the [RowValidating](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~RowValidating_EV.html) event when the cell is edited. This event occurs when the edited cells tries to commit the row data or lose the focus.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.RowValidating += sfDataGrid_RowValidating;
void sfDataGrid_RowValidating(object sender, RowValidatingEventArgs e)
{
    var data = e.DataRow.RowData as OrderInfo;

    if (data.CustomerID.Equals("AROUT"))
    {
        e.IsValid = false;
        e.ErrorMessage ="Customer AROUT cannot be passed";
    }
}
{% endhighlight %}
{% highlight vb %}

AddHandler sfDataGrid.RowValidatin, AddressOf sfDataGrid_RowValidating
Private Sub sfDataGrid_RowValidating(ByVal sender As Object, ByVal e As RowValidatingEventArgs)
	Dim data = TryCast(e.DataRow.RowData, OrderInfo)

	If data.CustomerID.Equals("AROUT") Then
		e.IsValid = False
		e.ErrorMessage ="Customer AROUT cannot be passed"
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img9.png)

[SfDataGrid.RowValidated](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~RowValidated_EV.html) event triggered when the row has finished validating with valid row data.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.RowValidated += sfDataGrid1_RowValidated;
void sfDataGrid1_RowValidated(object sender, RowValidatedEventArgs e)
{
    MessageBox.Show("Row validation is completed");
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid1.RowValidated, AddressOf sfDataGrid1_RowValidated
Private Sub sfDataGrid1_RowValidated(ByVal sender As Object, ByVal e As RowValidatedEventArgs)
	MessageBox.Show("Row validation is completed")
End Sub
{% endhighlight %}
{% endtabs %}

## Customizing Error Icon and ToolTip

### Error Icon Customization
The custom error icon can be set by using the [ErrorIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.Styles.DataGridStyle~ErrorIcon.html) property.

{% tabs %}
{% highlight c# %}
//Setting the custom error icon
this.sfDataGrid.Style.ErrorIcon = SystemIcons.Error.ToBitmap();
{% endhighlight %}
{% highlight vb %}
'Setting the custom error icon
Me.sfDataGrid.Style.ErrorIcon = SystemIcons.Error.ToBitmap()
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img10.png)

The error icons displayed in the cell and row header can be disabled by setting the [ShowErrorIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ShowErrorIcon.html) and [ShowRowHeaderErrorIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ShowRowHeaderErrorIcon.html) properties to `false`. 

{% tabs %}
{% highlight c# %}
// Disable the Error Icon in Cell level
this.sfDataGrid.ShowErrorIcon = false;

// Disables the error icon in row header
this.sfDataGrid.ShowRowHeaderErrorIcon = false;
{% endhighlight %}
{% highlight vb %}
' Disable the Error Icon in Cell level
Me.sfDataGrid.ShowErrorIcon = False

' Disables the error icon in row header
Me.sfDataGrid.ShowRowHeaderErrorIcon = False
{% endhighlight %}
{% endtabs %}

### Customizing the Error Tip 
The tool tip of the data validation can be customized by using the [ValidationErrorToolTipOpening](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ValidationErrorToolTipOpening_EV.html) event. This event will be raised when the mouse is hovered on the error icon.

{% tabs %}
{% highlight c# %}
this.sfDataGrid.ValidationErrorToolTipOpening += sfDataGrid_ValidationErrorToolTipOpening;

void sfDataGrid_ValidationErrorToolTipOpening(object sender, ValidationErrorToolTipOpeningEventArgs e)
{
    if(e.Column != null && e.Column.MappingName == "OrderID")
    {              
        e.ToolTipInfo.Items[0].Style.BackColor = Color.Green;
        e.ToolTipInfo.Items[0].Style.ForeColor = Color.White;                
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler sfDataGrid.ValidationErrorToolTipOpening, AddressOf sfDataGrid_ValidationErrorToolTipOpening

Private Sub sfDataGrid_ValidationErrorToolTipOpening(ByVal sender As Object, ByVal e As ValidationErrorToolTipOpeningEventArgs)
	If e.Column IsNot Nothing AndAlso e.Column.MappingName = "OrderID" Then
		e.ToolTipInfo.Items(0).Style.BackColor = Color.Green
		e.ToolTipInfo.Items(0).Style.ForeColor = Color.White
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![](DataValidation_images/DataValidation_img11.png)

The validation error tool tip can be disabled by setting the [ShowValidationErrorToolTip](https://help.syncfusion.com/cr/cref_files/windowsforms/sfdatagrid/Syncfusion.SfDataGrid.WinForms~Syncfusion.WinForms.DataGrid.SfDataGrid~ShowValidationErrorToolTip.html) property to `false`.

{% tabs %}
{% highlight c# %}
// Disable the validation tool tip.
this.sfDataGrid.ShowValidationErrorToolTip = false;
{% endhighlight %}
{% highlight vb %}
' Disable the validation tool tip.
Me.sfDataGrid.ShowValidationErrorToolTip = False
{% endhighlight %}
{% endtabs %}

## Limitations
* Non editable columns will not support custom validation.
* CurrentCellValidating event will not triggered for the GridUnboundColumn, AddNewRow and FilterRow.
