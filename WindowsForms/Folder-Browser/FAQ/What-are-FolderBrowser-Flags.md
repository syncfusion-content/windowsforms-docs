---
layout: post
title: Folderbrowser flags in Windows Forms Folder Browser | Syncfusion
description: Learn about What are folderbrowser flags support in Syncfusion Windows Forms Folder Browser control and more details.
platform: WindowsForms
control: Tools
documentation: ug
---

# What are folderbrowser flags in Windows Forms Folder Browser

Flags can be used to set various styles for the FolderBrowser Dialog. Each style has it's own behavior and these styles can be added or removed to get the desired style for the FolderBrowser Dialog.

Look at the below given snippet to apply "RestrictToSubfolders" style and to remove the "ShowTextBox" style for the FolderBrowser Dialog.

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
