---
layout: post
title: Folder browser flags in Windows Forms FolderBrowser | Syncfusion®
description: Learn about What are folderbrowser flags support in Syncfusion® Windows Forms FolderBrowser control and more details.
platform: windowsforms
control: FolderBrowser
documentation: ug
---

# Flags in WinForms Folder Browser

This page explains the `FolderBrowserStyles` flags available in the WinForms Folder Browser.

## What are Flags in WinForms Folder Browser

Flags can be used to set various styles for the WinForms Folder Browser dialog. Each style has its own behavior, and these styles can be added or removed to get the desired appearance for the dialog.

The snippets below show how to add the `RestrictToSubfolders` style and remove the `ShowTextBox` style from the WinForms Folder Browser dialog.

{% tabs %}
{% highlight C# %}
// Remove the RestrictToSubfolders style.
this.folderBrowser1.Style &= ~FolderBrowserStyles.RestrictToSubfolders;

// Add the ShowTextBox style.
this.folderBrowser1.Style |= FolderBrowserStyles.ShowTextBox;
{% endhighlight %}
{% highlight VB %}
' Remove the RestrictToSubfolders style.
Me.folderBrowser1.Style = Me.folderBrowser1.Style And Not FolderBrowserStyles.RestrictToSubfolders

' Add the ShowTextBox style.
Me.folderBrowser1.Style = Me.folderBrowser1.Style Or FolderBrowserStyles.ShowTextBox
{% endhighlight %}
{% endtabs %}

For a list of all available flags, see the [Style Settings](style-settings) page.
