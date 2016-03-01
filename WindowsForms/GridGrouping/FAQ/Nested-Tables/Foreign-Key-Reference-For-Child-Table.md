---
layout: post
title: Foreign-Key-Reference-For-Child-Table | Windows Forms | Syncfusion
description: foreign key reference for child table
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Foreign Key Reference For Child Table

When you want to create a relation between child and grandchild table with ForeignKeyReference, set RelationKind property of GridRelationDescriptor to ForeignKeyReference.

The following code illustrates this: 

{% highlight C# %}


public Form1()

     {

//Adds relation to ParentTable.

GridRelationDescriptor parentToChildRelationDescriptor = new GridRelationDescriptor();

parentToChildRelationDescriptor.ChildTableName = "MyChildTable";    //Same as SourceListSetEntry.Name for childTable (see below)

parentToChildRelationDescriptor.RelationKind = RelationKind.RelatedMasterDetails;

parentToChildRelationDescriptor.RelationKeys.Add("parentID", "ParentID");

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name");

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("MyGrandChildTable_Name");



gridGroupingControl1.TableDescriptor.Relations.Add(parentToChildRelationDescriptor);





//Adds Relation to GrandChildTable in Childtable like look up.

            GridRelationDescriptor childToGrandChildRelationDescriptor = new GridRelationDescriptor();

childToGrandChildRelationDescriptor.ChildTableName = "MyGrandChildTable";  //Same as SourceListSetEntry.Name for grandChhildTable (see below)

childToGrandChildRelationDescriptor.RelationKind = RelationKind.ForeignKeyReference;

childToGrandChildRelationDescriptor.RelationKeys.Add("childID", "GrandChildID");

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("GrandChildID");

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name");



//Adds relation to ChildTable.

            parentToChildRelationDescriptor.ChildTableDescriptor.Relations.Add(childToGrandChildRelationDescriptor);



}

{% endhighlight %}



{% highlight vbnet %}


Public Sub New()

'Adds relation to ParentTable.

            Dim parentToChildRelationDescriptor As New GridRelationDescriptor()

            parentToChildRelationDescriptor.ChildTableName = "MyChildTable"

            parentToChildRelationDescriptor.RelationKind = RelationKind.RelatedMasterDetails

            parentToChildRelationDescriptor.RelationKeys.Add("parentID", "ParentID")

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name")

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("MyGrandChildTable_Name")



            gridGroupingControl1.TableDescriptor.Relations.Add(parentToChildRelationDescriptor)



'Adds Relation to GrandChildTable in Childtable like look up.

            Dim childToGrandChildRelationDescriptor As New GridRelationDescriptor()

            childToGrandChildRelationDescriptor.ChildTableName = "MyGrandChildTable"

            childToGrandChildRelationDescriptor.RelationKind = RelationKind.ForeignKeyReference

            childToGrandChildRelationDescriptor.RelationKeys.Add("childID", "GrandChildID")

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("GrandChildID")

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name")



'Adds relation to ChildTable.

            parentToChildRelationDescriptor.ChildTableDescriptor.Relations.Add(childToGrandChildRelationDescriptor)

        End Sub

{% endhighlight %}

