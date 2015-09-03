---
layout: post
title: How-to-Set-Column-Style-Properties-for-the-Nested-
description: how to set column style properties for the nested tables in a grouping grid
platform: windowsforms
control: How To
documentation: ug
---

# How to Set Column Style Properties for the Nested Tables in a Grouping Grid

To set column properties for nested tables, you will need to use TableDescriptor property for different tables. Here is the code that will get TableDescriptors for the parent table, child table and grandchild table from the GroupingControl's GridEngine, which sets some column style properties for each table.

## Example


{% highlight C# %}




GridEngine engine = this.gridGroupingControl1.Engine;

//Sets some parent properties.
    GridTableDescriptor parentTD = (GridTableDescriptor) engine.TableDescriptor;
    parentTD.Columns["parentID"].Appearance.AnyRecordFieldCell.BackColor = Color.LightGoldenrodYellow;
    parentTD.Columns["ParentName"].Width = 120;



//Sets some child properties.
    RelationDescriptor childRD = parentTD.Relations[childTable.TableName];
    GridTableDescriptor childTD = (GridTableDescriptor) childRD.ChildTableDescriptor;
    childTD.Columns["Name"].Appearance.AnyRecordFieldCell.BackColor = Color.Pink;

//Sets some grandchild properties.
    RelationDescriptor grandChildRD = childTD.Relations[grandChildTable.TableName];
    GridTableDescriptor grandChildTD = (GridTableDescriptor) grandChildRD.ChildTableDescriptor;
    grandChildTD.Columns["GrandChildID"].Appearance.AnyRecordFieldCell.BackColor = Color.LightBlue;
    grandChildTD.Columns["Name"].Appearance.AnyRecordFieldCell.BackColor = Color.LightCoral;
    grandChildTD.Columns["ChildID"].Appearance.AnyRecordFieldCell.BackColor = Color.LightYellow;

{% endhighlight %}

{% highlight vbnet %}




Dim engine As GridEngine = Me.GridGroupingControl1.Engine



'Sets some parent properties.

Dim parentTD As GridTableDescriptor = CType(engine.TableDescriptor, GridTableDescriptor)



    parentTD.Columns("parentID").Appearance.AnyRecordFieldCell.BackColor = Color.LightGoldenrodYellow  

    parentTD.Columns("ParentName").Width = 120 



'Sets some child properties.

 Dim childRD As RelationDescriptor = parentTD.Relations(childTable.TableName)



 Dim childTD As GridTableDescriptor = CType(childRD.ChildTableDescriptor, GridTableDescriptor)



     childTD.Columns("Name").Appearance.AnyRecordFieldCell.BackColor = Color.Pink '



'Sets some grandchild properties.

 Dim grandChildRD As RelationDescriptor = childTD.Relations(grandChildTable.TableName)



 Dim grandChildTD As GridTableDescriptor = CType(grandChildRD.ChildTableDescriptor, GridTableDescriptor)



     grandChildTD.Columns("GrandChildID").Appearance.AnyRecordFieldCell.BackColor = Color.LightBlue    

     grandChildTD.Columns("Name").Appearance.AnyRecordFieldCell.BackColor = Color.LightCoral '



     grandChildTD.Columns("ChildID").Appearance.AnyRecordFieldCell.BackColor = Color.LightYellow
{% endhighlight %}



