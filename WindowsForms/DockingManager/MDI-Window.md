---
layout: post
title: MDIFunctionality | WindowsForms | Syncfusion
description: This section explains the MDI-Window functionality in DockingManager
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# MDI Window

Provides support for residing multiple windows under a single parent window in DockingManager.

## Enable MDI Container

To enable MDI functionalities in DockingManager, `IsMdIContainer` property of its parent form should be `true`.

## Make MDI child 

[SetAsMDIChild](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetAsMDIChild.html) function helps to set the docking window to the MDIChild window in DockingManager. And also we can set the docked control as an MDI Child in an easy method, by using the `MDI Child` option in the context menu.

![](MDI_Window_images/MDI_Window_img3.png) 

{% tabs %}

{% highlight C# %}

//To set as MDI Child window

this.dockingManager1.SetAsMDIChild(panel1, true);

this.dockingManager1.SetAsMDIChild(panel2, true);

{% endhighlight %}


{% highlight VB %}

'To set as MDI Child window

Me.dockingManager1.SetAsMDIChild(panel1, True)

Me.dockingManager1.SetAsMDIChild(panel2, True)

{% endhighlight %}

{% endtabs %}

![](MDI_Window_images/MDI_Window_img4.png) 

N> A sample that demonstrates MDI child transition is available in the following sample installation path.
C:\Users\&lt;User&gt;\AppData\Local\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Docking Manager\MDI\CS

## Make Tabbed MDI child using client control

[SetAsMDIChild](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetAsMDIChild.html) function helps to set the docking window to the tabbed MDIChild window in DockingManager using [TabbedMDIManager](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html) control. And also we can set the docked control as an MDI Child in an easy method, by using the `Tabbed document` option in the context menu. To Enable this option, attach the parent form of DockingManager to MDI container of TabbedMDIManager by using [AttachToMdiContainer](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.TabbedMDIManager~AttachToMdiContainer.html). 

![](MDI_Window_images/MDI_Window_img2.png) 

{% tabs %}

{% highlight C# %}

//Initialize the TabbedMDI Manager

TabbedMDIManager tabbedMDI = new TabbedMDIManager();

//Attach the Form to TabbedMDI Manager.

tabbedMDI.AttachToMdiContainer(this);

tabbedMDI.TabStyle = typeof(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful);
  
//To set as MDI Child window

this.dockingManager1.SetAsMDIChild(panel1, true);

this.dockingManager1.SetAsMDIChild(panel2, true);

{% endhighlight %}


{% highlight VB %}

'Initialize the TabbedMDI Manager

Dim tabbedMDI As New TabbedMDIManager()

'Attach the Form to TabbedMDI Manager.

tabbedMDI.AttachToMdiContainer(Me)

Me.tabbedMDIManager.TabStyle = GetType(Syncfusion.Windows.Forms.Tools.TabRendererOffice2016Colorful)
  
'To set as MDI Child window

Me.dockingManager1.SetAsMDIChild(panel1, True)

Me.dockingManager1.SetAsMDIChild(panel2, True)

{% endhighlight %}

{% endtabs %}

![](MDI_Window_images/MDI_Window_img1.png) 

## Add icon in caption

[SetMDIChildIcon](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetMDIChildIcon.html) function helps to set the custom icons in caption bar of MDIChild window in DockingManager.

{% tabs %}

{% highlight C# %}

System.Drawing.Icon icon = new System.Drawing.Icon(GetIconFile(GetIconFile(@"..\\..\\\$this.Icon.ico")));
          
//To set icon in MDI Child window
this.dockingManager1.SetMDIChildIcon(panel2, icon);

this.dockingManager1.SetAsMDIChild(panel1, true);

this.dockingManager1.SetAsMDIChild(panel2, true);

private string GetIconFile(string bitmapName)
{
   for (int n = 0; n < 10; n++)
   {
       if (System.IO.File.Exists(bitmapName))
          return bitmapName;

       bitmapName = @"..\" + bitmapName;
   }

   return bitmapName;
}

{% endhighlight %}

{% highlight VB %}

Dim icon As System.Drawing.Icon = New System.Drawing.Icon(GetIconFile(GetIconFile("..\\..\\\$this.Icon.ico")))

'To set icon in MDI Child window
Me.dockingManager1.SetMDIChildIcon(panel2, icon)

Me.dockingManager1.SetAsMDIChild(panel1, True)

Me.dockingManager1.SetAsMDIChild(panel2, True)

Private Function GetIconFile(ByVal bitmapName As String) As String
	 
   For n As Integer = 0 To 9
				
      If System.IO.File.Exists(bitmapName) Then

					Return bitmapName

			End If

			bitmapName = "..\" & bitmapName
			
   Next n

	 Return bitmapName

End Function

{% endhighlight %}

{% endtabs %}

![](MDI_Window_images/MDI_Window_img6.png) 

## Change MDI window size

[SetAsMDIChild](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetAsMDIChild.html) function helps to change the size of MDI window in DockingManager.

{% tabs %}

{% highlight C# %}

this.dockingManager1.SetAsMDIChild(panel1, true, new Rectangle(200, 400, 250, 250));

this.dockingManager1.SetAsMDIChild(panel2, true, new Rectangle(200, 400, 250, 250));

{% endhighlight %}

{% highlight VB %}

Me.dockingManager1.SetAsMDIChild(panel1,True, New Rectangle(200, 400, 250, 250))

Me.dockingManager1.SetAsMDIChild(panel2,True, New Rectangle(200, 400, 250, 250))

{% endhighlight %}

{% endtabs %}

![](MDI_Window_images/MDI_Window_img5.png) 

## Change MDI window to dock window

MDI window can be moved to dock state by using its ContextMenu option. This can also be done programmatically by using the [SetAsMDIChild](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~SetAsMDIChild.html) function.

{% tabs %}

{% highlight C# %}

//Sets the MDI child form to the normal Docking window.

this.dockingManager1.SetAsMDIChild(this.panel1,false);

{% endhighlight %}


{% highlight VB %}

'Sets the MDI child form to the normal Docking window.

Me.dockingManager1.SetAsMDIChild(Me.panel1,False)

{% endhighlight %}

{% endtabs %}	 

## Office 2007 style MDI child form

The MDI child forms can have Office2007 look and feel. It can be enabled through [Office2007MdiChildForm](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~Office2007MdiChildForm.html) property. 

### Change color scheme for Office 2007 style MDI window

Color schemes are also supported that can be specified by using [Office2007MdiColorScheme](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~Office2007MdiColorScheme.html) property.

{% tabs %}

{% highlight C# %}

this.dockingManager1.Office2007MdiChildForm = true;

//Sets the Silver Color scheme.

this.dockingManager1.Office2007MdiColorScheme = Office2007Theme.Silver;

{% endhighlight %}


{% highlight VB %}

Me.dockingManager1.Office2007MdiChildForm = True

'Sets the Silver Color scheme.

Me.dockingManager1.Office2007MdiColorScheme = Office2007Theme.Silver

{% endhighlight %}

{% endtabs %}

![](MDI_Window_images/MDI_Window_img7.png) 

## Identify control is in MDI mode or not

The DockingManager [IsMDIMode](https://help.syncfusion.com/cr/cref_files/windowsforms/tools/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DockingManager~IsMDIMode.html) function is used to determine the MDI state of a docked window. This function takes the control as its argument and returns `true` when the specified control is in MDI child mode, `false` otherwise.

{% tabs %}

{% highlight C# %}

MessageBox.Show(this.dockingManager1.IsMDIMode(this.panel1).ToString());

{% endhighlight %}

{% highlight VB %}

MessageBox.Show(Me.dockingManager1.IsMDIMode(Me.panel1).ToString())

{% endhighlight %}

{% endtabs %}  

