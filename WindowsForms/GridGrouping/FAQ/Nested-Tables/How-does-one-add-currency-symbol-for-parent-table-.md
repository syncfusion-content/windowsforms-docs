---
layout: post
title: How-does-one-add-currency-symbol-for-parent-table- | Windows Forms | Syncfusion
description: how does one add currency symbol for parent table and child table
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How does one add currency symbol for parent table and child table

You can set the currency symbol for both Parent and Child through GridColumnDescriptor object. Parent tables have it by default. For the Child table setting, you will need to get GridColumnDescriptor for each Child table through recursion. AccessChild()method is handled recursively to set the currency symbol for Grandchild tables, using relations of GridGroupingControl.

{% tabs %}
{% highlight C# %}

//In Form_Load.

//For Parent Table.
this.gridGroupingControl1.TableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency;
this.gridGroupingControl1.TableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "@";

//For Child Table.
foreach (GridRelationDescriptor relation in this.gridGroupingControl1.TableDescriptor.Relations)
{
    AccessChild(relation);
}
public void AccessChild(GridRelationDescriptor relation)
{
    relation.ChildTableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency;
    relation.ChildTableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "!#";
    if (relation.ChildTableDescriptor.Relations.Count > 0)
    {
        foreach (GridRelationDescriptor rel in relation.ChildTableDescriptor.Relations)
        {
            AccessChild(rel); //Recursive function.
        }
    }
}
{% endhighlight %}

{% highlight vb %}

'In Form_Load.

'For Parent Table.	Me.gridGroupingControl1.TableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency			Me.gridGroupingControl1.TableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "@"

'For Child Table.
For Each relation As GridRelationDescriptor In Me.gridGroupingControl1.TableDescriptor.Relations
AccessChild(relation)
Next relation
Public Sub AccessChild(ByVal relation As GridRelationDescriptor)
relation.ChildTableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency
relation.ChildTableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "!#"
If relation.ChildTableDescriptor.Relations.Count > 0 Then
For Each rel As GridRelationDescriptor In relation.ChildTableDescriptor.Relations
AccessChild(rel) 'Recursive function
Next rel
End If
End Sub

{% endhighlight %}
{% endtabs %}
