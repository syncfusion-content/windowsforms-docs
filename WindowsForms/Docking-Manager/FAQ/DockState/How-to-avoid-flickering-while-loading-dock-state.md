---
layout: post
title: How to avoid flickering while loading dock state |WinForms |Syncfusion
description: This section explains about how to avoid flickering while loading dock state in the WindowsForms DockingManager.
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to avoid flickering while loading dock state?

Flickering can be avoided by calling the below methods.

* LockDockPanelsUpdate
* UnLockDockPanelsUpdate

The LockDockPanelsUpdate and UnLockDockPanelsUpdate methods are used to lock and unlock the panel's repainting respectively. For example to avoid flickering while loading a dock state, these methods can be used in the following way.

{% tabs %}

{% highlight C# %}

//Avoids flickering while loading dock state

this.dockingManager1.LockHostFormUpdate();

this.dockingManager1.LoadDockState();

this.dockingManager1.UnlockHostFormUpdate();

{% endhighlight %}

{% highlight VB %}


'Avoids flickering while loading dock state

Me.dockingManager1.LockHostFormUpdate()

Me.dockingManager1.LoadDockState()

Me.dockingManager1.UnlockHostFormUpdate()

{% endhighlight %}

{% endtabs %}

{% seealso %}

[State Persistence](https://help.syncfusion.com/windowsforms/docking-manager/serialization)

{% endseealso %}