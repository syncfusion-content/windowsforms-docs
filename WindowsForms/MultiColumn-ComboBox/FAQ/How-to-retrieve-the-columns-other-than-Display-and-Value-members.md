---
layout: post
title:  Retrieve Columns Other Than Display and Value Members
description: Learn how to retrieve column values other than the DisplayMember and ValueMember fields in a MultiColumnComboBox control.
platform: windowsforms
control: Editors Package
documentation: ug
---


# Retrieve Columns Other Than Display and Value Members

Handle the SelectedIndexChanged Event of MultiColumnComboBox as shown below in order to retrieve respective column values.

{% tabs %}
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

{% highlight vb %}

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
{% endtabs %}

![Retrieve Columns Other Than Display and Value Members](Frequently-Asked-Questions_images/Overview_img333.jpeg) 


