---
layout: post
title: How-to-browse-through-the-MDIChildren-in-the-MDI-container-after-enabling-TabbedMDIManager | WindowsForms | Syncfusion
description: how to browse through the mdichildren in the mdicontainer after enabling tabbedmdimanager
platform: WindowsForms
control: TabbedMDIPackage
documentation: ug
---

# How to browse through the MDIChildren in the MDIContainer after enabling TabbedMDIManager

You should not use the MDIContainer form’s MDIChildren property to browse through the MDIChildren. This is because the TabbedMDI Framework introduces some additional MDIChildren into your MDIContainer that are not part of your application logic.

You should instead use the TabbedMDIManager's MDIChildren property to get a list of the MDIChildren, as follows:

{% highlight c# %}



// In your MDIContainer Form.

private void ParseMDIChildren()

{

string children = String.Empty;

foreach(Form form in this.tabbedMDIManager.MdiChildren)

{

children += form.Text + "\r\n";

}

MessageBox.Show(children); 

}

{% endhighlight %}

{% highlight vbnet %}

' In your MDIContainer Form.

Private Sub ParseMDIChildren()

Dim children As String = String.Empty

Dim form As Form

For Each Form In Me.tabbedMDIManager.MdiChildren

children += Form.Text + "\r\n"

Next

MessageBox.Show(children)

End Sub

{% endhighlight %}

