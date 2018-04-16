---
layout: post
title: How to create a transparent popup | WindowsForms | Syncfusion
description: How to create a transparent popup
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Create a Transparent Pop-up

This can be done using the below code snippet.

{% tabs %}
{% highlight C# %}

private void popupControlContainer1_BeforePopup(object sender, System.ComponentModel.CancelEventArgs e)
{

// Get the popupHost which is used to host the popupControlContainer

// and set the opacity.
    this.popupControlContainer1.PopupHost.Opacity = 0.75;
}

{% endhighlight %}

{% highlight vb %}

Private Sub popupControlContainer1_BeforePopup(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs)

'Get the popupHost which is used to host the popupControlContainer

'and set the opacity.
Me.popupControlContainer1.PopupHost.Opacity = 0.75
End Sub

{% endhighlight %}
{% endtabs %}
