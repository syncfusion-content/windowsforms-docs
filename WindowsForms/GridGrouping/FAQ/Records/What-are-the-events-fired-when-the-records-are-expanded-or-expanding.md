---
layout: post
title: Record Expanding Event in WinForms GridGroupingControl | Syncfusion®
description: The events triggered when records are expanding or expanded in Syncfusion® WinForms GridGroupingControl, its record state changes, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# Event Trigger in Record Expanding in WinForms GridGroupingControl

When the records are expanding or expanded, the following events are fired.

{% tabs %}
{% highlight c# %}

//The RecordExpanded event gets fired after the record is expanded.
private void gridGroupingControl1_RecordExpanded(object sender, Syncfusion.Grouping.RecordEventArgs e)
{
    Console.WriteLine("Expanded"+ e.Record.Info);
}

//The RecordExpanding event gets fired when the record is expanding.
private void gridGroupingControl1_RecordExpanding(object sender, Syncfusion.Grouping.RecordEventArgs e)
{
    Console.WriteLine("Expanding"+ e.Record.Info);
}

{% endhighlight %}

{% highlight vb %}

'The RecordExpanded event gets fired after the record is expanded.
Private Sub gridGroupingControl1_RecordExpanded(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordExpanded
    Console.WriteLine("Expanded" + e.Record.Info)
End Sub

'The RecordExpanding event gets fired when the record is expanding.
Private Sub gridGroupingControl1_RecordExpanding(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordExpanding
    Console.WriteLine("Expanding" + e.Record.Info)
End Sub

{% endhighlight %}
{% endtabs %}

N> This applies only when nested tables are used.

