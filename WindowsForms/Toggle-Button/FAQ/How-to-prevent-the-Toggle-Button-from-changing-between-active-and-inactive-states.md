---
layout: post
title: How to Prevent Toggle Button State Change | Syncfusion®
description: Learn how to prevent Toggle Button state change between active and inactive states in Syncfusion Windows Forms Toggle Button control.
platform: windowsforms
control: ToggleButton
documentation: ug
---

# How to Prevent Toggle Button State Change

You have to subscribe to the ToggleStateChanging event and cancel the change. The following code example explains the same.

{% tabs %}
{% highlight c# %}

private void toggleButton1_ToggleStateChanging(object sender, CancelEventArgs e)
{
   e.Cancel = true;
}

{% endhighlight %}

{% highlight vb %}

Private Sub ToggleButton1_ToggleStateChanging(sender As System.Object, e As System.ComponentModel.CancelEventArgs) Handles ToggleButton1.ToggleStateChanging
e.Cancel = True
End Sub

{% endhighlight %}
{% endtabs %}
