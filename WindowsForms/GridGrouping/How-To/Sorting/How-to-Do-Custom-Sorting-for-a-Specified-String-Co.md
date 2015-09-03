---
layout: post
title: How-to-Do-Custom-Sorting-for-a-Specified-String-Co
description: how to do custom sorting for a specified string column
platform: WindowsForms
control: How To
documentation: ug
---

# How to Do Custom Sorting for a Specified String Column

You can customize the sorting and set the rows with an empty string to the last. This can be done by making use of the Compare method of IComparer Class. You can write your custom code for the Compare() method where you can set the empty string rows as last. This can be achieved by finding the length of the string in the compare() method and canceling its sorting thereby pushing the empty strings at the last.

Example

Here is the code for implementing the string length compare method.

{% highlight c# %}



public int Compare(object x, object y)

{

      if(x == null && y == null)

      return 0;



//Does not include empty strings for comparison.

      else if(x == System.DBNull.Value)

      {

          return 0;

      }

      else if(y == System.DBNull.Value)

      {

          return 0;

      }

      else

      {

           return ((IComparable) x.ToString()).CompareTo(y.ToString());

      }

}



SortColumnDescriptor cd = new Syncfusion.Grouping.SortColumnDescriptor();

this.gridGroupingControl1.TableDescriptor.SortedColumns.Add(cd);

cd.SortDirection = System.ComponentModel.ListSortDirection.Descending;

cd.Comparer = new StrLenComparer();

{% endhighlight %}

{% highlight vbnet %}



Public Function Compare(ByVal x As Object, ByVal y As Object) As Integer

    If x Is Nothing AndAlso y Is Nothing Then

       Return 0



'Does not include empty strings for comparison.

    Else If x Is System.DBNull.Value Then

       Return 0

    Else If y Is System.DBNull.Value Then

       Return 0

    Else

       Return (CType(x.ToString(), IComparable)).CompareTo(y.ToString())

    End If

End Function



Private cd As SortColumnDescriptor = New Syncfusion.Grouping.SortColumnDescriptor()

Me.gridGroupingControl1.TableDescriptor.SortedColumns.Add(cd)

Private cd.SortDirection = System.ComponentModel.ListSortDirection.Descending

Private cd.Comparer = New StrLenComparer()

{% endhighlight %}

