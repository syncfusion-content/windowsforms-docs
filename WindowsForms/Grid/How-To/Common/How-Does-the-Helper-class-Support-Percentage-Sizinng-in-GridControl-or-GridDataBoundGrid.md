---
layout: post
title: How-Does-the-Helper-class-Support-Percentage-Sizinng-in-GridControl-or-GridDataBoundGrid | Windows Forms | Syncfusion
description: how does the helper class support percentage sizing in gridcontrol / griddataboundgrid
platform: windowsforms
control: Grid
documentation: ug
---

# How Does the Helper class Support Percentage Sizing in GridControl / GridDataBoundGrid

### Introduction

The example given below has a helper class that supports automatic sizing in both GridControl or GridDataBoundGrid in two ways. One way, referred as proportional sizing is where all the columns in the grid are equally sized. The other technique used is referred as the percentage sizing, which allows you to specify that certain columns should occupy certain percentages of the available space for these columns.

WireGrid and UnwireGrid are the methods used to enable sizing of the helper class. Proportional sizing is achieved by using QueryColWidth event. Percentage sizing will explicitly set ColWidth[index] property for each column.

#### Example

{% highlight c# %}



private void Form1_Load(object sender, System.EventArgs e)

                {

                        DataTable dt = new DataTable();

                        for(int i=0; i<10; i++)

                        {

                                dt.Columns.Add();

                                dt.Rows.Add(new object[]{});

                        }

                        this.gridDataBoundGrid1.DataSource = dt;





//There is a condition check in accepting hashtable values.

// ie.. the total of values passed must not be greater than (100 - Unmodified Column count)

                        ht = new Hashtable();

                        ht.Add(1,20);

                        ht.Add(9,30);

                        ht.Add(4,13);



//Attempts like using unwanted keys are not encouraged because count is being used.

                        // ht.Add(12,100); 

                        Helper1 = new GridColSizingHelper();

                        Helper2 = new GridColSizingHelper();

                        Helper2.WireGrid(this.gridControl1,ht);

                        this.gridDataBoundGrid1.AllowResizeToFit = false;

                        Helper1.WireGrid(this.gridDataBoundGrid1,ht);

                }



                private void buttonAdv1_Click(object sender, System.EventArgs e)

                {

                        this.Helper1.UnwireGrid();

                        this.Helper2.UnwireGrid();

                }





                private void Form1_Resize(object sender, System.EventArgs e)

                {

                        this.Helper1.TurnOffProportion();

                        this.Helper1.TurnOnPercentages();

                        this.Helper2.TurnOffProportion();

                        this.Helper2.TurnOnPercentages();

                }



                private void buttonAdv2_Click(object sender, System.EventArgs e)

                {

                        Helper2.WireGrid(this.gridControl1);

                        Helper1.WireGrid(this.gridDataBoundGrid1);

                }



                private void buttonAdv3_Click(object sender, System.EventArgs e)

                {

                        Helper2.WireGrid(this.gridControl1,ht);

                        Helper1.WireGrid(this.gridDataBoundGrid1,ht);

                }

        }

}


{% endhighlight %}

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load

    Dim dt As DataTable = New DataTable()

    For i As Integer = 0 To 9

        dt.Columns.Add()

        dt.Rows.Add(New Object(){})

    Next i

    Me.gridDataBoundGrid1.DataSource = dt





' There is a condition check in accepting hashtable values.

' ie.. the total of values passed must not be greater than (100 - Unmodified Column count)

    ht = New Hashtable()

    ht.Add(1,20)

    ht.Add(9,30)

    ht.Add(4,13)



' Attempts like using unwanted keys are not encouraged because count is being used.

    ' ht.Add(12,100); 

    Helper1 = New GridColSizingHelper()

    Helper2 = New GridColSizingHelper()

    Helper2.WireGrid(Me.gridControl1,ht)

    Me.gridDataBoundGrid1.AllowResizeToFit = False

    Helper1.WireGrid(Me.gridDataBoundGrid1,ht)

End Sub



Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv1.Click

    Me.Helper1.UnwireGrid()

    Me.Helper2.UnwireGrid()

End Sub





Private Sub Form1_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Resize

    If Not Helper1 Is Nothing Then

        Me.Helper1.TurnOffProportion()

        Me.Helper1.TurnOnPercentages()

        Me.Helper2.TurnOffProportion()

        Me.Helper2.TurnOnPercentages()

    End If

End Sub



Private Sub buttonAdv2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv2.Click

    Helper2.WireGrid(Me.gridControl1)

    Helper1.WireGrid(Me.gridDataBoundGrid1)

End Sub



Private Sub buttonAdv3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv3.Click

    Helper2.WireGrid(Me.gridControl1, ht)

    Helper1.WireGrid(Me.gridDataBoundGrid1, ht)

End Sub

    End Class

End Namespace


{% endhighlight %}

