---
layout: post
title: How to Handle Popup Close Behavior in Windows Forms Popup
description: Handle popup close behavior in Syncfusion® Windows Forms PopupControlContainer control using events, Boolean flags, and more.
platform: windowsforms
control: PopupControlContainer
documentation: ug
---

# How to Handle Popup Close Behavior in Windows Forms Popup

In order to work around this behavior, you can set a Boolean flag and cancel the [`BeforeCloseUp`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PopupControlContainer.html#Syncfusion_Windows_Forms_PopupControlContainer_BeforeCloseUp) event as shown below.

{% tabs %}
{% highlight c# %}

private bool bool1;
private void PopupContainer_Popup(object sender, EventArgs e)
{
     bool1= true;
}
private void PopupContainer_BeforeCloseUp(object sender, CancelEventArgs e)
{
    if(bool1)
    {
        e.Cancel = true;
    }
}
private void comboDropDown1_LostFocus(object sender, EventArgs e)
{
    bool1= false;
}
private void Form1_Click(object sender, EventArgs e)
{
    bool1= false;
}

{% endhighlight %}

{% highlight vb %}

Private bool1 As Boolean
Private Sub PopupContainer_Popup(ByVal sender As Object, ByVal e As EventArgs)
	 bool1= True
End Sub
Private Sub PopupContainer_BeforeCloseUp(ByVal sender As Object, ByVal e As CancelEventArgs)
	If bool1 Then
		e.Cancel = True
	End If
End Sub
Private Sub comboDropDown1_LostFocus(ByVal sender As Object, ByVal e As EventArgs)
	bool1= False
End Sub
Private Sub Form1_Click(ByVal sender As Object, ByVal e As EventArgs)
	bool1= False
End Sub

{% endhighlight %}
{% endtabs %}


You can set the Boolean value to be `false` under the Form’s [`Click`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.click?view=netframework-4.7.2) event and Control’s [`LostFocus`](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.lostfocus?view=netframework-4.7.2) event so that the DropDown closes for rest of the cases.
