---
layout: post
title: PopupClosed Event
description: popupclosed event
platform: windowsforms
control: Calendar
documentation: ug
---
# PopupClosed Event

This event is handled when the popup is closed. Using the PopupCloseType member of the PopupClosedEventHandler, we can identify the type of closing.



{% highlight c#  %}

private void dateTimePickerAdv1_PopupClosed(object sender, PopupClosedEventArgs e)

{            

    //Canceled - User cancels the updates if any.

    //Deactivated - If the user moves the focus to some other window

    //Done - If the user wants the changes to be applied to the control

    Console.WriteLine(e.PopupCloseType.ToString());

}





{% endhighlight   %}
{% highlight vbnet  %}

Private Sub dateTimePickerAdv1_PopupClosed(ByVal sender As Object, ByVal e As PopupClosedEventArgs)

    'Canceled - User cancels the updates if any. 

    'Deactivated - If the user moves the focus to some other window 

    'Done - If the user wants the changes to be applied to the control 

    Console.WriteLine(e.PopupCloseType.ToString())

End Sub
{% endhighlight   %}
