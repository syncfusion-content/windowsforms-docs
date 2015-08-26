---
layout: post
title: UserControls-as-Tabs
description: usercontrols as tabs
platform: windowsforms
control: TabbedMDIPackage 
documentation: ug
---

# UserControls as Tabs

Normally TabbedMDI is used in MDI applications where the Child forms are the children that get tabbed. But, we can also use TabbedMDI with User Controls as children that are dockable.

Add a UserControl to the form and initialize it inside the parent form. Add a DockingManager and a TabbedMDIManager Control. Dock the User Control and set it as an MDIChild using the below code snippet.

{% highlight c# %}



UserControl Uc = new UserControl();

Uc.Parent = this;

// Dock the user contro1 to the form. 

this.dockingManager1.DockControl(Uc, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200);

// Set the user controls to MDI mode. 

this.dockingManager1.SetAsMDIChild(Uc, true);


{% endhighlight %}

{% highlight vbnet %}



Dim Uc As New UserControl()

Uc.Parent = Me 

' Dock the user contro1 to the form. 

Me.dockingManager1.DockControl(Uc, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200) 

' Set the user controls to MDI mode. 

Me.dockingManager1.SetAsMDIChild(Uc, True) 

{% endhighlight %}


![](UserControls-as-Tabs_images/UserControls-as-Tabs_img1.jpeg)


See Also

MDI List

