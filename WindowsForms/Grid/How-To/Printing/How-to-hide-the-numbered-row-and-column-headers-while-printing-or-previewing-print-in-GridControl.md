---
layout: post
title: Printing in GridControl
description: how to hide the numbered row and column headers while printing or previewing print in gridcontrol
platform: windowsforms
control: Grid
documentation: ug
---

# How to hide the numbered row and column headers while printing or previewing print in GridControl

You have to set PrintRowHeader and PrintColHeader properties to _False_ to hide row and column headers while printing or previewing print in GridControl.

{% tabs %}
{% highlight c# %}

private void button2_Click(object sender, EventArgs e)
{
this.gridControl1.Model.Properties.PrintRowHeader = false;
this.gridControl1.Model.Properties.PrintColHeader = false;
if (this.gridControl1 != null)
{
try
{
GridPrintDocument pd = new GridPrintDocument(this.gridControl1, true);
PrintDialog dlg = new PrintDialog();
dlg.Document = pd;
if (dlg.ShowDialog() == DialogResult.OK)
pd.Print();
}
catch (Exception ex)
{
MessageBox.Show("An error occurred attempting to print the grid - " + ex.Message);
}
}
}

{% endhighlight  %}

{% highlight vbnet %}

Private Sub button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles button2.Click
Me.gridControl1.Model.Properties.PrintRowHeader = False
Me.gridControl1.Model.Properties.PrintColHeader = False
If Me.gridControl1 IsNot Nothing Then
Try
Dim pd As GridPrintDocument = New GridPrintDocument(Me.gridControl1, True)
Dim dlg As PrintDialog = New PrintDialog()
dlg.Document = pd
If dlg.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
pd.Print()
End If
Catch ex As Exception
MessageBox.Show("An error occurred attempting to print the grid - " & ex.Message)
End Try
End If
End Sub

{% endhighlight  %}
{% endtabs %}