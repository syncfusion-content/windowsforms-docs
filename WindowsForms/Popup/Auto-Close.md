---
layout: post
title: Auto Close  in Windows Forms Popup control | Syncfusion®
description: Learn about Auto Close  support in Syncfusion® Windows Forms Popup (PopupControlContainer) control and more details.
platform: windowsforms
control: PopupControlContainer
documentation: ug
---

# Auto Close  in Windows Forms Popup (PopupControlContainer)

The auto close option allows to close the pop-up container, when user clicks anywhere outside the control. To control this default behavior, i.e, to display the popup even if there are any mouse actions, set [`IgnoreMouseMessages`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_IgnoreMouseMessages) property to `true`.

The Popup of a RichTextBox, on a button click should be closed only when the textbox is not empty. For this purpose, the popup should not be closed on any mouse action. 

{% tabs %}
{% highlight C# %}

this.popupControlContainer2.IgnoreMouseMessages = true;
private void RichTextBox1_Click1(object sender, EventArgs e)
{
    this.popupControlContainer2.ShowPopup(new Point(700,600));
    if (this.richTextBox1.Text != "")
    {
        this.popupControlContainer2.HidePopup(Syncfusion.Windows.Forms.PopupCloseType.Done);
    }
}

{% endhighlight %}

{% highlight vb %}

Me.popupControlContainer2.IgnoreMouseMessages = True
private void RichTextBox1_Click1(Object sender, EventArgs e)
	Me.popupControlContainer2.ShowPopup(New Point(700,600))
	If Me.richTextBox1.Text <> "" Then
		Me.popupControlContainer2.HidePopup(Syncfusion.Windows.Forms.PopupCloseType.Done)
	End If

{% endhighlight %}
{% endtabs %}

We can hide the popup using [`HidePopup`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_HidePopup_Syncfusion_Windows_Forms_PopupCloseType_) method in [`PopupCloseType`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupCloseType.html) mode. Following are the states available:

* Done
* Canceled
* Deactivated

**Done** : To hide the popup with the changes applied to the control, we need to set [`PopupCloseType`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupCloseType.html) as `Done`.

**Canceled** : To cancel the changes, [`PopupCloseType`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupCloseType.html) should be set to `Canceled`. 

**Deactivated** : Setting [`PopupCloseType`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupCloseType.html) to `Deactivated` will deactivate the popup when the user clicks in different application.


