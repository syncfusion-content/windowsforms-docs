---
layout: post
title: How-to-Change-the-Format-of-Summary-Cell-in-Group- | Windows Forms | Syncfusion
description: how to change the format of summary cell in group caption
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Change the Format of Summary Cell in Group Caption

To change summary cell’s format, TableControlDrawCellDisplayText event is handled. Using DisplayText property the desired format can be applied to the summary cell.

{% tabs %}
{% highlight c# %}

//In form load...
this.gridGroupingControl1.TableControlDrawCellDisplayText += new GridTableControlDrawCellDisplayTextEventHandler(gridGroupingControl1_TableControlDrawCellDisplayText);
void gridGroupingControl1_TableControlDrawCellDisplayText(object sender, GridTableControlDrawCellDisplayTextEventArgs e)
{
    GridTableCellStyleInfo style = e.Inner.Style as GridTableCellStyleInfo;
    if (style.TableCellIdentity.TableCellType ==         GridTableCellType.GroupCaptionSummaryCell)
    {
        double value;
        if (double.TryParse(e.Inner.DisplayText, out value))
        e.Inner.DisplayText = value.ToString("#,#.00");
    }
}

//Code...

{% endhighlight  %}

{% highlight vb %}

'In form load...
AddHandler gridGroupingControl1.TableControlDrawCellDisplayText, AddressOf gridGroupingControl1_TableControlDrawCellDisplayText
End Sub
Private Sub gridGroupingControl1_TableControlDrawCellDisplayText(ByVal sender As Object, ByVal e As GridTableControlDrawCellDisplayTextEventArgs)
Dim style As GridTableCellStyleInfo = TryCast(e.Inner.Style, GridTableCellStyleInfo)
If style.TableCellIdentity.TableCellType = GridTableCellType.GroupCaptionSummaryCell Then
value As Double
If Double.TryParse(e.Inner.DisplayText, value) Then
e.Inner.DisplayText = value.ToString("#,#.00")
End If
End If

'Code

{% endhighlight  %}
{% endtabs %}
