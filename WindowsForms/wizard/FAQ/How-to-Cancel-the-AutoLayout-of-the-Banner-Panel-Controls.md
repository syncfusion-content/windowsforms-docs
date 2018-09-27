---
layout: post
title: How-to-Cancel-the-AutoLayout-of-the-Banner-panel-controls | WindowsForms | Syncfusion
description: how to cancel the autolayout of the banner panel controls
platform: WindowsForms
control: Wizard
documentation: ug
---

# How to cancel the AutoLayout of the banner panel controls

Wizard Control automatically repositions child controls parts by itself. The AutoLayout of controls in the banner (gradient panel) can be canceled using BannerControlLocationChanging event. You could change the title and description label control to a desired location and handle this event to cancel the auto layout of those controls as follows.

{% tabs %}

{% highlight C# %}



//Handling BannerControlLocationChanging Event

this.wizardControl1.BannerControlLocationChanging += new CancelEventHandler(wizardControl1_BannerControlLocationChanging);

private void wizardControl1_BannerControlLocationChanging(object sender, System.ComponentModel.CancelEventArgs e)

{

e.Cancel = true;

}

{% endhighlight %}

{% highlight VB %}



'Handling BannerControlLocationChanging Event

Private Me.wizardControl1.BannerControlLocationChanging += New CancelEventHandler(wizardControl1_BannerControlLocationChanging)

Private Sub wizardControl1_BannerControlLocationChanging(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs)

    e.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}