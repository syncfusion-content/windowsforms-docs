---
layout: post
title: Pivot Rows | Windows Forms | Syncfusion
description: pivot rows
platform: windowsforms
control: PivotGrid
documentation: ug
---

# Pivot Rows

Pivot rows are defined by using the [PivotItem](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem.html) object which holds the information needed for rows that appear in the pivot grid control.

## Defining pivot rows using pivot items

To define a pivot row item, the following properties of `PivotItem` object are used.

<table>
<tr>
<th>
Property Name</th><th>
Description</th><th>
Type</th></tr>
<tr>
<td>
{{'[Comparer](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~Comparer.html)'| markdownify }}</td><td>
Gets or sets the IComparer object used for sorting. If this value is null, then sorting will be performed under the assumption that this field is IComparable.</td><td>
IComparer</td></tr>
<tr>
<td>
{{'[FieldHeader](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~FieldHeader.html)'| markdownify }}</td><td>
Gets or sets the title you want to see in the header for this pivot item.</td><td>
string</td></tr>
<tr>
<td>
{{'[FieldMappingName](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~FieldMappingName.html)'| markdownify }}</td><td>
Gets or sets the property's mapping name.</td><td>
string</td></tr>
<tr>
<td>
{{'[Format](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~Format.html)'| markdownify }}</td><td>
Gets or sets the format item for the specified field.</td><td>
string</td></tr>
<tr>
<td>
{{'[TotalHeader](http://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~TotalHeader.html)'| markdownify }}</td><td>
Gets or sets the string you want to append to the pivot item's summary cells.</td><td>
string</td></tr>
</table>

Refer to the below code sample for adding pivot row item in the pivot grid control.

{% tabs %}

{% highlight c# %}

// Defining pivot item
PivotItem pivotItem = new PivotItem() { FieldHeader = "Product", FieldMappingName = "Product", TotalHeader = "Total" };

// Adding pivot row item to pivot grid
this.pivotGridControl1.PivotRows.Add(pivotItem);

{% endhighlight %}

{% highlight vb %}

' Defining pivot item
Dim pivotItem As New PivotItem() With {.FieldHeader = "Product", .FieldMappingName = "Product", .TotalHeader = "Total"}

' Adding pivot row item to pivot grid
Me.pivotGridControl1.PivotRows.Add(pivotItem)

{% endhighlight %}

{% endtabs %}

## Synchronizing pivot rows

To synchronize the newly added or modified pivot row items with the pivot grid control, the [SynchronizePivotItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.PivotAnalysis.Windows~Syncfusion.Windows.Forms.PivotAnalysis.PivotGridControlBase~SynchronizePivotItems.html) method will be used. This method will be invoked whenever the collection of pivot row item gets changed.

### Sorting pivot rows

By default, the pivot grid control sorts the row data in ascending order. The sorting order can be changed by defining custom comparer and it needs to be assigned using the [Comparer](https://help.syncfusion.com/cr/cref_files/windowsforms/pivot%20analysis/Syncfusion.PivotAnalysis.Base~Syncfusion.PivotAnalysis.Base.PivotItem~Comparer.html) property of corresponding pivot item.

Refer to the below code sample to define comparer for sorting the row data in descending order.

{% tabs %}

{% highlight c# %}

public partial class Form1 : Form
{
    public Form1()
    {
        ......
        this.pivotGridControl1.PivotRows.Add(new PivotItem { FieldMappingName = "Product", Comparer = new ReverseOrderComparer() });
        ......
    }
}

// Reverse order comparer for sorting the data in descending order
public class ReverseOrderComparer : IComparer
{
   #region IComparer Members

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

   #endregion
}

{% endhighlight %}

{% highlight vb %}

Partial Public Class Form1
    Inherits Form
    Public Sub New()
        .....
        Me.pivotGridControl1.PivotRows.Add(New PivotItem With {.FieldMappingName = "Product", .Comparer = New ReverseOrderComparer()})
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

'   #End Region

{% endhighlight %}

{% endtabs %}