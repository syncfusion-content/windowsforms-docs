---
layout: post
title: How to avoid flickering while creating MDI child form | WindowsForms | Syncfusion
description: How to avoid flickering while creating MDI child form
platform: WindowsForms
control: DockingManager
documentation: ug
---

# How to avoid flickering while creating MDI child form?

Flickering can be avoided by calling the below methods.

LockHostFormUpdate and UnLockHostFormUpdate Methods - The LockHostFormUpdate and UnLockHostFormUpdate methods are used to lock and unlock the host form's updates respectively. These methods helps in avoiding flickering while creating an MDI child form, these methods can be used in the following way.


{% highlight C# %}



//To avoid flickering

this.dockingManager1.LockHostFormUpdate();

this.dockingManager1.DockControl(form, this, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 0);

this.dockingManager1.SetAsMDIChild(form, true);

this.dockingManager1.SetControlSize(form, size);

this.dockingManager1.UnlockHostFormUpdate();

{% endhighlight %}



{% highlight vbnet %}



'To avoid flickering

Me.dockingManager1.LockHostFormUpdate()

Me.dockingManager1.DockControl(form, Me, Syncfusion.Windows.Forms.Tools.DockingStyle.Right, 0)

Me.dockingManager1.SetAsMDIChild(form, True)

Me.dockingManager1.SetControlSize(form, size)

Me.dockingManager1.UnlockHostFormUpdate()
{% endhighlight %}

## How to detect whether a particular control is in MDI mode or not?

To know whether the control is in MDI mode or not, the below method can be called.

IsMDIMode method let you detect whether the specified control is in MDI child mode or not. The return value will be true if the control is in MDI mode, else value will be false.




{% highlight C# %}



this.dockingManager1.IsMDIMode(this.listBox2);
{% endhighlight %}



{% highlight vbnet %}


Me.dockingManager1.IsMDIMode(Me.listBox2)
{% endhighlight %}

{% seealso %}

[MDI Child Transition](/windowsforms/dockingmanager/advanced-features#mdi-child-transition)

{% endseealso %}
