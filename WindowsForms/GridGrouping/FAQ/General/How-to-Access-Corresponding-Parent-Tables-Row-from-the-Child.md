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

            GridNestedTable gnat = el as GridNestedTable;

            GridNestedTable gnat1 = gnat;

            while(gnat1 != null && gnat1.ChildTable != null)

            {

                 gnat = gnat1;



//Gets the handle for parent table.

                 gnat1 = gnat.ChildTable.ParentTable.CurrentElement as GridNestedTable;

            }



//Retrieves the corresponding parent table's record.

            DataRowView drv = gnat.ParentRecord.GetData() as DataRowView;



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

                Dim gnat As GridNestedTable = el

                Dim gnat1 As GridNestedTable

                If TypeOf gnat Is GridNestedTable Then

                    gnat1 = gnat

                Else

                    gnat1 = Nothing

                End If



                While Not (gnat1 Is Nothing) AndAlso Not (gnat1.ChildTable Is Nothing)

                    gnat = gnat1

                    If TypeOf gnat.ChildTable.ParentTable.CurrentElement Is GridNestedTable Then



'Gets the handle for parent table.

                        gnat1 = gnat.ChildTable.ParentTable.CurrentElement

                    Else

                        gnat1 = Nothing

                    End If

                End While



'Retrieves the corresponding parent table's record.

                Dim drv As DataRowView = gnat.ParentRecord.GetData()



'Shows column 2.

                Console.WriteLine(drv(1).ToString()) 

            End If

        End If

End If

{% endhighlight %}

