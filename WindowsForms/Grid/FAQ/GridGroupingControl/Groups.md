---
layout: post
title: Groups
description: groups
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## Groups

#### How to access all the groups

To access all the groups and records categorized under it, use the following code.

[C#]



this.iterate(this.gridGroupingControl1.Table.TopLevelGroup);



public void iterate(Group g)

{

System.Diagnostics.Trace.WriteLine("GroupLevel = "+g.GroupLevel);

System.Diagnostics.Trace.WriteLine(g.Info);

foreach(Record r in g.Records)

{

System.Diagnostics.Trace.WriteLine(r.Info);

}

foreach(Group gr in g.Groups)

{

iterate(gr);

}

}



[VB]



Me.iterate(Me.gridGroupingControl1.Table.TopLevelGroup)



Public Sub iterate(ByVal g As Group)

    System.Diagnostics.Trace.WriteLine("GroupLevel = " + g.GroupLevel.toString())

    System.Diagnostics.Trace.WriteLine(g.Info)

    For Each r As Record In g.Records

        System.Diagnostics.Trace.WriteLine(r.Info)

    Next r

    For Each gr As Group In g.Groups

        iterate(gr)

    Next gr

End Sub

#### How to access a particular group

To access a particular group and the records categorized under it, use the following code.

[C#]



//Accesses a particular group and the categorized records under it

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1");



//Uses category.

this.iterate(this.gridGroupingControl1.Table.TopLevelGroup.Groups["row6 col1"]);



//Or uses index.

//this.iterate(this.gridGroupingControl1.Table.TopLevelGroup.Groups[6]);



public void iterate(Group g)

{

System.Diagnostics.Trace.WriteLine("GroupLevel = "+g.GroupLevel);

System.Diagnostics.Trace.WriteLine(g.Info);

foreach(Record r in g.Records)

{

System.Diagnostics.Trace.WriteLine(r.Info);

}

foreach(Group gr in g.Groups)

{

iterate(gr);

}

}



[VB]



'Accesses a particular group and the categorized records under it.  

    Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1")

' Uses category.

    Me.iterate(Me.gridGroupingControl1.Table.TopLevelGroup.Groups("row6 col1"))



Public Sub iterate(ByVal g As Group)

    System.Diagnostics.Trace.WriteLine("GroupLevel = " + g.GroupLevel.toString())

    System.Diagnostics.Trace.WriteLine(g.Info)

    For Each r As Record In g.Records

        System.Diagnostics.Trace.WriteLine(r.Info)

    Next r

    For Each gr As Group In g.Groups

        iterate(gr)

    Next gr

End Sub

#### How to access the group from DisplayElements

To access the group from DisplayElements, use the following code snippet.

[C#]



//For all the display elements in the Table.

foreach(Element el in gridGroupingControl1.Table.DisplayElements)

{

//DisplayElementKind.Record or DisplayElementKind.Summary.

if(el.Kind==DisplayElementKind.Record || DisplayElementKind.Summary)

{

Group g = el.ParentGroup;

System.Diagnostics.Trace.WriteLine(g.Info);

}

}



[VB]



'For all the display elements in the Table

For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary

    If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then

    Dim g As Group = el.ParentGroup

         System.Diagnostics.Trace.WriteLine(g.Info)

     End If

Next el



#### How to access the group from the Record

To access the group from the record, use the following code snippet.

[C#]



//For all the display elements in the Table.

foreach(Element el in gridGroupingControl1.Table.DisplayElements)

{

//DisplayElementKind.Record or DisplayElementKind.Summary.

if(el.Kind==DisplayElementKind.Record || DisplayElementKind.Summary)

{

Group g = el.ParentGroup;

System.Diagnostics.Trace.WriteLine(g.Info);

}

}



[VB]



'For all the display elements in the Table.

For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary.

    If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then

    Dim g As Group = el.ParentGroup

         System.Diagnostics.Trace.WriteLine(g.Info)

     End If

Next el

#### How to apply grouping properties for a particular column

Grouping properties for a particular column can be applied using the code snippet below.

[C#]



//Sets the color of any group cell in column 'Col1'.

this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.AnyGroupCell.BackColor=Color.LightBlue;



//Sets the FilterBar cell appearance to be raised.

this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.FilterBarCell.CellAppearance=GridCellAppearance.Raised;



//Setts the cell type of any record cell.

this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.AnyRecordFieldCell.CellType="ComboBox";



[VB]



'Shows how to apply grouping properties for particular column.

'Sets the color of any record cell in column 'Col1'.

Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.AnyRecordFieldCell.BackColor=Color.LightBlue



'Sets the FilterBar cell appearance to be raised.

Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.FilterBarCell.CellAppearance=GridCellAppearance.Raised



'Sets the cell type of any record cell.

Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.AnyRecordFieldCell.CellType="ComboBox"

#### How to apply grouping properties for ChildLevelGroups

Grouping properties for ChildLevelGroups can be applied using the code snippet below.

[C#]



//Hides the caption text of the group.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaption=false;



//Hides the plus or minus sign from the group.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaptionPlusMinus=false;



//Adds the Filter Bar to the Child level groups.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowFilterBar=true;



//Hides the AddNewRecord field before details row.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowAddNewRecordBeforeDetails=false;



//Shows the footer of the group.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowGroupFooter=true;



[VB]



'Hides the caption text of the group.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaption=False



'Hides the plus or minus symbols present in the group.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaptionPlusMinus=False



'Shows the FilterBar.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowFilterBar=True



'Hides the AddNewRecord before details.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowAddNewRecordBeforeDetails=False



'Shows the group footer.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowGroupFooter=True

#### How to apply grouping properties for TopLevelGroups

Grouping properties for TopLevelGroups can be applied using the code snippet below.

[C#]



//Hides the AddNewRecord field before details row.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowAddNewRecordBeforeDetails=false;



//Hides the Header cells.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowColumnHeaders=false;



//Adds the Filter Bar to the Child level groups.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowFilterBar=true;



//Sets the caption.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.CaptionText="Hai";



//Shows the group footer.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowGroupFooter=true;



[VB]



'Hides the AddNewRecord before details.

Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowAddNewRecordBeforeDetails=False



'Hides the column headers.

   Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowColumnHeaders=False



'Adds the Filter Bar to the Top level groups.

   Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowFilterBar=True



'Sets the caption.

Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.CaptionText="Hai"



'Shows the group footer.

Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowGroupFooter=True

#### How to derive user defined groups

This can be done using the code below.

[C#]



//Group "Col2" using a custom categorizer and Comparer.

Syncfusion.Grouping.SortColumnDescriptor cd = new Syncfusion.Grouping.SortColumnDescriptor("Col2");

cd.Categorizer = new CustomCategorizer();

cd.Comparer = new CustomComparer();

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(cd);



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

int ret = 0;

if(i < 10)

 ret = 1;

else if(i >= 10 && i < 20)

 ret = 2;

else if(i >= 20 && i < 30)

 ret = 3;

else if(i >= 30 && i < 40)

 ret = 4;

else  

 ret = 5;

return ret;

}



[VB]



'Group "Col2" using a custom categorizer and Comparer.

   Dim cd As Syncfusion.Grouping.SortColumnDescriptor = New 



Syncfusion.Grouping.SortColumnDescriptor("Col2")

   cd.Categorizer = New CustomCategorizer()

   cd.Comparer = New CustomComparer()

   Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(cd)



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

    Dim ret As Integer = 0

    If i < 10 Then

        ret = 1

    ElseIf i >= 10 AndAlso i < 20 Then

        ret = 2

    ElseIf i >= 20 AndAlso i < 30 Then

        ret = 3

    ElseIf i >= 30 AndAlso i < 40 Then

        ret = 4

    Else

        ret = 5

    End If



    Return ret

End Function



#### What are the events fired when the group is collapsing or collapsed

Following are the events triggered when the group is collapsing or collapsed.

[C#]



//Shows the GroupCollapsing event.

private void gridGroupingControl1_GroupCollapsing(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which is being collapsed.

foreach(Record r in e.Group.Records)

{

    Console.WriteLine("Collapsing event "+r.Info);

}

}



//Shows the GroupCollapsed event.

private void gridGroupingControl1_GroupCollapsed(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group which has collapsed.

    foreach(Record r in e.Group.Records)

    {

        Console.WriteLine("Collapsed event "+r.Info);

    }

}



[VB]



'Shows the GroupCollapsed events.

 Private Sub gridGroupingControl1_GroupCollapsed(ByVal sender As Object, ByVal e As Syncfusion.Grouping.GroupEventArgs) Handles 

    gridGroupingControl1.GroupCollapsed()

    For Each r As Record In e.Group.Records

        Console.WriteLine("Collapsed event " + r.Info)

    Next r

End Sub



'Shows the GroupCollapsing events.

  Private Sub gridGroupingControl1_GroupCollapsing(ByVal sender As Object, ByVal e As Syncfusion.Grouping.GroupEventArgs) Handles 

    gridGroupingControl1.GroupCollapsing()

    For Each r As Record In e.Group.Records

        Console.WriteLine("Collapsing event " + r.Info)

    Next r

End Sub



#### What are the events fired when the group is expanded / expanding?

Following are the events fired when the group is expanding or expanded.

[C#]



//Shows the GroupExpanding event.

private void gridGroupingControl1_GroupExpanding(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which is being Expanded.

foreach(Record r in e.Group.Records)

{

Console.WriteLine("Expanding event "+r.Info);

}

}



//Shows the GroupExpanded event.

private void gridGroupingControl1_GroupExpanded(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which has expanded.

foreach(Record r in e.Group.Records)

{

Console.WriteLine("Expanded event "+r.Info);

}

}



[VB]



//Shows the GroupExpanding event.

private void gridGroupingControl1_GroupExpanding(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

// Shows all the records in the group, which is being Expanded.

    foreach(Record r in e.Group.Records)

    {

        Console.WriteLine("Expanding event "+r.Info);

    }

}



//Shows the GroupExpanded event.

private void gridGroupingControl1_GroupExpanded(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which has expanded.

    foreach(Record r in e.Group.Records)

    {

        Console.WriteLine("Expanded event "+r.Info);

    }

}



