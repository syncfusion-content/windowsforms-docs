---
layout: post
title: Pivot Columns | PivotGrid | Windows Forms | Syncfusion
description: Pivot columns
platform: windowsforms
control: PivotGrid
documentation: ug
---

# Pivot Columns

Pivot columns are defined by using the [PivotItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem.html) object which holds the information needed for columns that appear in the pivot grid control.

## Defining pivot columns using pivot items

To define a pivot column item, the following properties of `PivotItem` object are used.

* [Comparer](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~Comparer.html) - Specifies the IComparer object for sorting the column values. If its value is null, then sorting will be performed under the assumption that the specified field is IComparable.
* [FieldHeader](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~FieldHeader.html) - Specifies the title that you want to view in the column header.
* [FieldMappingName](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~FieldMappingName.html) - Specifies the mapping name i.e., property name of the column field.
* [Format](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~Format.html) - Specifies the format for the column field.
* [TotalHeader](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~TotalHeader.html) - Specifies the string to append to the column summary cells.

Refer to the below code sample for adding pivot column item in the pivot grid control.

{% tabs %}

{% highlight c# %}

// Defining pivot column item
PivotItem pivotItem = new PivotItem() { FieldHeader = "Country", FieldMappingName = "Country", TotalHeader = "Total" };

// Adding pivot column item to pivot grid
this.pivotGridControl1.PivotColumns.Add(pivotItem);

{% endhighlight %}

{% highlight vb %}

' Defining pivot column item
Dim pivotItem As New PivotItem() With {.FieldHeader = "Country", .FieldMappingName = "Country", .TotalHeader = "Total"}

' Adding pivot column item to pivot grid
Me.pivotGridControl1.PivotColumns.Add(pivotItem)

{% endhighlight %}

{% endtabs %}

## Synchronizing pivot columns

To synchronize the newly added or modified pivot column items with the pivot grid control, the [SynchronizePivotItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~SynchronizePivotItems.html) method will be used. This method will be invoked whenever the collection of pivot column items gets changed.

## Sorting pivot columns

By default, the pivot grid control sorts the column data in ascending order. The sorting order can be changed by defining custom comparer and it needs to be assigned using the [Comparer](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~Comparer.html) property of corresponding pivot item.

Refer to the below code sample to define comparer for sorting the column data in descending order.

{% tabs %}

{% highlight c# %}

public partial class Form1 : Form
{
    public Form1()
    {
        ......
        this.pivotGridControl1.PivotColumns.Add(new PivotItem { FieldMappingName = "Country", Comparer = new ReverseOrderComparer() });
        ......
    }
}

// Reverse order comparer for sorting the data in descending order
public class ReverseOrderComparer : IComparer
{
   public int Compare(object x, object y)
   {
      if (x == null && y == null)
         return 0;
      else if (y == null)
         return 1;
      else if (x == null)
         return -1;
      else
         return -x.ToString().CompareTo(y.ToString());
   }
}

{% endhighlight %}

{% highlight vb %}

Partial Public Class Form1
    Inherits Form
    Public Sub New()
        .....
        Me.pivotGridControl1.PivotColumns.Add(New PivotItem With {.FieldMappingName = "Country", .Comparer = New ReverseOrderComparer()})
        .....
    End Sub
End Class

' Reverse order comparer for sorting the data in descending order
Public Class ReverseOrderComparer
    Inherits IComparer

    Public Function Compare(ByVal x As Object, ByVal y As Object) As Integer
        If x Is Nothing AndAlso y Is Nothing Then
            Return 0
        ElseIf y Is Nothing Then
            Return 1
        ElseIf x Is Nothing Then
            Return -1
        Else
            Return -x.ToString().CompareTo(y.ToString())
        End If
    End Function
End Class

{% endhighlight %}

{% endtabs %}