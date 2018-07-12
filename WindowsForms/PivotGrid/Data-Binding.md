---
layout: post
title: Data Binding | Windows Forms | Syncfusion
description: Data binding
platform: windowsforms
control: PivotGrid
documentation: ug
---

# Data Binding

Pivot grid control is designed to display the bounded data in a tabular format. The data binding can be achieved by assigning data sources through [ItemSource](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControl~ItemSource.html) property.

## Binding data from IEnumberable list

Pivot grid allows to bind a list based collection as its data source. Refer to the below code sample to bind the list collection to the pivot grid control.

{% tabs %}

{% highlight c# %}

using System;
using System.Collections.Generic;
using System.Windows.Forms;
using Syncfusion.PivotAnalysis.Base;
using Syncfusion.Windows.Forms;

namespace PivotGridDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            pivotGridControl1.GridVisualStyles = GridVisualStyles.Metro;

            // Adding ItemSource to the control
            pivotGridControl1.ItemSource = ProductSalesData.GetSalesData();
            pivotGridControl1.PivotRows.Add(new PivotItem { FieldMappingName = "Product", TotalHeader = "Total" });
            pivotGridControl1.PivotRows.Add(new PivotItem { FieldMappingName = "Date", TotalHeader = "Total" });
            pivotGridControl1.PivotColumns.Add(new PivotItem { FieldMappingName = "Country", TotalHeader = "Total" });
            pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Amount", Format = "C", SummaryType = SummaryType.DoubleTotalSum });
            pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Quantity", Format = "#,##0" });
        }
    }

    public class ProductSalesData
    {
        public static ProductSalesCollection GetSalesData()
        {
            // Geography
            string[] countries = { "Australia", "Canada", "France", "Germany", "United Kingdom", "United States" };
            string[] ausStates = { "New South Wales", "Queensland", "South Australia" };
            string[] canadaStates = { "Alberta", "British Columbia", "Brunswick", "Manitoba", "Ontario", "Quebec" };
            string[] franceStates = { "Charente Maritime", "Essonne", "Garonne (Haute)", "Gers" };
            string[] germanyStates = { "Bayern", "Brandenburg", "Hamburg", "Hessen", "Nordrhein Westfalen", "Saarland" };
            string[] ukStates = { "England" };
            string[] ussStates = { "New York", "North Carolina", "Alabama", "California", "Colorado", "New Mexico", "South Carolina" };

            // Time
            string[] dates = { "FY 2005", "FY 2006", "FY 2007", "FY 2008", "FY 2009" };

            // Products
            string[] products = { "Bike", "Car" };
            Random r = new Random(123345345);

            ProductSalesCollection listOfProductSales = new ProductSalesCollection();
            for (int i = 0; i < 2000; i++)
            {
                ProductSales sales = new ProductSales();
                sales.Country = countries[r.Next(1, countries.GetLength(0))];
                sales.Quantity = r.Next(1, 12);
                // 1 percent discount for 1 quantity
                double discount = (30 * sales.Quantity) * (double.Parse(sales.Quantity.ToString()) / 100);
                sales.Amount = (50 * sales.Quantity) - discount;
                sales.TotalPrice = sales.Amount * sales.Quantity;
                sales.UnitPrice = sales.Amount / sales.Quantity;
                sales.Date = dates[r.Next(r.Next(dates.GetLength(0) + 1))];
                sales.Product = products[r.Next(r.Next(products.GetLength(0) + 1))];
                switch (sales.Country)
                {
                    case "Australia":
                    {
                        sales.State = ausStates[r.Next(ausStates.GetLength(0))];
                        break;
                    }
                    case "Canada":
                    {
                        sales.State = canadaStates[r.Next(canadaStates.GetLength(0))];
                        break;
                    }
                    case "France":
                    {
                        sales.State = franceStates[r.Next(franceStates.GetLength(0))];
                        break;
                    }
                    case "Germany":
                    {
                        sales.State = germanyStates[r.Next(germanyStates.GetLength(0))];
                        break;
                    }
                    case "United Kingdom":
                    {
                        sales.State = ukStates[r.Next(ukStates.GetLength(0))];
                        break;
                    }
                    case "United States":
                    {
                        sales.State = ussStates[r.Next(ussStates.GetLength(0))];
                        break;
                    }
                }
                listOfProductSales.Add(sales);
            }

            return listOfProductSales;
        }
    }

    public class ProductSales
    {
        public string Product { get; set; }
        public string Date { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public int Quantity { get; set; }
        public double Amount { get; set; }
        public double UnitPrice { get; set; }
        public double TotalPrice { get; set; }
    }

    public class ProductSalesCollection : List<ProductSales>
    {
    }
}

