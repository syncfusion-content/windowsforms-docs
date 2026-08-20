---
layout: post
title: Record Collapsing Event in WinForms GridGroupingControl | Syncfusion®
description: The events triggered when records are collapsing or collapsed in Syncfusion® WinForms GridGroupingControl, its record state changes, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# Event Trigger in RecordCollapsing in WinForms GridGroupingControl

When the records are collapsing or collapsed, the following events are fired.

{% tabs %}
{% highlight c# %}

//The RecordCollapsed event gets fired after the record is collapsed.
private void gridGroupingControl1_RecordCollapsed(object sender, Syncfusion.Grouping.RecordEventArgs e)
{
    Console.WriteLine("collapsed"+ e.Record.Info);
}

//The RecordCollapsing event gets fired when the record is collapsing.
private void gridGroupingControl1_RecordCollapsing(object sender, Syncfusion.Grouping.RecordEventArgs e)
{
    Console.WriteLine("collapsing"+ e.Record.Info);
}

{% endhighlight %}

{% highlight vb %}

'The RecordCollapsed event gets fired after the record is collapsed.
Private Sub gridGroupingControl1_RecordCollapsed(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordCollapsed
    Console.WriteLine("Collapsed" + e.Record.Info)
End Sub

'The RecordCollapsing event gets fired when the record is collapsing.
Private Sub gridGroupingControl1_RecordCollapsing(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordCollapsing
    Console.WriteLine("Collapsing" + e.Record.Info)
End Sub

{% endhighlight %}
{% endtabs %}

N> This applies only when nested tables are used.

