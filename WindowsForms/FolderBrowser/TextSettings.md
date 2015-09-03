---
layout: post
title: Text Settings
description: text settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Text Settings

The text settings of the FolderBrowser control are described below.

The text for the FolderBrowser can be set using the below given property.

Table 251: Property Table

<table>
<tr>
<th>
FolderBrowser Property</th><th>
Description</th></tr>
<tr>
<td>
Description</td><td>
Gets / sets the text displayed above the tree control in the FolderBrowser Dialog.</td></tr>
</table>
The Description property of the FolderBrowser supports the 'AutoComplete' feature that provides options that can be used to complete text even before it is entered.

{%highlight c#%}



this.folderBrowser1.Description = "Recent Documents";

{%endhighlight%}

{%highlight vbnet%}



Me.folderBrowser1.Description = "Recent Documents"

{%endhighlight%}

![](Overview_images/Overview_img412.jpeg) 