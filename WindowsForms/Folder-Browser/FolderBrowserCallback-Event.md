---
layout: post
title: Folderbrowser Callback Event in WinForms Folder Browser | Syncfusion®
description: Learn about Folderbrowser Callback Event support in Syncfusion® Windows Forms Folder Browser control and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Folder browser Callback Event in Windows Forms Folder Browser

The [FolderBrowserCallback event](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.FolderBrowser.html) occurs when an event within the folder browser dialog triggers a call to the validation callback. The event handler receives an argument of type [FolderBrowserCallbackEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.FolderBrowserCallbackEventArgs.html).

The following [FolderBrowserCallbackEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.FolderBrowserCallbackEventArgs.html) members provide information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Dismiss</td><td>
Specifies whether the dialog is either dismissed or retained depending upon this value.</td></tr>
<tr>
<td>
FolderBrowserCallbackSetState</td><td>
Gets/sets the Folder Browser dialog's state.</td></tr>
<tr>
<td>
BrowseCallbackText</td><td>
Gets/sets the contextual string based upon the FolderBrowserCallbackSetState property.</td></tr>
<tr>
<td>
FolderBrowserMessage</td><td>
Returns a value indention the event.</td></tr>
<tr>
<td>
Path</td><td>
Returns valid or invalid folder name.</td></tr>
<tr>
<td>
Window</td><td>
Returns window handle of browser dialog box.</td></tr>
</table>


It can be handled when browser validation is required.

This handler is functionally equivalent to the Win32 BrowseCallbackProc callback function.

{% tabs %}

{% highlight C# %}



private void folderBrowser1_BrowseCallback(object sender, Syncfusion.Windows.Forms.FolderBrowserCallbackEventArgs e)

{

// We can log the events and Folder Browser Message to the Label control.

this.label1.Text = String.Format("Event: {0}, Path: {1}", e.FolderBrowserMessage, e.Path);

if (e.FolderBrowserMessage == FolderBrowserMessage.ValidateFailed)

{

e.Dismiss = e.Path != "NONE";

}

}



{% endhighlight %}

{% highlight VB %}

Private Sub folderBrowser1_BrowseCallback(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.FolderBrowserCallbackEventArgs)

' We can log the events and Folder Browser Message to the Label control.

Me.label1.Text = String.Format("Event: {0}, Path: {1}", e.FolderBrowserMessage, e.Path)

If e.FolderBrowserMessage = FolderBrowserMessage.ValidateFailed Then

e.Dismiss = e.Path &lt;&gt; "NONE"

End If

End Sub

{% endhighlight %}

{% endtabs %}
