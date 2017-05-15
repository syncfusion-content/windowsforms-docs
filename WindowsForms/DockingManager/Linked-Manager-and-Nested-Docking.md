---
layout: post
title: Linked-Manager-and-Nested-Docking | WindowsForms | Syncfusion
description: linked manager and nested docking
platform: WindowsForms
control: DockingManager 
documentation: ug
---


# Linked Manager and Nested Docking

## Linked Manager

The windows DockingManager cannot be dragged and dropped to another DockingManager by default. But Linked Manager support allows to drag and drop the windows from one DockingManager to another by setting `TargetDockingManager` list.

{% tabs %}

{% highlight C# %}

//Control from form2 to be transferred to form1 and vice versa.

Form2 form2object = new Form2();

form2object.Show();

this.dockingManager1.AddToTargetManagersList(form2object.dockingManager1);

form2object.dockingManager1.AddToTargetManagersList(this.dockingManager1);

{% endhighlight %}

{% highlight VB %}

'Control from form2 to be transferred to form1 and vice versa

Dim ChildWindow As New Form2()

ChildWindow.Show()

Me.dockingManager1.AddToTargetManagersList(ChildWindow.dockingManager1)

ChildWindow.dockingManager1.AddToTargetManagersList(Me.dockingManager1)

{% endhighlight %}

{% endtabs %}

![](Images/LinkedManagerandNestedDocking_img1.jpeg)


### Adding TargetManager list of DockingManager

To add TargetManager list in the DockingManager, call `AddToTargetManagersList` method of the DockingManager with the valid DockingManager instance as argument.

When only one DockingManager has TargetManagerList, the window drop to TargetManager cannot drag back to Owner DockingManger. For example DockingManager1 and DockingManager2 are the DockingManager instance and the DockingManager2 is added to TargetManagerList of DockingManager1, but the DockingManager2 is not aware of its TargetManager.

Here, the windows from DockingManager1 are only allowed to be dragged and dropped in DockingManager2,


{% tabs %}

{% highlight C# %}

//To add ChildForm's DockingManager to the MainForm's TargetManagerList. 

this.dockingManager1.AddToTargetManagersList(ChildWindow.dockingManager2);

{% endhighlight %}

{% highlight VB %}

'To add ChildForm's DockingManager to the MainForm's TargetManagerList. 

Me.dockingManager1.AddToTargetManagersList(ChildWindow.dockingManager1)

{% endhighlight %}

{% endtabs %}


To drag and drop the window from DockingManager2 to DockingManager1, DockingManager1 must be added to TargetManagerList of DockingManager2.

{% tabs %}

{% highlight C# %}

//To add ChildForm's DockingManager to the MainForm's TargetManagerList. 

this.dockingManager1.AddToTargetManagersList(ChildWindow.dockingManager2);

ChildWindow.dockingManager2.AddToTargetManagersList(this.dockingManager1);

{% endhighlight %}

{% highlight VB %}

'To add ChildForm's DockingManager to the MainForm's TargetManagerList. 

Me.dockingManager1.AddToTargetManagersList(ChildWindow.dockingManager1);

ChildWindow.dockingManager1.AddToTargetManagersList(Me.dockingManager1);

{% endhighlight %}

{% endtabs %}


### Removing Target Manager list

To remove DockingManager from the TargetManagerList, call `RemoveFromTargetManagerList` of DockingManager with the valid DockingManager instance argument. For example, to remove the DockingManager1 from the TargetManagersList of DockingManager2, follow the below code snippets:

{% tabs %}

{% highlight C# %}

//To remove ChildForm's DockingManager to the MainForm's TargetManagerList. 

this.dockingManager1.RemoveFromTargetManagersList(ChildWindow.dockingManager2);

{% endhighlight %}

{% highlight VB %}

'To remove ChildForm's DockingManager to the MainForm's TargetManagerList. 

Me.dockingManager1.RemoveFromTargetManagersList(ChildWindow.dockingManager2);

{% endhighlight %}

{% endtabs %}


## Nested Docking

DockingManager provides the NestedDockingManager support, which allows to add DockingManager as a child window to another DockingManager.

In Nested DockingManager, the whole DockingManager can be dragged and dropped inside the Parent DockingManager and DockWindows inside the DockingManager cannot be dragged and dropped on the owner DockingManager.

![](Images/NestedDocking.png)

