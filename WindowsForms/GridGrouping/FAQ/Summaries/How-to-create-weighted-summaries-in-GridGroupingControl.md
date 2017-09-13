---
layout: post
title: How-to-create-weighted-summaries-in-GridGroupingCo | Windows Forms | Syncfusion
description: how to create weighted summaries in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to create weighted summaries in GridGroupingControl

You can create custom summaries that perform weighted average calculations using code naming convention to pass the column holding the weights to the summary descriptor. Refer to the code snippet below, which illustrates this.

{% highlight c# %}



private void gridGroupingControl1_QueryCustomSummary(object sender, GridQueryCustomSummaryEventArgs e)

{

if(e.SummaryDescriptor.SummaryType == SummaryType.Custom) 

{

e.SummaryDescriptor.CreateSummaryMethod = new CreateSummaryDelegate(WeightedSummary.CreateSummaryMethod);

}

e.Handled = true;

}



private GridSummaryColumnDescriptor GetWeightedSummaryColumnDescriptor(string sourceCol, string weightCol)

{

GridSummaryColumnDescriptor wetSumCol = new GridSummaryColumnDescriptor();

wetSumCol.Name = string.Format("{0}_{1}", sourceCol, weightCol); //special name following the convention above

wetSumCol.DataMember = sourceCol; //the column this summary is applied to

wetSumCol.DisplayColumn = sourceCol; //where this summary is displayed

wetSumCol.Format = "{WeightedAverage:#.#}"; //what is displayed in the summary

wetSumCol.SummaryType = SummaryType.Custom; //marks this as a Custom Summary

wetSumCol.Appearance.AnySummaryCell.HorizontalAlignment = GridHorizontalAlignment.Right;

wetSumCol.MaxLength = 6;

return wetSumCol;

}

{% endhighlight  %}

{% highlight vbnet %}



'Custom summary.

Private Sub gridGroupingControl1_QueryCustomSummary(ByVal sender As Object, ByVal e As GridQueryCustomSummaryEventArgs)

If e.SummaryDescriptor.SummaryType = SummaryType.Custom Then

e.SummaryDescriptor.CreateSummaryMethod = New CreateSummaryDelegate(AddressOf WeightedSummary.CreateSummaryMethod)

End If

e.Handled = True

End Sub



Private Function GetWeightedSummaryColumnDescriptor(ByVal sourceCol As String, ByVal weightCol As String) As GridSummaryColumnDescriptor

Dim wetSumCol As GridSummaryColumnDescriptor = New GridSummaryColumnDescriptor

wetSumCol.Name = String.Format("{0}_{1}", sourceCol, weightCol) 'special name following the convention above

wetSumCol.DataMember = sourceCol 'the column this summary is applied to

wetSumCol.DisplayColumn = sourceCol 'where this summary is displayed

wetSumCol.Format = "{WeightedAverage:#.#}" 'what is displayed in the summary

wetSumCol.SummaryType = SummaryType.Custom 'marks this as a Custom Summary

wetSumCol.Appearance.AnySummaryCell.HorizontalAlignment = GridHorizontalAlignment.Right

wetSumCol.MaxLength = 6

Return wetSumCol

End Function

{% endhighlight  %}

