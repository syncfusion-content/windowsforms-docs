---
layout: post
title: What-are-the-events-fired-when-the-record-values-a
description: what are the events fired when the record values are changed
platform: WindowsForms
control: How To
documentation: ug
---

# What are the events fired when the record values are changed

When the record values are changed, the following events are fired.

{% highlight c# %}



//The RecordValueChanged event gets fired after the record's value is changed.

private void gridGroupingControl1_RecordValueChanged(object sender,Syncfusion.Grouping.RecordValueChangedEventArgs e)

{

Console.WriteLine("Changed "+e.Record.Info);

}



//The RecordValueChanging event gets fired while the record's value is changing.

private void gridGroupingControl1_RecordValueChanging(object sender,Syncfusion.Grouping.RecordValueChangingEventArgs e)

{

Console.WriteLine("Changing "+e.Record.Info);

}

{% endhighlight %}

{% highlight vbnet %}



'The RecordValueChanged event gets fired after the record's value is changed.

Private Sub gridGroupingControl1_RecordValueChanged(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordValueChangedEventArgs) Handles gridGroupingControl1.RecordValueChanged

    Console.WriteLine("Changed " + e.Record.Info)

End Sub



'The RecordValueChanging event gets fired while the record's value is changing.

Private Sub gridGroupingControl1_RecordValueChanging(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordValueChangingEventArgs) Handles gridGroupingControl1.RecordValueChanging

    Console.WriteLine("Changing " + e.Record.Info)

End Sub


{% endhighlight %}
