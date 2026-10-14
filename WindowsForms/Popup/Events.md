---
layout: post
title: Events in Windows Forms Popup | Syncfusion®
description: Popup events provide notifications before showing, after showing, and during popup closing for customization and data handling.
platform: windowsforms
control: PopupControlContainer
documentation: ug
---

# Events in Windows Forms Popup (PopupControlContainer)

PopupControlContainer handles events before and after the Popup is shown.

* [`Popup`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_Popup) : Occurs after the popup has been dropped down and made visible. The event handler receives an argument of type EventArgs. This event can be handled to get focus on the PopupControlContainer.

* [`BeforePopup`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_BeforePopup) : Occurs when the popup is about to be shown. The event handler receives an argument of type CancelEventArgs. The event property associated with the CancelEventArgs is as follows. Cancel - Gets/Sets a value indicating whether the event should be canceled. This event can be handled to resize the PopupControlContainer.

* [`CloseUp`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_CloseUp) : Occurs when the popup is closed. The event handler receives an argument of type PopupClosedEventArgs. The event property associated with the PopupClosedEventArgs is as follows. PopupCloseType - Returns the PopupCloseType value indicating the way in which the popup is closed. This event can be handled to transfer data from the popup to the controls in the Form.

## Popup

This event is handled after the popup is dropped down and made visible. The following is an example of using the Popup event.

### Example Scenario: Mnemonic support

The controls that are placed within the [PopupControlContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html) do not respond to mnemonics. The reason for this behavior is that the main form gets focus immediately after the [PopupControlContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html) is displayed. However, the workaround here would be to set the focus back to the [PopupControlContainer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html) in the PopupControlContainer's Popup event handler, so that the access keys will work fine.

The following code snippet explains how to use the Popup event.

{% tabs %}
{% highlight c# %}

private void popupControlContainer1_Popup(object sender, System.EventArgs e) 
{ 
    this.popupControlContainer1.Focus(); 
}

{% endhighlight %}

{% highlight vb %}

Private Sub popupControlContainer1_Popup(ByVal sender As Object, ByVal e As System.EventArgs)
	Me.popupControlContainer1.Focus()
End Sub

{% endhighlight %}
{% endtabs %}


## BeforePopup 

The [BeforePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_BeforePopup) event occurs before the popup is shown.

### Example Scenario: Resizing the pop-up

Drag and drop the parent control, say RichTextBox and PopupControlContainer onto the form. In the [MouseUp](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.mouseup?redirectedfrom=MSDN&view=netframework-4.7.2) event of RichTextBox, show the popup using the [ShowPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_ShowPopup_System_Drawing_Point_) method.

To make the popup resizable, handle the [BeforePopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_BeforePopup) event of PopupControlContainer and use the following code snippet.

{% tabs %}
{% highlight c# %}

private void popupControlContainer1_BeforePopup(object sender, System.ComponentModel.CancelEventArgs e)
{

// Make the pop-up host's border style re-sizable. 
    this.popupControlContainer1.PopupHost.FormBorderStyle = FormBorderStyle.SizableToolWindow; 
    this.popupControlContainer1.PopupHost.BackColor = this.BackColor;  

// Necessary to set the host's client size every time, especially since the pop-up's Dock style is set to DockStyle.Fill.  
    if(this.popupControlContainer1.PopupHost.Size.Width < 160)    
    this.popupControlContainer1.PopupHost.Size =new Size(160,176); 

// So that the pop-up container will fill the entire pop-up host when resized.  
    this.popupControlContainer1.Dock= System.Windows.Forms.DockStyle.Fill;
}

{% endhighlight %}

{% highlight vb %}

Private Sub popupControlContainer1_BeforePopup(ByVal sender As Object, ByVal e As System.ComponentModel.CancelEventArgs)

' Make the pop-up host's border style re-sizable. 
	Me.popupControlContainer1.PopupHost.FormBorderStyle = FormBorderStyle.SizableToolWindow
	Me.popupControlContainer1.PopupHost.BackColor = Me.BackColor

' Necessary to set the host's client size every time, especially since the pop-up's Dock style is set to DockStyle.Fill.  
	If Me.popupControlContainer1.PopupHost.Size.Width < 160 Then
	Me.popupControlContainer1.PopupHost.Size = New Size(160,176)
	End If

' So that the pop-up container will fill the entire pop-up host when resized.  
	Me.popupControlContainer1.Dock= System.Windows.Forms.DockStyle.Fill
End Sub

{% endhighlight %}
{% endtabs %}


## CloseUp 

The [CloseUp](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_CloseUp) event occurs while closing the popup. Data from the popup can be assigned to a control in the Form.

The following code snippet explains how to use the CloseUp event.

{% tabs %}
{% highlight c# %}

private void popupControlContainer1_CloseUp(object sender, Syncfusion.Windows.Forms.PopupClosedEventArgs e)
{
	if(e.PopupCloseType == Syncfusion.Windows.Forms.PopupCloseType.Done)
	{
		this.richTextBox1.Text = this.textBox1.Text;
	}

    // Set focus back to textbox.
	if(e.PopupCloseType == Syncfusion.Windows.Forms.PopupCloseType.Done || e.PopupCloseType == Syncfusion.Windows.Forms.PopupCloseType.Canceled)
	{
		this.richTextBox1.Focus();
	}
}

{% endhighlight %}

{% highlight vb %}

Private Sub popupControlContainer1_CloseUp(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.PopupClosedEventArgs)
	If e.PopupCloseType = Syncfusion.Windows.Forms.PopupCloseType.Done Then
		Me.richTextBox1.Text = Me.textBox1.Text
	End If

' Set focus back to textbox.
	If e.PopupCloseType = Syncfusion.Windows.Forms.PopupCloseType.Done OrElse e.PopupCloseType = Syncfusion.Windows.Forms.PopupCloseType.Canceled Then
		Me.richTextBox1.Focus()
	End If
End Sub

{% endhighlight %}
{% endtabs %}

