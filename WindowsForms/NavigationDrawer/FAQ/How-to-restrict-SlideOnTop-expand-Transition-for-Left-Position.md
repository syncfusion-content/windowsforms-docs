---
layout: post
title: How-to-restrict-SlideOnTop-expand-Transition-for-Left-Position | WindowsForms | Syncfusion
description: how-to-restrict-slideontop-expand-transition-for-left-position?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to restrict SlideOnTop expand Transition for Left Position?

This requirement can be achieved by handling the Opening event.

**Opening** **Event**

This Event occurs before expand Transition initializes. 

Following code example demonstrates the same. 

{% tabs %}

{% highlight c# %}

//Disables the SlideOnTop on Left position when Transition begins.

public void navigationDrawer1_Opening(object sender, OpeningEventArgs e)

{        

if (this.navigationDrawer1.Transition == Transition.SlideOnTop && this.navigationDrawer1.Position == SlidePosition.Left)

{

e.Cancel = false;

}

}

{% endhighlight %}

{% highlight vb %}

'Disables the SlideOnTop on Left position when Transition begins.

Public Sub navigationDrawer1_Opening(sender As Object, e As OpeningEventArgs)

If Me.navigationDrawer1.Transition = Transition.SlideOnTop AndAlso Me.navigationDrawer1.Position = SlidePosition.Left Then

e.Cancel = False

End If

End Sub

{% endhighlight %}

{% endtabs %}

