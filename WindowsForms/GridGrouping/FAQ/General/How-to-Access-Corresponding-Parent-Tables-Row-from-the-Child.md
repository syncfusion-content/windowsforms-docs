---
layout: post
title: How-to-Access-Corresponding-Parent-Tables-Row-from | Windows Forms | Syncfusion
description: how to access corresponding parent table's row from the child
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Access Corresponding Parent Table's Row from the Child

Get the table's current element. Then cast this element to GridNestedTable. You can now access the parent table for the current element. This is a recursive process. 

## Example


{% highlight C# %}



Element el = this.gridGroupingControl1.TableControl.Table.CurrentElement;

    if(el != null)

    {

        if(el is GridRecord)

        {

            Console.WriteLine("no parent row...");

        }



//Checks for a child table.

        else if(el is GridNestedTable)

        {

            GridNestedTable gridNestedTable = el as GridNestedTable;

            GridNestedTable gridNestedTable1 = gridNestedTable;

            while(gridNestedTable1 != null && gridNestedTable1.ChildTable != null)

            {

                 gridNestedTable = gridNestedTable1;



//Gets the handle for parent table.

                 gridNestedTable1 = gridNestedTable.ChildTable.ParentTable.CurrentElement as GridNestedTable;

            }



//Retrieves the corresponding parent table's record.

            DataRowView drv = gridNestedTable.ParentRecord.GetData() as DataRowView;



//Shows column 2.

            Console.WriteLine(drv[1].ToString()); 

        }

    }

{% endhighlight %}



{% highlight vbnet %}




Dim el As Element = Me.GridGroupingControl1.TableControl.Table.CurrentElement

    If Not (el Is Nothing) Then

        If TypeOf el Is GridRecord Then

            Console.WriteLine("no parent row...")

        Else



'Checks for a child table.

            If TypeOf el Is GridNestedTable Then

                Dim gridNestedTable As GridNestedTable = el

                Dim gridNestedTable1 As GridNestedTable

                If TypeOf gridNestedTable Is GridNestedTable Then

                    gridNestedTable1 = gridNestedTable

                Else

                    gridNestedTable1 = Nothing

                End If



                While Not (gridNestedTable1 Is Nothing) AndAlso Not (gridNestedTable1.ChildTable Is Nothing)

                    gridNestedTable = gridNestedTable1

                    If TypeOf gridNestedTable.ChildTable.ParentTable.CurrentElement Is GridNestedTable Then



'Gets the handle for parent table.

                        gridNestedTable1 = gridNestedTable.ChildTable.ParentTable.CurrentElement

                    Else

                        gridNestedTable1 = Nothing

                    End If

                End While



'Retrieves the corresponding parent table's record.

                Dim drv As DataRowView = gridNestedTable.ParentRecord.GetData()



'Shows column 2.

                Console.WriteLine(drv(1).ToString()) 

            End If

        End If

End If

{% endhighlight %}

