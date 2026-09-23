---
layout: post
title: Update Summaries in WinForms GridGroupingControl | Syncfusion®
description: Update summaries immediately when a field value changes in Syncfusion® WinForms GridGroupingControl, its summary refresh behavior, field updates, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Update Summaries Immediately in WinForms GridGroupingControl

By default, the summaries will be refreshed as you leave the row. But if you want the summaries to be updated as you leave the cell, then you must handle CurrentRecordContextChange event and you can Invalidate the summary. Refer to the following code snippet.

{% tabs %}
{% highlight c# %}

private void gridGroupingControl1_CurrentRecordContextChange(object sender, CurrentRecordContextChangeEventArgs e)
{
     if(e.Action == CurrentRecordAction.CurrentFieldChanged)
     {
         this.gridGroupingControl1.CurrencyManager.EndCurrentEdit();
         this.gridGroupingControl1.Table.InvalidateSummary();
     }
}

{% endhighlight  %}

{% highlight vb %}

Private Sub gridGroupingControl1_CurrentRecordContextChange(ByVal sender As Object, ByVal e As CurrentRecordContextChangeEventArgs)
If e.Action = CurrentRecordAction.CurrentFieldChanged Then
Me.gridGroupingControl1.CurrencyManager.EndCurrentEdit()
Me.gridGroupingControl1.Table.InvalidateSummary()
End If
End Sub

{% endhighlight  %}
{% endtabs %}
