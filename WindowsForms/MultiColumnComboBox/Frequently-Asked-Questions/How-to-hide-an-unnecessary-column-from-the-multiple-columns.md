---
layout: post
title: How-to-hide-an-unnecessary-column-from-the-multiple-columns
description: how to hide an unnecessary column from the multiple columns
platform: windowsforms
control: Editors Package
documentation: ug
---

# How to hide an unnecessary column from the multiple columns


MultiColumComboBox allows us to hide unnecessary columns. If you want to hide a particular column, follow this method anywhere in code but before displaying the dropdown.

{% highlight c# %}



Syncfusion.Windows.Forms.Grid.GridColHidden gch=new Syncfusion.Windows.Forms.Grid.GridColHidden(3);// Hides column number '3'

multiColumnComboBox1.ListBox.Grid.ColHiddenEntries.Add(gch);

{% endhighlight %}

{% highlight vbnet %}



Dim gch As Syncfusion.Windows.Forms.Grid.GridColHidden = New Syncfusion.Windows.Forms.Grid.GridColHidden(3) 'Hides column number '3'

multiColumnComboBox1.ListBox.Grid.ColHiddenEntries.Add(gch)

{% endhighlight %}

This will hide the 3rd column. If you want to disable more columns repeat this step by the respective column number.

## How to retrieve the columns other than Display and Value members in a MultiColumnComboBox

Handle the SelectedIndexChanged Event of MultiColumnComboBox as shown below in order to retrieve respective column values.

{% highlight c# %}



private void MultiColumnComboBox1_SelectedIndexChanged(object sender, System.EventArgs e)

{

for(int i=1;i<= this.MultiColumnComboBox1.ListBox.Grid.RowCount;i++)

{

for(int j=1;j<= this.MultiColumnComboBox1.ListBox.Grid.ColCount ;j++)

{

this.textBox2.Text = this.MultiColumnComboBox1 .ListBox.Grid.Model[this.MultiColumnComboBox1.SelectedIndex+1 , j].CellValue.ToString ();



textBox1.Text = this.MultiColumnComboBox1.ListBox.Grid.Model[this.MultiColumnComboBox1.SelectedIndex+1 , j-1].CellValue.ToString ();

}

}

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub MultiColumnComboBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

  Dim i As Integer=1



       Do While i<= Me.MultiColumnComboBox1.ListBox.Grid.RowCount

            Dim j As Integer=1



            Do While j<= Me.MultiColumnComboBox1.ListBox.Grid.ColCount

                 Me.textBox2.Text = Me.MultiColumnComboBox1.ListBox.Grid.Model(Me.MultiColumnComboBox1.SelectedIndex+1, j).CellValue.ToString ()



                 textBox1.Text = Me.MultiColumnComboBox1.ListBox.Grid.Model(Me.MultiColumnComboBox1.SelectedIndex+1, j-1).CellValue.ToString ()

                 j += 1

             Loop

             i += 1

        Loop

End Sub

{% endhighlight %}

![](Frequently-Asked-Questions_images/Overview_img333.jpeg) 


## How to change the back color and text color of the selected item?

Using PrepareViewStyleInfo event of the Grid that is embedded in the MultiColumnComboBox, you can change the back color and text color of the selected item. This is illustrated in the following code.

{% highlight c# %}

GridControl gc = this.multiColumnComboBox1.ListBox.Grid;

gc.PrepareViewStyleInfo += new GridPrepareViewStyleInfoEventHandler(gc_PrepareViewStyleInfo);

gc.AlphaBlendSelectionColor = Color.Transparent;

void gc_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)

{

    GridCurrentCell cc = this.gc.CurrentCell;

    if (e.RowIndex == cc.RowIndex)

    {

        e.Style.BackColor = SystemColors.Highlight;

        e.Style.TextColor = SystemColors.HighlightText;

    }

}

{% endhighlight %}

{% highlight vbnet %}

Private gc As GridControl = Me.multiColumnComboBox1.ListBox.Grid

 gc.PrepareViewStyleInfo += New GridPrepareViewStyleInfoEventHandler(gc_PrepareViewStyleInfo)

 gc.AlphaBlendSelectionColor = Color.Transparent



Private Sub gc_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)

    Dim cc As GridCurrentCell = Me.gc.CurrentCell

    If e.RowIndex = cc.RowIndex Then

        e.Style.BackColor = SystemColors.Highlight

        e.Style.TextColor = SystemColors.HighlightText

    End If

End Sub

{% endhighlight %}