---
layout: post
title: How-to-apply-text-color-for-RichText-celltype-in-G
description: how to apply text color for richtext celltype in gridgroupingcontrol
platform: WindowsForms
control: How To
documentation: ug
---

# How to apply text color for RichText celltype in GridGroupingControl

You can use QueryCellStyleInfo event to provide styles for the cells in GridGroupingControl. This provides GridStyleInfo object for a cell on demand. QueryCellStyleInfo is triggered every time a request is made to access style information for a cell. You can do any type of cell formatting with this event. You can apply style settings for a given CellType using TableCellIdentity.TableCellType property on the instances of GridTableCellStyleInfoEventArgs.

The following code example illustrates how to apply styles to RichText CellType in the grouping grid:

{% highlight c# %}

//Hooks up the event.

this.gridGroupingControl1.QueryCellStyleInfo += newGridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);



//QueryCellStyleInfo event: Formats Cell by Cell Basis on demand.

private void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)

{

e.Style.ReadOnly = true;

if (e.TableCellIdentity.Column != null && e.TableCellIdentity.Column.Name == "Values" && e.TableCellIdentity.DisplayElement.Kind == Syncfusion.Grouping.DisplayElementKind.Record)

{

e.Style.CellType = GridCellTypeName.RichText;

e.Style.TextColor = Color.Purple;

}

}

{% endhighlight %}

{% highlight vbnet %}

'Hooks up the event.

AddHandler GridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo



'QueryCellStyleInfo event: Formats Cell by Cell Basis on demand.

    Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

        e.Style.ReadOnly = True

        If e.TableCellIdentity.Column IsNot Nothing AndAlso e.TableCellIdentity.Column.Name = "Values" AndAlso e.TableCellIdentity.DisplayElement.Kind = Syncfusion.Grouping.DisplayElementKind.Record Then

            e.Style.CellType = GridCellTypeName.RichText

            e.Style.TextColor = Color.Purple

        End If

    End Sub


{% endhighlight %}
