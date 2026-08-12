---
layout: post
title: Lock and unlock MDIClients in TabbedMDIManager | Syncfusion®
description: Learn how to lock and unlock MDIClients in Syncfusion Windows Forms TabbedMDIManager using LockMDIClientUpdate and UnLockMDIClientUpdate.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# Lock and unlock MDIClients in TabbedMDIManager

TabbedMDIManager has [LockMDIClientUpdate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_LockMDIClientUpdate) and [UnLockMDIClientUpdate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_UnLockMDIClientUpdate) methods to lock and unlock the MDIClients from updating.

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
