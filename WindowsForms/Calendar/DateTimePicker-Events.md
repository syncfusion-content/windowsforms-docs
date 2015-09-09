---
layout: post
title: DateTimePicker Events
description: datetimepicker events
platform: WindowsForms
control: Calendar 
documentation: ug
---
# DateTimePicker Events

Following are the events of DateTimePickerAdv control.

_Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
BeforePopup</td><td>
Handled just before the popup is displayed.</td></tr>
<tr>
<td>
BindableValueChanged</td><td>
Handled when the BindingValue property is changed.</td></tr>
<tr>
<td>
CheckBoxCheckedChanged</td><td>
Handled when the checked state of the Checkbox changes.</td></tr>
<tr>
<td>
OnPopup</td><td>
Handled when the popup is displayed.</td></tr>
<tr>
<td>
PopupClosed</td><td>
Handled when the popup is closed. It uses PopupClosedEventHandler.</td></tr>
<tr>
<td>
StretchDropDownImageChanged</td><td>
Handled when the StretchDropDownImage property changes.</td></tr>
<tr>
<td>
ValueChanged</td><td>
Event is handled when the Value property changes.</td></tr>
</table>

## PopupClosed Event

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