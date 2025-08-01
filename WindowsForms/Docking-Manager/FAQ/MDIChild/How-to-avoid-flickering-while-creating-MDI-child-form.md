---
layout: post
title: How to avoid flickering while creating MDI child form | WindowsForms | Syncfusion®
description: How to avoid flickering while creating MDI child form
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to avoid flickering while creating MDI child form?

Flickering can occur when creating and docking MDI child forms due to frequent redraws and layout updates. This can be avoided by calling the below methods.

* LockHostFormUpdate
* UnlockHostFormUpdate

The LockHostFormUpdate and UnlockHostFormUpdate methods are used to temporarily suspend and resume UI updates on the host form. This prevent flickering while creating an MDI child form. 

**When to Use These Methods**

Use LockHostFormUpdate() before performing any docking or layout operations, and UnlockHostFormUpdate() after the operations are complete. This ensures that the host form does not redraw multiple times during the process, which is the primary cause of flickering. These methods can be used in the following way.

{% tabs %}

{% highlight C# %}

//To avoid flickering

//Lock the host form to prevent flickering during layout changes
this.dockingManager1.LockHostFormUpdate();

//Dock and configure the MDI child form
this.dockingManager1.DockControl(form, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 0);
this.dockingManager1.SetAsMDIChild(form, true);
this.dockingManager1.SetControlSize(form, size);

//Unlock the host form to resume UI updates
this.dockingManager1.UnlockHostFormUpdate();

{% endhighlight %}


{% highlight VB %}

'To avoid flickering

'Lock the host form to prevent flickering during layout changes
Me.dockingManager1.LockHostFormUpdate()

'Dock and configure the MDI child form
Me.dockingManager1.DockControl(form, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 0)
Me.dockingManager1.SetAsMDIChild(form, True)
Me.dockingManager1.SetControlSize(form, size)

'Unlock the host form to resume UI updates
Me.dockingManager1.UnlockHostFormUpdate()

{% endhighlight %}

{% endtabs %}

When multiple UI changes happen rapidly (like docking, resizing, or adding controls), the form may redraw several times, causing flickering. By locking updates during these operations, you ensure that the form redraws only once, after all changes are complete.

