---
layout: post
title: Style Settings
description: style settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Style Settings

The style settings that are available for the FolderBrowser Dialog are given below.

Table 250 : Property Table

<table>
<tr>
<th>
FolderBrowser Property</th><th>
Description</th></tr>
<tr>
<td>
Style</td><td>
Specifies the options for the FolderBrowser Dialog.The options included are as follows.
RestrictToFilesystem,
RestrictToSubfolders,
RestrictToDomain,
BrowseForComputer,
BrowseForEverything,
BrowseForPrinter,
NewDialogStyle,
AllowUrls,
ShowAdministrativeShares,
ShowShares,
ShowTextBox,
StatusText,
UAHint and
Validate.</td></tr>
</table>


The various options of the Style property are described below.

* RestrictToFilesystem - Restricts selection to file system directories.
* RestrictToSubfolders - Returns only file system ancestors.
* RestrictToDomain - Excludes network folders below the domain level.
* BrowseForComputer - Displays only computers.
* BrowseForEverything - Displays files as well as folders.
* BrowseForPrinter - Displays only printers.
* NewDialogStyle - Uses the new resizable folder selection dialog.
* AllowUrls - Displays URLs. 'NewDialogStyle' and 'BrowseForEverything' must be set along with this flag.
* ShowAdministrativeShares - Displays administrative shares existing on the remote system.
* ShowShares - Displays shareable resources existing on the remote system.
* ShowTextBox - Displays textbox in the FolderBrowser Dialog.
* StatusText - Includes status area in the dialog box. StatusText can be specified in the FolderBrowserCallBack event handler. This style does not apply to 'NewDialogStyle'.
* UAHint - Adds an usage hint to the folder dialog. It can be applied only with 'NewDialogStyle'.
* Validate - Typing invalid name in the textbox triggers FolderBrowserCallBack event.

{%highlight c#%}



this.folderBrowser1.Style = Syncfusion.Windows.Forms.FolderBrowserStyles.ShowTextBox;

{%endhighlight%}


{%highlight vbnet%}



Me.folderBrowser1.Style = Syncfusion.Windows.Forms.FolderBrowserStyles.ShowTextBox


{%endhighlight%}

![](Overview_images/Overview_img411.jpeg) 



A Sample which demonstrates the Style Settings of FolderBrowser is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_