{% endhighlight %}

{% highlight vb %}

Imports System
Imports System.Collections.Generic
Imports System.Windows.Forms
Imports Syncfusion.PivotAnalysis.Base
Imports Syncfusion.Windows.Forms

Namespace PivotGridDemo
    Partial Public Class Form1
        Inherits Form
        Public Sub New()
            InitializeComponent()
            pivotGridControl1.GridVisualStyles = GridVisualStyles.Metro

            ' Adding ItemSource to the control
            pivotGridControl1.ItemSource = ProductSalesData.GetSalesData()
            pivotGridControl1.PivotRows.Add(New PivotItem With {.FieldMappingName = "Product", .TotalHeader = "Total"})
            pivotGridControl1.PivotRows.Add(New PivotItem With {.FieldMappingName = "Date", .TotalHeader = "Total"})
            pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldMappingName = "Country", .TotalHeader = "Total"})
            pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Amount", .Format = "C", .SummaryType = SummaryType.DoubleTotalSum})
            pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Quantity", .Format = "#,##0"})
        End Sub
    End Class

    Public Class ProductSalesData
        Public Shared Function GetSalesData() As ProductSalesCollection
            ' Geography
            Dim countries() As String = { "Australia", "Canada", "France", "Germany", "United Kingdom", "United States" }
            Dim ausStates() As String = { "New South Wales", "Queensland", "South Australia" }
            Dim canadaStates() As String = { "Alberta", "British Columbia", "Brunswick", "Manitoba", "Ontario", "Quebec" }
            Dim franceStates() As String = { "Charente Maritime", "Essonne", "Garonne (Haute)", "Gers" }
            Dim germanyStates() As String = { "Bayern", "Brandenburg", "Hamburg", "Hessen", "Nordrhein Westfalen", "Saarland" }
            Dim ukStates() As String = { "England" }
            Dim ussStates() As String = { "New York", "North Carolina", "Alabama", "California", "Colorado", "New Mexico", "South Carolina" }

            ' Time
            Dim dates() As String = { "FY 2005", "FY 2006", "FY 2007", "FY 2008", "FY 2009" }

            ' Products
            Dim products() As String = { "Bike", "Car" }
            Dim r As New Random(123345345)

            Dim listOfProductSales As New ProductSalesCollection()
            For i As Integer = 0 To 1999
                Dim sales As New ProductSales()
                sales.Country = countries(r.Next(1, countries.GetLength(0)))
                sales.Quantity = r.Next(1, 12)
                ' 1 percent discount for 1 quantity
                Dim discount As Double = (30 * sales.Quantity) * (Double.Parse(sales.Quantity.ToString()) / 100)
                sales.Amount = (50 * sales.Quantity) - discount
                sales.TotalPrice = sales.Amount * sales.Quantity
                sales.UnitPrice = sales.Amount / sales.Quantity
                sales.Date = dates(r.Next(r.Next(dates.GetLength(0) + 1)))
                sales.Product = products(r.Next(r.Next(products.GetLength(0) + 1)))
                Select Case sales.Country
                    Case "Australia"
                        sales.State = ausStates(r.Next(ausStates.GetLength(0)))
                        Exit Select
                    Case "Canada"
                        sales.State = canadaStates(r.Next(canadaStates.GetLength(0)))
                        Exit Select
                    Case "France"
                        sales.State = franceStates(r.Next(franceStates.GetLength(0)))
                        Exit Select
                    Case "Germany"
                        sales.State = germanyStates(r.Next(germanyStates.GetLength(0)))
                        Exit Select
                    Case "United Kingdom"
                        sales.State = ukStates(r.Next(ukStates.GetLength(0)))
                        Exit Select
                    Case "United States"
                        sales.State = ussStates(r.Next(ussStates.GetLength(0)))
                        Exit Select
                End Select
                listOfProductSales.Add(sales)
            Next i

            Return listOfProductSales
        End Function
    End Class

    Public Class ProductSales
        Public Property Product() As String
        Public Property [Date]() As String
        Public Property Country() As String
        Public Property State() As String
        Public Property Quantity() As Integer
        Public Property Amount() As Double
        Public Property UnitPrice() As Double
        Public Property TotalPrice() As Double
    End Class

    Public Class ProductSalesCollection
        Inherits List(Of ProductSales)
    End Class
