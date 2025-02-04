---
layout: post
title: Tabbed Style Dockable in WinForms TabbedMDI Manager|Syncfusion®
description: How to Enable the Tabbed Style Dockable Window using Syncfusion® WinForms TabbedMDI Manager Control, its elements, and more.
platform: WindowsForms
control: DockingManager
documentation: ug
---


# How to enable the Tabbed Style Dockable Window using DockingManager?

The Tabbed MDI Package provides a new Tabbed MDI layout mode (as an alternative to the default Cascade and Tiled modes), popularized by VS .NET. 

We can enable and attach the dockable window into the Tabbed MDI manager during application startup using the following simple steps.

* Add 4 panels and the DockingManager to your application.
* Declare the TabbedMDIManager.

{% capture codesnippet1 %}
{% tabs %}

{% highlight C# %}

private Syncfusion.Windows.Forms.Tools.TabbedMDIManager tabbedMDIManager;

{% endhighlight %}

{% highlight VB %}


Private tabbedMDIManager As Syncfusion.Windows.Forms.Tools.TabbedMDIManager

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

* Set the form's IsMDIContainer property to `true`. Add a form, form2 to the project.
* In the form constructor, you have to enable the dockable window into an MDIChild by calling the SetAsMDIChild method. This has to be done before calling the AttachToMdIContainer method. It will give the look and feel of the VS. NET editor with dockable tabbed window appearance.

{% capture codesnippet2 %}
{% tabs %}

{% highlight C# %}

// Enables docking for panel.

this.dockingManager1.SetEnableDocking(this.panel1,true);

this.dockingManager1.SetEnableDocking(this.panel2,true);

this.dockingManager1.SetEnableDocking(this.panel3,true);

this.dockingManager1.SetEnableDocking(this.panel4,true);



// Sets dock label.            

this.dockingManager1.SetDockLabel(this.panel1,"Panel 1");                             

this.dockingManager1.SetDockLabel(this.panel2,"Panel 2");

this.dockingManager1.SetDockLabel(this.panel3,"Panel 3");

this.dockingManager1.SetDockLabel(this.panel4,"Panel 4");



// Changes docking window to MDI child window.

this.dockingManager1.SetAsMDIChild(this.panel1,true);

this.dockingManager1.SetAsMDIChild(this.panel2,true);

this.dockingManager1.SetAsMDIChild(this.panel3,true);



 // Attach MDI container to TabbedMDI manager.

this.tabbedMDIManager= new TabbedMDIManager();

this.tabbedMDIManager.TabControlAdded+= new TabbedMDITabControlEventHandler(tabbedMDIManager_TabControlAdded);



  // Assign the MDI form into the TabbedManager MDI container.

this.tabbedMDIManager.AttachToMdiContainer(this);

this.dockingManager1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003;

{% endhighlight %}


{% highlight VB %}


'Enables docking for panel.

Me.dockingManager1.SetEnableDocking(Me.panel1, True)

Me.dockingManager1.SetEnableDocking(Me.panel2,True)

Me.dockingManager1.SetEnableDocking(Me.panel3,True)

Me.dockingManager1.SetEnableDocking(Me.panel4, True)

'Sets dock label.            

Me.dockingManager1.SetDockLabel(Me.panel1,"Panel 1")

Me.dockingManager1.SetDockLabel(Me.panel2,"Panel 2")

Me.dockingManager1.SetDockLabel(Me.panel3,"Panel 3")



'Changes docking window to MDI child window.

Me.dockingManager1.SetAsMDIChild(Me.panel1,True)

Me.dockingManager1.SetAsMDIChild(Me.panel2,True)

Me.dockingManager1.SetAsMDIChild(Me.panel3,True)

Me.dockingManager1.SetAsMdiChild(Me.Panel4, True)

'Attach MDI container to TabbedMDI manager.

Me.tabbedMDIManager= New TabbedMDIManager()

AddHandler tabbedMDIManager.TabControlAdded, AddressOf tabbedMDIManager_TabControlAdded

 ' Assign the MDI form into the TabbedManager MDI container.

Me.tabbedMDIManager.AttachToMdiContainer(Me)

Me.dockingManager1.VisualStyle = Syncfusion.Windows.Forms.VisualStyle.Office2003

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

* You can also change the appearance of the tabs by applying the TabStyle in the TabControlAdded event.

{% capture codesnippet3 %}
{% tabs %}

{% highlight C# %}


// Enable the rendering for the Tabbed MDI manager tabs.

private void tabbedMDIManager_TabControlAdded(object sender, TabbedMDITabControlEventArgs args)

{

      args.TabControl.TabStyle = typeof(TabRendererWhidbey);

}

{% endhighlight %}


{% highlight VB %}



'Enable the rendering for the Tabbed MDI manager tabs.

Private Sub tabbedMDIManager_TabControlAdded(ByVal sender As Object, ByVal args As TabbedMDITabControlEventArgs)

      args.TabControl.TabStyle=GetType(TabRendererWhidbey)

End Sub

{% endhighlight %}

{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

 ![WinForms DockingManager General](General_images/General_img1.jpeg) 


