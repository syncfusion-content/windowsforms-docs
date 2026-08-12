---
layout: post
title: Prevent Toggle Button state change in Windows Forms | Syncfusion®
description: Learn how to prevent the Toggle Button from changing between active and inactive states in Syncfusion Windows Forms by canceling ToggleStateChanging.
platform: windowsforms
control: ToggleButton
documentation: ug
---

# Prevent Toggle Button state change in Windows Forms

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