End Namespace

{% endhighlight %}

{% endtabs %}

![Data-Binding_img1](Data-Binding_images/Data-Binding_img1.png)

## Binding data from data table

Pivot grid allows to bind a data set from the data table as its data source. Refer to the below code sample to bind the data table to the pivot grid control.

{% tabs %}

{% highlight c# %}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;
using Syncfusion.PivotAnalysis.Base;
using Syncfusion.Windows.Forms;

namespace PivotGridDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            pivotGridControl1.GridVisualStyles = GridVisualStyles.Metro;

            // Adding ItemSource to the Control
            pivotGridControl1.ItemSource = BusinessObjectsDataView.GetDataTable();
            pivotGridControl1.PivotRows.Add(new PivotItem { FieldMappingName = "Fruit", TotalHeader = "Total" });
            pivotGridControl1.PivotColumns.Add(new PivotItem { FieldMappingName = "Color", TotalHeader = "Total" });
            pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Count", Format = "#, ##0", SummaryType = SummaryType.DoubleTotalSum });
            pivotGridControl1.PivotCalculations.Add(new PivotComputationInfo { FieldName = "Weight", Format = "#,##0 KG", SummaryType = SummaryType.DecimalTotalSum });
        }
    }

    public class BusinessObjectsDataView : DataView
    {
        public static DataView GetDataTable()
        {
            DataTable dt = new DataTable("BusinessObjectsDataTable");
            PropertyDescriptorCollection propertyDescriptorCollection = TypeDescriptor.GetProperties(typeof(BusinessObject));
            foreach (PropertyDescriptor propertyDescriptor in propertyDescriptorCollection)
            {
                dt.Columns.Add(new DataColumn(propertyDescriptor.Name, propertyDescriptor.PropertyType));
            }
            BusinessObjectCollection businessObjectCollection = BusinessObjectCollection.GetList();
            foreach (BusinessObject businessObject in businessObjectCollection)
            {
                DataRow dr = dt.NewRow();
                foreach (PropertyDescriptor propertyDescriptor in propertyDescriptorCollection)
                {
                    dr[propertyDescriptor.Name] = propertyDescriptor.GetValue(businessObject);
                }
                dt.Rows.Add(dr);
            }
            return dt.DefaultView;
        }
    }

    public class BusinessObjectCollection : List<BusinessObject>
    {
        public static BusinessObjectCollection GetList()
        {
            BusinessObjectCollection list = new BusinessObjectCollection();

            List<string> Fruits = new List<string>(new string[] { "Cherry", "Mango", "Orange", "Grape", "Plum", "Fig", "Apple", "Gooseberry", "Strawberry" });
            List<string> Colors = new List<string>(new string[] { "Red", "Green", "Yellow", "Orange", "Almond", "White", "Beige" });

            int count = 2000;

            Random r = new Random(123345345);
            for (int i = 0; i < count; ++i)
            {
                BusinessObject bo = new BusinessObject()
                {
                    Fruit = Fruits[r.Next(Fruits.Count)],
                    Color = Colors[r.Next(Colors.Count)],
                    Weight = (int)(r.NextDouble() * 1000) / 10d,
                    Count = r.Next(4) + 1,
                };
                list.Add(bo);
            }
            return list;
        }
    }

    public class BusinessObject
    {
        public string Fruit { get; set; }
        public string Color { get; set; }
        public double Weight { get; set; }
        public int Count { get; set; }
    }
}

{% endhighlight %}

{% highlight vb %}

Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Data
Imports System.Windows.Forms
Imports Syncfusion.PivotAnalysis.Base
Imports Syncfusion.Windows.Forms

