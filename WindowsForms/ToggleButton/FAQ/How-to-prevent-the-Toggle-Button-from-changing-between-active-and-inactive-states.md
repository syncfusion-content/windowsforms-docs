---
layout: post
title: How-to-prevent-the-Toggle-Button-from-changing-between-active-and-inactive-states | Windows Forms | Syncfusion
description: how to prevent the toggle button from changing between active and inactive states?
platform: windowsforms
control: HubTile
documentation: ug
---

# How to prevent the Toggle Button from changing between active and inactive states?

You have to subscribe to the ToggleStateChanging event and cancel the change. The following code example explains the same.

{% highlight c# %}



private void toggleButton1_ToggleStateChanging(object sender, CancelEventArgs e)

{

   e.Cancel = true;

}


{% endhighlight %}


{% highlight vbnet %}

Private Sub ToggleButton1_ToggleStateChanging(sender As System.Object, e As System.ComponentModel.CancelEventArgs) Handles ToggleButton1.ToggleStateChanging

            e.Cancel = True

End Sub


{% endhighlight %}


