---
layout: post
title: DateTimePicker Events | WindowsForms | Syncfusion
description: Learn here about how to handle the Windows Forms events of the DateTimePickerAdv control and members.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# DateTimePicker Events

Following are the events of DateTimePickerAdv control.

* [BeforePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~BeforePopup_EV.html)
* [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~BindableValueChanged_EV.html)
* [CheckBoxCheckedChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CheckBoxCheckedChanged_EV.html)
* [OnPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~OnPopup_EV.html)
* [PopupClosed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~PopupClosed_EV.html)
* [StretchDropDownImageChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~StretchDropDownImageChanged_EV.html)
* [ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~ValueChanged_EV.html)

## PopupClosed Event

The [PopupClosed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~PopupClosed_EV.html) event is handled when the popup is closed. Using the PopupCloseType member of the PopupClosedEventHandler, we can identify the type of closing.

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