Namespace PivotGridDemo
    Partial Public Class Form1
        Inherits Form
        Public Sub New()
            InitializeComponent()
            pivotGridControl1.GridVisualStyles = GridVisualStyles.Metro

            ' Adding ItemSource to the Control
            pivotGridControl1.ItemSource = BusinessObjectsDataView.GetDataTable()
            pivotGridControl1.PivotRows.Add(New PivotItem With {.FieldMappingName = "Fruit", .TotalHeader = "Total"})
            pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldMappingName = "Color", .TotalHeader = "Total"})
            pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Count", .Format = "#, ##0", .SummaryType = SummaryType.DoubleTotalSum})
            pivotGridControl1.PivotCalculations.Add(New PivotComputationInfo With {.FieldName = "Weight", .Format = "#,##0 KG", .SummaryType = SummaryType.DecimalTotalSum})
        End Sub
    End Class

    Public Class BusinessObjectsDataView
        Inherits DataView
        Public Shared Function GetDataTable() As DataView
            Dim dt As New DataTable("BusinessObjectsDataTable")
            Dim propertyDescriptorCollection As PropertyDescriptorCollection = TypeDescriptor.GetProperties(GetType(BusinessObject))
            For Each propertyDescriptor As PropertyDescriptor In propertyDescriptorCollection
                dt.Columns.Add(New DataColumn(propertyDescriptor.Name, propertyDescriptor.PropertyType))
            Next propertyDescriptor
            Dim businessObjectCollection As BusinessObjectCollection = BusinessObjectCollection.GetList()
            For Each businessObject As BusinessObject In businessObjectCollection
                Dim dr As DataRow = dt.NewRow()
                For Each propertyDescriptor As PropertyDescriptor In propertyDescriptorCollection
                    dr(propertyDescriptor.Name) = propertyDescriptor.GetValue(businessObject)
                Next propertyDescriptor
                dt.Rows.Add(dr)
            Next businessObject
            Return dt.DefaultView
        End Function
    End Class

    Public Class BusinessObjectCollection
        Inherits List(Of BusinessObject)
        Public Shared Function GetList() As BusinessObjectCollection
            Dim list As New BusinessObjectCollection()

            Dim Fruits As New List(Of String)(New String() { "Cherry", "Mango", "Orange", "Grape", "Plum", "Fig", "Apple", "Gooseberry", "Strawberry" })
            Dim Colors As New List(Of String)(New String() { "Red", "Green", "Yellow", "Orange", "Almond", "White", "Beige" })

            Dim count As Integer = 2000

            Dim r As New Random(123345345)
            For i As Integer = 0 To count - 1
                Dim bo As New BusinessObject() With {.Fruit = Fruits(r.Next(Fruits.Count)), .Color = Colors(r.Next(Colors.Count)), .Weight = CInt(Fix(r.NextDouble() * 1000)) / 10R, .Count = r.Next(4) + 1}
                list.Add(bo)
            Next i
            Return list
        End Function
    End Class

    Public Class BusinessObject
        Public Property Fruit() As String
        Public Property Color() As String
        Public Property Weight() As Double
        Public Property Count() As Integer
    End Class
End Namespace

{% endhighlight %}

{% endtabs %}

![Data-Binding_img2](Data-Binding_images/Data-Binding_img2.png)

## Refreshing pivot grid

Using the [Refresh](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~Refresh(Boolean).html) method of [TableControl]() property in pivot grid, the pivot grid control can be refreshed with or without repopulating the pivot engine.

Refer to the below code sample for refreshing the pivot grid without repopulating the pivot engine.

{% tabs %}

{% highlight c# %}

this.pivotGridControl1.TableControl.Refresh(false);

{% endhighlight %}

{% highlight vb %}

Me.pivotGridControl1.TableControl.Refresh(False)

{% endhighlight %}

{% endtabs %}

## Events

* **ItemSourceChanged** event occurs when the data source is changed by using the **ItemSource** property of pivot grid. This event receives two arguments namely sender, that handles the pivot grid and [ItemSourceChangedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.ItemSourceChangedEventArgs.html), that contains the event arguments. The ItemSourceChangedEventArgs object contains the following properties:

    - [OldValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.ItemSourceChangedEventArgs~OldValue.html) - gets the value of old data source.
    - [NewValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.ItemSourceChangedEventArgs~NewValue.html) - gets the value of new data source.

* **DataRefreshing** event occurs while starting to refresh the values of pivot grid control. This event receives two arguments namely sender, that handles the pivot grid and [DataRefreshingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.DataRefreshingEventArgs.html), that contains the event arguments.

* **DataRefreshed** event occurs when the refreshing gets completed by populating its values. This event receives two arguments namely sender, that handles the pivot grid and [DataRefreshedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.DataRefreshedEventArgs.html), that contains the event arguments.