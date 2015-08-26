---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---

# Frequently Asked Questions

This section will help you become more familiar in using the FolderBrowser control.

## What are FolderBrowser Flags?

Flags can be used to set various styles for the FolderBrowser Dialog. Each style has it's own behavior and these styles can be added or removed to get the desired style for the FolderBrowser Dialog.

Look at the below given snippet to apply "RestrictToSubfolders" style and to remove the "ShowTextBox" style for the FolderBrowser Dialog.

{%highlight c#%}



this.folderBrowser1.Style &= ~FolderBrowserStyles.RestrictToSubfolders;

this.folderBrowser1.Style |= FolderBrowserStyles.ShowTextBox;



{%endhighlight%}

{%highlight vbnet%}

Me.folderBrowser1.Style = Me.folderBrowser1.Style And Not FolderBrowserStyles.RestrictToSubfolders

Me.folderBrowser1.Style = Me.folderBrowser1.Style Or FolderBrowserStyles.ShowTextBox

{%endhighlight%}