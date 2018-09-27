---
layout: post
title: Creating FolderBrowser | WindowsForms | Syncfusion
description: creating folderbrowser
platform: WindowsForms
control: Tools
documentation: ug
---

# Getting Started

This section describes how to design a `FolderBrowser` control in a Windows Forms application and overview of its basic functionalities.

## Assembly deployment

Refer [control dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#folderbrowser) section to get the list of assemblies or NuGet package needs to be added as reference to use the control in any application. 

Find more details regarding how to install the nuget packages in windows form application in the below link:

[How to install nuget packages](https://help.syncfusion.com/windowsforms/nuget-packages)

# Creating FolderBrowser

FolderBrowser control can be created in the following ways.

## Through designer

The designer based approach for creating and initializing the FolderBrowser component is shown below.

1. Select the FolderBrowser control from the Visual Studio .NET toolbox window and drop it onto the design form. An instance of the FolderBrowser component will be added to the design form's component tray.
  
  ![](Overview_images/Overview_img406.jpeg)



2. Select a suitable value for the FolderBrowser.StartLocation property from the enumerator list provided by the property grid. This specifies the location at which browsing should be started in the folder hierarchy. This property is the functional equivalent of the Win32 PIDL's.
3. Specify an appropriate value for the FolderBrowser.Style property. The FolderBrowserStyles enumeration specifies various options for the FolderBrowser Dialog.
4. To display the FolderBrowser window, simply invoke the FolderBrowser.ShowDialog() method from within your application's code.

This method is a modal function and if the return code indicates success, the FolderBrowser.DirectoryPath property may be used to access the selected folder.

{% tabs %}

{% highlight C# %}



this.folderBrowser1.ShowDialog();

{% endhighlight %}

{% highlight VB %}


Me.folderBrowser1.ShowDialog()

{% endhighlight %}

{% endtabs %}


![](Overview_images/Overview_img407.jpeg)


## Through code

The programmatic approach for using the FolderBrowser component is shown below.

1. Create an instance of the FolderBrowser component.
   
   {% tabs %}

   {% highlight C# %}


   // Declare the FolderBrowser component.
   private Syncfusion.Windows.Forms.FolderBrowser folderBrowser1;
   
   // Create an instance of the FolderBrowser component.
   this.folderBrowser1 = new Syncfusion.Windows.Forms.FolderBrowser(this.components);
   
   {% endhighlight %}

   {% highlight VB %}
   
   ' Declare the FolderBrowser component.
   Private folderBrowser1 As Syncfusion.Windows.Forms.FolderBrowser
   
   ' Create an instance of the FolderBrowser component.
   Me.folderBrowser1 = New Syncfusion.Windows.Forms.FolderBrowser(Me.components)
   
   {% endhighlight %}

   {% endtabs %}



2. Set the FolderBrowser.StartLocation and FolderBrowser.Style property values.
   
   {% tabs %}

   {% highlight C# %}

   // Specify the Start location.
   this.folderBrowser1.StartLocation = Syncfusion.Windows.Forms.FolderBrowserFolder.MyComputer;
   
   // Specify the styles for the FolderBrowser Dialog.
   this.folderBrowser1.Style = (Syncfusion.Windows.Forms.FolderBrowserStyles.RestrictToFilesystem | Syncfusion.Windows.Forms.FolderBrowserStyles.BrowseForComputer);
   
   {% endhighlight %}

   {% highlight VB %}
   
   ' Specify the Start location.
   Me.folderBrowser1.StartLocation = Syncfusion.Windows.Forms.FolderBrowserFolder.MyComputer
   
   ' Specify the styles for the FolderBrowser Dialog.
   Me.folderBrowser1.Style = Syncfusion.Windows.Forms.FolderBrowserStyles.RestrictToFilesystem Or Syncfusion.Windows.Forms.FolderBrowserStyles.BrowseForComputer
   
   {% endhighlight %}

   {% endtabs %}


3. Invoke the FolderBrowser.ShowDialog() method to display the FolderBrowser Dialog.
   
   {% tabs %}

   {% highlight C# %}

   this.folderBrowser1.ShowDialog();
   
   
   {% endhighlight %}

   {% highlight VB %}
   
   Me.folderBrowser1.ShowDialog()
   
   {% endhighlight %}

   {% endtabs %}

   ![](Overview_images/Overview_img408.jpeg) 



{% seealso %}

[Through Designer](#through-code)

{% endseealso %}