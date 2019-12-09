---
layout: post
title: How-to-derive-user-defined-groups | Windows Forms | Syncfusion
description: how to derive user defined groups
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Derive User Defined Groups

This can be done using the code below.

{% tabs %}
{% highlight c# %}

//Group "Col2" using a custom categorizer and Comparer.
Syncfusion.Grouping.SortColumnDescriptor sortColumnDescriptor = new Syncfusion.Grouping.SortColumnDescriptor("Col2");
sortColumnDescriptor.Categorizer = new CustomCategorizer();
sortColumnDescriptor.Comparer = new CustomComparer();
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(sortColumnDescriptor);

//Custom comparer function.
public int Compare(object x, object y)
{
    if(x == null)
    return -1;
    else if(y == null)
    return 100;
    else 
    {
        int i = int.Parse(x.ToString());
        int j = int.Parse(y.ToString());
        return i - j;
    }
}

//Custom categorizer function.
public static int GetCategory(int i)
{
    int value = 0;
    if(i < 10)
    value = 1;
    else if(i >= 10 && i < 20)
    value = 2;
    else if(i >= 20 && i < 30)
    value = 3;
    else if(i >= 30 && i < 40)
    value = 4;
    else  
    value = 5;
    return value;
}
{% endhighlight  %}

{% highlight vb %}

'Group "Col2" using a custom categorizer and Comparer.
Dim sortColumnDescriptor As Syncfusion.Grouping.SortColumnDescriptor = New 
Syncfusion.Grouping.SortColumnDescriptor("Col2")
sortColumnDescriptor.Categorizer = New CustomCategorizer()
sortColumnDescriptor.Comparer = New CustomComparer()
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(sortColumnDescriptor)

'Custom Comparer function.
Public Function Compare(ByVal x As Object, ByVal y As Object) As 
Integer Implements IComparer.Compare
If x Is Nothing Then
Return -1
ElseIf y Is Nothing Then
Return 100
Else
Dim i As Integer = Integer.Parse(x.ToString())
Dim j As Integer = Integer.Parse(y.ToString())
Return i - j
End If
End Function

'Custom Categorizer function.
Public Shared Function GetCategory(ByVal i As Integer) As Integer
Dim value As Integer = 0
If i < 10 Then
    value = 1
ElseIf i >= 10 AndAlso i < 20 Then
    value = 2
ElseIf i >= 20 AndAlso i < 30 Then
    value = 3
ElseIf i >= 30 AndAlso i < 40 Then
    value = 4
Else
    value = 5
End If
Return value
End Function

{% endhighlight  %}
{% endtabs %}
