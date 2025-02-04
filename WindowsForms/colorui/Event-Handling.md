---
layout: post
title: Event Handling in Windows Forms ColorUI control | Syncfusion®
description: Learn about Event Handling support in Syncfusion® Windows Forms ColorUI control, its elements and more details.
platform: windowsforms
control: ColorUI
documentation: ug
---
# Event Handling in Windows Forms ColorUI

## ColorSelected Event

This event is handled when a color of a Color Group is selected. The below example closes the ColorUI displayed in a Popup Menu using this event.

In the ColorSelected event, the following coding ensures that the popupControlContainer containing the ColorUI Control closes a color is selected.

{% tabs %}
{% highlight c# %}

private void colorUIControl_ColorSelected(object sender, System.EventArgs e)
{

// Ensures that the PopupControlContainer is closed after the selection of a color.
Syncfusion.Windows.Forms.ColorUIControl cuicontrol = sender as Syncfusion.Windows.Forms.ColorUIControl;
Syncfusion.Windows.Forms.PopupControlContainer pcc = cuicontrol.Parent as  Syncfusion.Windows.Forms.PopupControlContainer;
pcc.HidePopup(Syncfusion.Windows.Forms.PopupCloseType.Done);
}

{% endhighlight  %}

{% highlight vb %}

Private Sub colorUIControl_ColorSelected(ByVal sender As Object, ByVal e As System.EventArgs)

' Ensures that the PopupControlContainer is closed after the selection of a color.
Private cuicontrol As Syncfusion.Windows.Forms.ColorUIControl = CType(IIf(TypeOf sender Is Syncfusion.Windows.Forms.ColorUIControl, sender, Nothing), Syncfusion.Windows.Forms.ColorUIControl)
Private pcc As Syncfusion.Windows.Forms.PopupControlContainer = CType(IIf(TypeOf cuicontrol.Parent Is Syncfusion.Windows.Forms.PopupControlContainer, cuicontrol.Parent, Nothing), Syncfusion.Windows.Forms.PopupControlContainer)
pcc.HidePopup(Syncfusion.Windows.Forms.PopupCloseType.Done)
End Sub

{% endhighlight  %}
{% endtabs %}

{% seealso %}

[ How to add a ColorUI Control to a Popup Menu?](/windowsforms/colorui/faq/how-to-add-a-colorui-control-to-a-popup-menu)

{% endseealso %}
