---
layout: post
title: Hide Row and Column Headers in WinForms Grid Control | Syncfusion®
description: Hide numbered row and column headers while printing or previewing in Syncfusion® Windows Forms Grid Control using print header properties.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Hide Numbered Row,Column Headers in Windows Forms Grid Control

This page explains How to hide the numbered row and column headers while printing or previewing print in GridControl and more details.

## How to hide the numbered row and column headers while printing or previewing print in GridControl

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

{% highlight vb %}

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