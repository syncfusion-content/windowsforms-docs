---
layout: post
title: Create a Transparent Pop-up | Windows Forms | Syncfusion
description: Learn here all about how to Create a Transparent Pop-up of Syncfusion Windows Forms PopupControlContainer and more.
platform: WindowsForms
control: PopupControlContainer
documentation: ug
---

# How to Create a Transparent Pop-up in Windows Forms 

Transparent Pop-up is nothing but the visual appearance set based on the user requirements. This can be explain in the below code snippet,

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

' Get the popupHost which is used to host the popupControlContainer

' and set the opacity.
	Me.popupControlContainer1.PopupHost.Opacity = 0.75
End Sub

{% endhighlight %}
{% endtabs %}


![FAQ](FAQ_Images/Transparent.png)
