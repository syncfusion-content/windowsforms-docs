---
layout: post
title: How-to-restrict-SlideOnTop-collapse-Transition-for-Left-Position | WindowsForms | Syncfusion
description: how-to-restrict-slideontop-collapse-transition-for-left-position?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to restrict SlideOnTop collapse Transition for Left Position?

This requirement can be achieved by handling the Closing Event.

**Closing** **Event**

This Event occurs before DrawerPanel Collapsing initialized.

Following code example demonstrates the same. 

{% tabs %}

{% highlight c# %}

//Disables the SlideOnTop in Left when Transition Collapses begins

void navigationDrawer1_Closing(object sender, CancelEventArgs e)

{

if (this.navigationDrawer1.Transition == Transition.SlideOnTop && this.navigationDrawer1.Position == SlidePosition.Left)

{

e.Cancel = true;

}

}
{% endhighlight %}

{% highlight vb %}

'Disables the SlideOnTop in Left when Transition Collapses begins

Private Sub navigationDrawer1_Closing(sender As Object, e As CancelEventArgs)

If Me.navigationDrawer1.Transition = Transition.SlideOnTop AndAlso Me.navigationDrawer1.Position = SlidePosition.Left Then

e.Cancel = True

End If

End Sub

{% endhighlight %}

{% endtabs %}

