---
layout: post
title: Hold the Row Selection After the Cell is Deactivated | Syncfusion
description: Learn here all about how to hold the row selection after the cell is deactivated in Syncfusion Windows Forms gridcontrol control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Hold the Row Selection After the Cell is Deactivated

Essential Grid enables you to hold the selection after the cell is deactivated. To hold the selection, cancel SelectionChanging event, when e.Reason is MouseDown or Clear. 

The following code holds the selection even after the cell is deactivated:



{% tabs %}
{% highlight c# %}

void Model_SelectionChanging(object sender, GridSelectionChangingEventArgs e)
{
    if (e.Reason == GridSelectionReason.MouseDown || e.Reason == GridSelectionReason.Clear)
        e.Cancel = true;
}

{% endhighlight %}

{% highlight vb %}

Private Sub Model_SelectionChanging(ByVal sender As Object, ByVal e As GridSelectionChangingEventArgs)
            If e.Reason = GridSelectionReason.MouseDown OrElse e.Reason = GridSelectionReason.Clear Then
                e.Cancel = True
            End If
        End Sub
{% endhighlight %}
{% endtabs %}


