---
layout: post
title: Folder browser flags in Windows Forms FolderBrowser | Syncfusion®
description: Learn about What are folderbrowser flags support in Syncfusion® Windows Forms FolderBrowser control and more details.
platform: windowsforms
control: Tools
documentation: ug
---

# Flags in WinForms Folder Browser

This page explains about What are Flags in WinForms Folder Browser and more details.

## What are Flags in WinForms Folder Browser

Flags can be used to set various styles for the WinForms Folder Browser Dialog. Each style has it's own behavior and these styles can be added or removed to get the desired style for the WinForms Folder Browser Dialog.

Look at the below given snippet to apply "RestrictToSubfolders" style and to remove the "ShowTextBox" style for the WinForms Folder Browser Dialog.

{% tabs %}

{% highlight C# %}



this.folderBrowser1.Style &= ~FolderBrowserStyles.RestrictToSubfolders;

this.folderBrowser1.Style |= FolderBrowserStyles.ShowTextBox;



{% endhighlight %}

{% highlight VB %}

Me.folderBrowser1.Style = Me.folderBrowser1.Style And Not FolderBrowserStyles.RestrictToSubfolders

Me.folderBrowser1.Style = Me.folderBrowser1.Style Or FolderBrowserStyles.ShowTextBox

{% endhighlight %}

{% endtabs %}
