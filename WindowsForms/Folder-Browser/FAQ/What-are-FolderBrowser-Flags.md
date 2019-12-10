---
layout: post
title: What are FolderBrowser Flags | WindowsForms | Syncfusion
description: what are folderbrowser flags
platform: WindowsForms
control: Tools
documentation: ug
---

# What are FolderBrowser flags?

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