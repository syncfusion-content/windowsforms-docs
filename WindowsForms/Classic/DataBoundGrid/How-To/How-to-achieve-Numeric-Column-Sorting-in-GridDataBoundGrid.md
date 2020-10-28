---
layout: post
title: How-to-achieve-Numeric-Column-Sorting-in-GridDataBoundGrid | Windows Forms | Syncfusion
description: how to achieve numeric column sorting in griddataboundgrid
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to achieve Numeric Column Sorting in GridDataBoundGrid


To perform a custom sort through DataView, the object in the column should implement IComparer interface. Once this is done, DataView will use IComparer interface implementation to sort the column instead of using default sort of control.

{% tabs %}
{% highlight c# %}

public class StringLenComparer : IComparer
{
    #region IComparer Members
    public int Compare(object x, object y)
    {
        string value1 = x.ToString(); ;
        string value2 = y.ToString(); ;
        return  value1.Length - value2.Length;
    }
    #endregion
}
public class IntComparer : IComparer
{
    #region IComparer Members
    public int Compare(object x, object y)
    {
        if(x == null && y == null)
        return 0;
        else if(x == null)
        return -1;
        else if(y == null)
        return 1;
        else
        return int.Parse(x.ToString()) -  int.Parse(y.ToString());
    }
    #endregion
}

{% endhighlight %}

{% highlight vb %}

Public Class StringLenComparer Implements IComparer
#Region "IComparer Members"
Public Function Compare(ByVal x As Object, ByVal y As Object) As Integer
Dim value1 As String = x.ToString()
Dim value2 As String = y.ToString()
Return value1.Length - value2.Length
End Function
#End Region
End Class
Public Class IntComparer Implements IComparer
#Region "IComparer Members"
Public Function Compare(ByVal x As Object, ByVal y As Object) As Integer
If x Is Nothing AndAlso y Is Nothing Then
Return 0
ElseIf x Is Nothing Then
Return -1
ElseIf y Is Nothing Then
Return 1
Else
Return Integer.Parse(x.ToString()) - Integer.Parse(y.ToString())
End If
End Function
#End Region
End Class

{% endhighlight %}
{% endtabs %}

#### Sample Link

To view a sample on this, see [Numeric Column Sorting](http://www.syncfusion.com/downloads/Support/DirectTrac/72524/GridDataBoundGridCustomSorting1509447642-1313190486.zip).



