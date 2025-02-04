---
layout: post
title: UserControls as Tabs in Windows Forms TabbedMDI control | Syncfusion®
description: Learn about UserControls as Tabs support in Syncfusion® Windows Forms TabbedMDI control and more details.
platform: windowsforms
control: TabbedMDIPackage 
documentation: ug
---

# UserControls as Tabs in Windows Forms TabbedMDI

Normally TabbedMDI is used in MDI applications where the Child forms are the children that get tabbed. But, we can also use TabbedMDI with User Controls as children that are dockable.

Add a UserControl to the form and initialize it inside the parent form. Add a DockingManager and a TabbedMDIManager Control. Dock the User Control and set it as an MDIChild using the below code snippet.

{% tabs %}

{% highlight C# %}

UserControl userControl = new UserControl();

userControl.Parent = this;

// Dock the user contro1 to the form. 

this.dockingManager1.DockControl(userControl, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200);

// Set the user controls to MDI mode. 

this.dockingManager1.SetAsMDIChild(userControl, true);


{% endhighlight %}

{% highlight VB %}



Dim userControl As New UserControl()

userControl.Parent = Me 

' Dock the user contro1 to the form. 

Me.dockingManager1.DockControl(userControl, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Tabbed, 200) 

' Set the user controls to MDI mode. 

Me.dockingManager1.SetAsMDIChild(userControl, True) 

{% endhighlight %}

{% endtabs %}


![UserControls-as-Tabs_img1](UserControls-as-Tabs_images/UserControls-as-Tabs_img1.jpeg)


{% seealso %}

[MDI List](/windowsforms/tabbedmdi/mdi-list)

{% endseealso %}


