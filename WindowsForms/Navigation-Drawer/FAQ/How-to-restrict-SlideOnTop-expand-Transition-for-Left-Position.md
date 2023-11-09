---
layout: post
title: Restrict transition for left position | WindowsForms | Syncfusion
description: how to restrict slideontop expand transition for left position?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to restrict SlideOnTop expand transition for left position?

This requirement can be achieved by handling the Opening event.

**Opening Event**

This [Opening](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_Opening) event occurs before expand Transition initializes.

{% tabs %}

{% highlight C# %}

//Disables the SlideOnTop on Left position when Transition begins.

public void navigationDrawer1_Opening(object sender, OpeningEventArgs e)

{        

if (this.navigationDrawer1.Transition == Transition.SlideOnTop && this.navigationDrawer1.Position == SlidePosition.Left)

{

e.Cancel = false;

}

}

{% endhighlight %}

{% highlight VB %}

'Disables the SlideOnTop on Left position when Transition begins.

Public Sub navigationDrawer1_Opening(sender As Object, e As OpeningEventArgs)

If Me.navigationDrawer1.Transition = Transition.SlideOnTop AndAlso Me.navigationDrawer1.Position = SlidePosition.Left Then

e.Cancel = False

End If

End Sub

{% endhighlight %}

{% endtabs %}

