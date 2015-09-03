---
layout: post
title: How-to-cancel-a-context-menu
description: how to cancel a context menu
platform: windowsforms
control: Orientation
documentation: ug
---

# How to cancel a context menu

We can cancel the context menu from being shown by handling the ParentBarItem.BeforePopup menu.

{% highlight c# %}



this.parentBarItem1.BeforePopup += new CancelEventHandler(PopupMenu_BeforePopup);



private void PopupMenu_BeforePopup(object sender, CancelEventArgs arg)

{

// Check for a condition and cancel if necessary

arg.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub PopupMenu_BeforePopup(ByVal sender As Object, ByVal arg As CancelEventArgs)

    ' Check for a condition and cancel if necessary 

    arg.Cancel = True

End Sub

{% endhighlight %}

{% seealso %}

Events of ParentBarItem

{% endseealso %}