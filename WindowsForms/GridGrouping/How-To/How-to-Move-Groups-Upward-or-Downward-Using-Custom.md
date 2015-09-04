---
layout: post
title: How-to-Move-Groups-Upward-or-Downward-Using-Custom
description: how to move groups upward or downward using custom comparer
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to Move Groups Upward or Downward Using Custom Comparer

To enable moving the groups using custom Comparer in GridGrouping control, an IComparer object and QueryValue event should be handled. The Comparer object allows you to control the movement of groups in GGC. The group moving logic should be implemented in custom Comparer. After customizing the sorting logic through IComparer, the QueryValue event should be applied to make the groups move among its position.

{% highlight c# %}

public class CustomGroupSortOrderComparer : IGroupSortOrderComparer

{



string sortColumnDescriptorName;

public CustomGroupSortOrderComparer(string sortColumnDescriptorName)

{

this.sortColumnDescriptorName = sortColumnDescriptorName;

}


#region IComparer Members

public int Compare(object x, object y)

{

Group x1 = x as Group;

Group y1 = y as Group;

return String.Compare(x1.Records[0].GetValue(sortColumnDescriptorName).ToString(), y1.Records[0].GetValue(sortColumnDescriptorName).ToString());

}

#endregion

}





//In the above codes, IComparer is used to compare the groups to move. If X1 is greater than the Y1 groups, it will return either X1 or Y1. This Comparer class is used to move all groups from their original position. sortColumnDescriptorName describes the grouped column. 





//Handles the QueryValue event to make the grid use the custom Comparer.





void gridGroupingControl1_QueryValue(object sender, FieldValueEventArgs e)

{

//Code...

if (g == e.Record.ParentGroup)

{

ArrayList list = new ArrayList(table.Values.Count);

list.AddRange(table.Values);

list.Sort();

if (flag1 || flag2)

{

if (flag1)

{

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) - 1;

}

else if (flag2)

{

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) + 1;

}

if (index &lt; 0 || index &gt;= list.Count)

{

MessageBox.Show("Cannot go further!");

}

//Code...

}

//If you click the Move Up button, the index of the current record is decreased using the below code.

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) - 1;



//If you click the Move Down button then the index of the current record is increased. Refer to the below code.

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) - 1;



//Code...



 }

}

{% endhighlight %}

{% highlight vbnet %}

public class CustomGroupSortOrderComparer : IGroupSortOrderComparer



Dim sortColumnDescriptorName As String

public CustomGroupSortOrderComparer(String sortColumnDescriptorName)

Me.sortColumnDescriptorName = sortColumnDescriptorName

'#Region "IComparer Members"

public Integer Compare(Object x, Object y)

Dim x1 As Group = TryCast(x, Group)

Dim y1 As Group = TryCast(y, Group)

Return String.Compare(x1.Records(0).GetValue(sortColumnDescriptorName).ToString(), y1.Records(0).GetValue(sortColumnDescriptorName).ToString())

'#End Region





'In the above codes, IComparer is used to compare the groups to move. If X1 is greater than the Y1 groups it will return the groups, either X1 or Y1. This Comparer class is used to move all groups from their original position. sortColumnDescriptorName describes the grouped column. 





'Handles the QueryValue event to make the grid use the custom Comparer.





void gridGroupingControl1_QueryValue(Object sender, FieldValueEventArgs e)

'Code...

If g = e.Record.ParentGroup Then

Dim list As New ArrayList(table.Values.Count)

list.AddRange(table.Values)

list.Sort()

If flag1 OrElse flag2 Then

If flag1 Then

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) - 1

ElseIf flag2 Then

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) + 1

End If

If index &lt; 0 OrElse index &gt;= list.Count Then

MessageBox.Show("Cannot go further!")

End If



'Code...



End If

'If you click the Move Up button the index of the current record is decreased using the below code.

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) - 1



'If you click the Move Down button then the index of the current record is increased. Refer to the below code.

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) - 1

'Code...



End Sub

{% endhighlight %}

Refer to the following sample file for more details.

[http://www.syncfusion.com/downloads/Support/DirectTrac/98850/Demo%20(2)539070983.zip](http://www.syncfusion.com/downloads/Support/DirectTrac/98850/Demo%20(2)539070983.zip)

