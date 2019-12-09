---
layout: post
title: Location Settings | WindowsForms | Syncfusion
description: location settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Location settings

This section deals with the location settings of the FolderBrowser control.

The FolderBrowser allows the user to provide the location from which browsing should start. It also provides various options from which the root folder for browsing can be selected. The following properties illustrate this.

* [StartLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~StartLocation.html)
* [CustomStartLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~CustomStartLocation.html)
* [SelectLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~SelectLocation.html)
* [DirectoryPath](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~DirectoryPath.html)

N> For the [SelectLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~SelectLocation.html) property to take effect, the [StartLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~StartLocation.html) property must be set to [CustomStartLocation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.FolderBrowser~CustomStartLocation.html).

{% tabs %}

{% highlight C# %}


// Set the enumeration value FolderBrowserFolder.CustomStartLocation for Folder.StartLocation property.

this.folderBrowser1.StartLocation = Syncfusion.Windows.Forms.FolderBrowserFolder.CustomStartLocation;

this.folderBrowser1.CustomStartLocation = "C:";



// SelectLocation property for Automatic Scroll and Highlight of desired path.

this.folderBrowser1.SelectLocation = "C:\\Program Files\\Syncfusion\\Essential Studio";



{% endhighlight %}

{% highlight VB %}

' Set the enumeration value FolderBrowserFolder.CustomStartLocation for Folder.StartLocation property.

Me.folderBrowser1.StartLocation = Syncfusion.Windows.Forms.FolderBrowserFolder.CustomStartLocation

Me.folderBrowser1.CustomStartLocation = "C:"



' SelectLocation property for Automatic Scroll and Highlight of desired path.

Me.folderBrowser1.SelectLocation = "C:\\Program Files\\Syncfusion\\Essential Studio"

{% endhighlight %}

{% endtabs %}

 ![Location settings](Overview_images/Overview_img410.jpeg) 
 
 
A Sample which demonstrates the Location Settings of FolderBrowser is available in the below sample installation path.

..My Documents\Syncfusion\EssentialStudio\_Version Number_\Windows\Tools.Windows\Samples\2.0\Editors Package\FolderBrowserDemo