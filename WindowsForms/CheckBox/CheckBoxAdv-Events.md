---
layout: post
title: CheckBoxAdv Events in Windows Forms CheckBoxAdv | Syncfusion®
description: Learn about the WinForms CheckBoxAdv events, including CheckStateChanged and CheckedChanged, and how to handle them in C# and VB.
platform: windowsforms
control: CheckBoxAdv
documentation: ug
---

# Events in WinForms CheckBox

This section gives a detailed explanation about the [CheckStateChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_CheckStateChanged) and [CheckedChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_CheckedChanged) events in the [WinForms CheckBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control.

<table>
<tr>
<th>
WinForms CheckBox Events</th><th>
Description</th></tr>
<tr>
<td>
CheckStateChanged</td><td>
This event occurs when the CheckState property is changed.</td></tr>
<tr>
<td>
CheckedChanged</td><td>
This event is raised when the Checked property is changed.</td></tr>
</table>

## CheckStateChanged Event

This event is raised when the [CheckState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_CheckState) property of [WinForms CheckBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) is changed and the event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight c# %}

private void checkBoxAdv1_CheckStateChanged(object sender, EventArgs e)
{
    Console.WriteLine(" CheckStateChanged event is raised");
}

{% endhighlight %}

{% highlight vb %}

Private Sub checkBoxAdv1_CheckStateChanged(ByVal sender As Object, ByVal e As EventArgs)
    Console.WriteLine("CheckStateChanged event is raised")
End Sub

{% endhighlight %}
{% endtabs %}

## CheckedChanged Event

This event is raised when the [Checked](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_Checked) property is changed and this property changes automatically when the [CheckState](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html#Syncfusion_Windows_Forms_Tools_CheckBoxAdv_CheckState) property is changed.

{% tabs %}
{% highlight c# %}

private void checkBoxAdv1_CheckedChanged(object sender, EventArgs e)
{
    if (!this.checkBoxAdv1.Checked)
        MessageBox.Show("Checkbox Unchecked");
    else
        MessageBox.Show("Checkbox Checked");
}

{% endhighlight %}

{% highlight vb %}

Private Sub checkBoxAdv1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
    If Not Me.checkBoxAdv1.Checked Then
        MessageBox.Show("Checkbox Unchecked")
    Else
        MessageBox.Show("Checkbox Checked")
    End If
End Sub

{% endhighlight %}
{% endtabs %}
