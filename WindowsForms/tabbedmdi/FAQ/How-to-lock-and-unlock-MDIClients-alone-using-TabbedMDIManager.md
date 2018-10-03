---
layout: post
title: How-to-lock-and-unlock-MDIClients-alone-using-TabbedMDIManager | WindowsForms | Syncfusion
description: how to lock and unlock mdiclients alone using tabbedmdimanager
platform: WindowsForms
control: TabbedMDIPackage
documentation: ug
---

# How to lock and unlock MDIClients alone using TabbedMDIManager

TabbedMDIManager has LockMDIClientUpdate() and UnLockMDIClientUpdate() methods to lock and unlock the MDIClients from updating.

Methods table

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
LockMDIClientUpdate()</td><td>
Locks the MDIClients alone</td></tr>
<tr>
<td>
UnlockMDIClientUpdate()</td><td>
Unlocks the MDIClients alone</td></tr>
</table>

{% tabs %}

{% highlight C# %}



private void unlockToolStripMenuItem_Click(object sender, EventArgs e)

{

   this.tabbedMDIManager1.UnLockMDIClientUpdate();

}



private void lockToolStripMenuItem_Click(object sender, EventArgs e)

{

   this.tabbedMDIManager1.LockMDIClientUpdate();

}

{% endhighlight %}

{% highlight VB %}



Private Sub unlockToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)



    Me.tabbedMDIManager1.UnLockMDIClientUpdate()

End Sub



Private Sub lockToolStripMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)

    Me.tabbedMDIManager1.LockMDIClientUpdate()

End Sub

{% endhighlight %}

{% endtabs %}