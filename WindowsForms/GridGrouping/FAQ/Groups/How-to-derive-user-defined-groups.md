---
layout: post
title: How-to-derive-user-defined-groups | Windows Forms | Syncfusion
description: how to derive user defined groups
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to derive user defined groups

This can be done using the code below.

{% highlight c# %}



//Group "Col2" using a custom categorizer and Comparer.

Syncfusion.Grouping.SortColumnDescriptor cdn = new Syncfusion.Grouping.SortColumnDescriptor("Col2");

cdn.Categorizer = new CustomCategorizer();

cdn.Comparer = new CustomComparer();

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(cdn);



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

int rte = 0;

if(i < 10)

 rte = 1;

else if(i >= 10 && i < 20)

 rte = 2;

else if(i >= 20 && i < 30)

 rte = 3;

else if(i >= 30 && i < 40)

 rte = 4;

else  

 rte = 5;

return rte;

}
{% endhighlight  %}


{% highlight vbnet %}



'Group "Col2" using a custom categorizer and Comparer.

   Dim cdn As Syncfusion.Grouping.SortColumnDescriptor = New 



Syncfusion.Grouping.SortColumnDescriptor("Col2")

   cdn.Categorizer = New CustomCategorizer()

   cdn.Comparer = New CustomComparer()

   Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(cdn)



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

    Dim rte As Integer = 0

    If i < 10 Then

        rte = 1

    ElseIf i >= 10 AndAlso i < 20 Then

        rte = 2

    ElseIf i >= 20 AndAlso i < 30 Then

        rte = 3

    ElseIf i >= 30 AndAlso i < 40 Then

        rte = 4

    Else

        rte = 5

    End If



    Return rte

End Function

{% endhighlight  %}

