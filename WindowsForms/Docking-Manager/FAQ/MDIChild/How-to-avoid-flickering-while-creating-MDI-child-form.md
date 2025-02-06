---
layout: post
title: How to avoid flickering while creating MDI child form | WindowsForms | Syncfusion®
description: How to avoid flickering while creating MDI child form
platform: windowsforms
control: DockingManager
documentation: ug
---

# How to avoid flickering while creating MDI child form?

Flickering can be avoided by calling the below methods.

* LockHostFormUpdate
* UnLockHostFormUpdate

The LockHostFormUpdate and UnLockHostFormUpdate methods are used to lock and unlock the host form's updates respectively. These methods helps in avoiding flickering while creating an MDI child form. These methods can be used in the following way.

{% tabs %}

{% highlight C# %}

//To avoid flickering

this.dockingManager1.LockHostFormUpdate();

this.dockingManager1.DockControl(form, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 0);

this.dockingManager1.SetAsMDIChild(form, true);

this.dockingManager1.SetControlSize(form, size);

this.dockingManager1.UnlockHostFormUpdate();

{% endhighlight %}


{% highlight VB %}


'To avoid flickering

Me.dockingManager1.LockHostFormUpdate()

Me.dockingManager1.DockControl(form, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 0)

Me.dockingManager1.SetAsMDIChild(form, True)

Me.dockingManager1.SetControlSize(form, size)

Me.dockingManager1.UnlockHostFormUpdate()

{% endhighlight %}

{% endtabs %}

