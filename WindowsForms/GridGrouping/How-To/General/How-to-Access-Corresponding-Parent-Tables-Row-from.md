---
layout: post
title: How-to-Access-Corresponding-Parent-Tables-Row-from
description: how to access corresponding parent table's row from the child
platform: windowsforms
control: How To
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

            GridNestedTable gnt = el as GridNestedTable;

            GridNestedTable gnt1 = gnt;

            while(gnt1 != null && gnt1.ChildTable != null)

            {

                 gnt = gnt1;



//Gets the handle for parent table.

                 gnt1 = gnt.ChildTable.ParentTable.CurrentElement as GridNestedTable;

            }



//Retrieves the corresponding parent table's record.

            DataRowView drv = gnt.ParentRecord.GetData() as DataRowView;



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

                Dim gnt As GridNestedTable = el

                Dim gnt1 As GridNestedTable

                If TypeOf gnt Is GridNestedTable Then

                    gnt1 = gnt

                Else

                    gnt1 = Nothing

                End If



                While Not (gnt1 Is Nothing) AndAlso Not (gnt1.ChildTable Is Nothing)

                    gnt = gnt1

                    If TypeOf gnt.ChildTable.ParentTable.CurrentElement Is GridNestedTable Then



'Gets the handle for parent table.

                        gnt1 = gnt.ChildTable.ParentTable.CurrentElement

                    Else

                        gnt1 = Nothing

                    End If

                End While



'Retrieves the corresponding parent table's record.

                Dim drv As DataRowView = gnt.ParentRecord.GetData()



'Shows column 2.

                Console.WriteLine(drv(1).ToString()) 

            End If

        End If

End If

{% endhighlight %}

