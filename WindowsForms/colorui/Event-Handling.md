---
layout: post
title: Event Handling in Windows Forms ColorUI | Syncfusion®
description: Learn about event handling in the Syncfusion Windows Forms ColorUI control, including the ColorSelected event for closing the popup on color selection.
platform: windowsforms
control: ColorUI
documentation: ug
---
# Event Handling in Windows Forms ColorUI

## ColorSelected Event

This event is raised when a color of a color group is selected. The following example closes the ColorUI displayed in a popup menu when a color is selected.

In the `ColorSelected` event, the following code ensures that the `PopupControlContainer` containing the ColorUI control closes when a color is selected.

{% tabs %}
{% highlight c# %}

private void colorUIControl_ColorSelected(object sender, System.EventArgs e)
{

// Ensures that the PopupControlContainer is closed after the selection of a color.
Syncfusion.Windows.Forms.ColorUIControl cuicontrol = sender as Syncfusion.Windows.Forms.ColorUIControl;
Syncfusion.Windows.Forms.PopupControlContainer pcc = cuicontrol.Parent as  Syncfusion.Windows.Forms.PopupControlContainer;
pcc.HidePopup(Syncfusion.Windows.Forms.PopupCloseType.Done);
}

{% endhighlight %}

{% highlight vb %}

Private Sub colorUIControl_ColorSelected(ByVal sender As Object, ByVal e As System.EventArgs)

    ' Ensures that the PopupControlContainer is closed after the selection of a color.
    Dim cuicontrol As Syncfusion.Windows.Forms.ColorUIControl = CType(IIf(TypeOf sender Is Syncfusion.Windows.Forms.ColorUIControl, sender, Nothing), Syncfusion.Windows.Forms.ColorUIControl)
    Dim pcc As Syncfusion.Windows.Forms.PopupControlContainer = CType(IIf(TypeOf cuicontrol.Parent Is Syncfusion.Windows.Forms.PopupControlContainer, cuicontrol.Parent, Nothing), Syncfusion.Windows.Forms.PopupControlContainer)
    pcc.HidePopup(Syncfusion.Windows.Forms.PopupCloseType.Done)
End Sub

{% endhighlight %}
{% endtabs %}

{% seealso %}

[How to add a ColorUI Control to a Popup Menu?](/windowsforms/colorui/faq/how-to-add-a-colorui-control-to-a-popup-menu)

{% endseealso %}
