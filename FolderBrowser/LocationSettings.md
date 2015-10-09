---
layout: post
title: Location Settings | WindowsForms | Syncfusion
description: location settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Location Settings

This section deals with the location settings of the FolderBrowser control.

The FolderBrowser allows the user to provide the location from which browsing should start. It also provides various options from which the root folder for browsing can be selected. The following properties illustrate this.

<table>
<tr>
<th>
FolderBrowser Properties</th><th>
Description</th></tr>
<tr>
<td>
StartLocation</td><td>
Specifies the location of the root folder from which to start browsing. It is the functional equivalent of setting the PIDL value.
Desktop,
Internet,
Programs,
Controls,
Printers,
Personal,
Favorites,
Startup,
Recent,
SendTo,
BitBucket,
StartMenu,
MyDocuments,
MyMusic,
MyVideo,
DesktopDirectory,
MyComputer,
NetworkNeighborhood,
NetHood,
Fonts,
Templates,
MyPictures,
CommonDocuments,
CommonAdminTools,
AdminTools,
NetAndDialUpConnections,
CommonMusic,
CommonPictures,
CommonVideo,
Resources,
ResourcesLocalized,
CommonOemLinks,
CDBurnArea,
ComputersNearMe,
CustomStartLocation,
FlagPerUserInit,
FlagNoAlias,
FlagDontVerify,
FlagCreate and
FlagMask.</td></tr>
<tr>
<td>
CustomStartLocation</td><td>
Gets / sets custom start location for showing the dialog.</td></tr>
<tr>
<td>
SelectLocation</td><td>
Gets / sets the selected location for showing the dialog.</td></tr>
<tr>
<td>
DirectoryPath</td><td>
Retrieves the location of the selected folder.</td></tr>
</table>

N> For the SelectLocation property to take effect, the StartLocation property must be set to 'CustomStartLocation'._

{%highlight c#%}


// Set the enumeration value FolderBrowserFolder.CustomStartLocation for Folder.StartLocation property.

this.folderBrowser1.StartLocation = Syncfusion.Windows.Forms.FolderBrowserFolder.CustomStartLocation;

this.folderBrowser1.CustomStartLocation = "C:";



// SelectLocation property for Automatic Scroll and Highlight of desired path.

this.folderBrowser1.SelectLocation = "C:\\Program Files\\Syncfusion\\Essential Studio";



{%endhighlight%}

{%highlight vbnet%}

' Set the enumeration value FolderBrowserFolder.CustomStartLocation for Folder.StartLocation property.

Me.folderBrowser1.StartLocation = Syncfusion.Windows.Forms.FolderBrowserFolder.CustomStartLocation

Me.folderBrowser1.CustomStartLocation = "C:"



' SelectLocation property for Automatic Scroll and Highlight of desired path.

Me.folderBrowser1.SelectLocation = "C:\\Program Files\\Syncfusion\\Essential Studio"

{%endhighlight%}

 ![](Overview_images/Overview_img410.jpeg) 
 
 
A Sample which demonstrates the Location Settings of FolderBrowser is available in the below sample installation path.

..My Documents\Syncfusion\EssentialStudio\_Version Number_\Windows\Tools.Windows\Samples\2.0\Editors Package\FolderBrowserDemo