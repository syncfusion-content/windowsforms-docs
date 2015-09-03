---
layout: post
title: How to avoid flickering while loading dock state
description: How to avoid flickering while loading dock state
platform: WindowsForms
control: Control Name undefined
documentation: ug
---

# How to avoid flickering while loading dock state?

Flickering can be avoided by calling the below methods.

LockDockPanelsUpdate andUnLockDockPanelsUpdate Methods - The LockDockPanelsUpdate and UnLockDockPanelsUpdate methods are used to lock and unlock the panel's repainting respectively. For example to avoid flickering while loading a dock state, these methods can be used in the following way.


{% highlight C# %}





//Avoids flickering while loading dock state

this.dockingManager1.LockHostFormUpdate();

this.dockingManager1.LoadDockState();

this.dockingManager1.UnlockHostFormUpdate();
{% endhighlight %}

{% highlight vbnet %}





'Avoids flickering while loading dock state

Me.dockingManager1.LockHostFormUpdate()

Me.dockingManager1.LoadDockState()

Me.dockingManager1.UnlockHostFormUpdate()
{% endhighlight %}

{% seealso %}

[Persistence](/windowsforms/DockingPackage/Advanced-Features.html#dock-state-persistence)

{% endseealso %}