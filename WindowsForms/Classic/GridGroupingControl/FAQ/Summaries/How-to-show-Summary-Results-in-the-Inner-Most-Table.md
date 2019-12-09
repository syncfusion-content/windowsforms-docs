---
layout: post
title: How-to-show-Summary-Results-in-the-Inner-Most-Tabl | Windows Forms | Syncfusion
description: how to show summary results in the inner most table on every parent level in nested related tables
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Show Summary Results in the Inner Most Table on every Parent Level in Nested Related Tables

The summary results of the nested tables can be obtained by using GetSummaryText method of GridEngine. 

{% tabs %}
{% highlight c# %}

private void gridGroupingControl1_QueryValue(object sender, Syncfusion.Grouping.FieldValueEventArgs e) 
{ 
    if(e.TableDescriptor.Name == this.parentTD.Name)
    { 
        Group g = e.Record.NestedTables[0].ChildTable as Group; 

//Sets SummaryText for ParentTable.
        e.Value = GridEngine.GetSummaryText(g, "c_ROW", "c_SUM");
    } 
    else if
    (e.TableDescriptor == this.childTD) 
    { 
          Group g = e.Record.NestedTables[0].ChildTable as Group;

//Sets SummaryText for child table.
          e.Value = GridEngine.GetSummaryText(g, "gc_ROW", "gc_SUM");
    } 
    else if
         (e.TableDescriptor == this.gridChildTD) 
         { 

//Retrieves the unbound column values.
                object o = this.unboundValues[e.Record.GetValue("GrandChildID").ToString()]; double d; 
                if(o != null && double.TryParse(o.ToString(), System.Globalization.NumberStyles.Any, null, out d)) 
                {

//Displays the values.
                       e.Value = d; 

                } 
        } 

}


{% endhighlight  %}
{% highlight vb %}

 Private Sub gridGroupingControl1_QueryValue(ByVal sender As Object, ByVal e As Syncfusion.Grouping.FieldValueEventArgs)
If e.TableDescriptor.Name = Me.parentTD.Name Then
Dim g As Group = CType(IIf(TypeOf e.Record.NestedTables(0).ChildTable Is Group, e.Record.NestedTables(0).ChildTable, Nothing), Group)

'Sets SummaryText for ParentTable.
e.Value = GridEngine.GetSummaryText(g, "c_ROW", "c_SUM")
ElseIf e.TableDescriptor Is Me.childTD Then
Dim g As Group = CType(IIf(TypeOf e.Record.NestedTables(0).ChildTable Is Group, e.Record.NestedTables(0).ChildTable, Nothing), Group)

'Sets SummaryText for ChildTable.
e.Value = GridEngine.GetSummaryText(g, "gc_ROW", "gc_SUM")
ElseIf e.TableDescriptor Is Me.gridChildTD Then

'Retrieves the unbound column values.
Dim o As Object = Me.unboundValues(e.Record.GetValue("GrandChildID").ToString())
Dim d As Double
If Not o Is Nothing AndAlso Double.TryParse(o.ToString(), System.Globalization.NumberStyles.Any, Nothing, d) Then

'Displays the values.
e.Value = d
End If
End If
End Sub

{% endhighlight  %}
{% endtabs %}
