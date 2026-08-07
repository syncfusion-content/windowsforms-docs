---
layout: post
title: Events in Windows Forms xptoolbar control | Syncfusion
description: Learn about Events support in Syncfusion Windows Forms DateTimePickerAdv(Classic) control and more details.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# Events in Windows Forms DateTimePickerAdv(Classic)

Following are the events of DateTimePickerAdv control.

* [BeforePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)
* [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)
* [CheckBoxCheckedChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)
* [OnPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)
* [PopupClosed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)
* [StretchDropDownImageChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)
* [ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html)

## PopupClosed Event

The [PopupClosed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html) event is handled when the popup is closed. Using the PopupCloseType member of the PopupClosedEventHandler, we can identify the type of closing.

{% tabs %}

{% highlight C# %}

private void dateTimePickerAdv1_PopupClosed(object sender, PopupClosedEventArgs e)
{            
    //Canceled - User cancels the updates if any.
    //Deactivated - If the user moves the focus to some other window
    //Done - If the user wants the changes to be applied to the control
    Console.WriteLine(e.PopupCloseType.ToString());
}
{% endhighlight %}

{% highlight VB %}

Private Sub dateTimePickerAdv1_PopupClosed(ByVal sender As Object, ByVal e As PopupClosedEventArgs)
    'Canceled - User cancels the updates if any. 
    'Deactivated - If the user moves the focus to some other window 
    'Done - If the user wants the changes to be applied to the control 
    Console.WriteLine(e.PopupCloseType.ToString())
End Sub

{% endhighlight %}

{% endtabs %}
