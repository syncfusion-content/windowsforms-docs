---
layout: post
title: How to Browse MDI Children in Windows Forms TabbedMDI | Syncfusion®
description: Learn how to browse through the MDIChild forms in the Syncfusion Windows Forms TabbedMDI control using the MdiChildren property.
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to Browse MDI Children in Windows Forms TabbedMDI

You should not use the MDIContainer form’s [MDIChildren](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_MdiChildren) property to browse through the MDIChildren. This is because the TabbedMDI Framework introduces some additional MDIChildren into your MDIContainer that are not part of your application logic.

You should instead use the TabbedMDIManager's [MDIChildren](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_MdiChildren) property to get a list of the MDIChildren, as follows:

{% tabs %}

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

{% highlight VB %}

' In your MDIContainer Form.

Private Sub ParseMDIChildren()

Dim children As String = String.Empty

Dim form As Form

For Each form As Form In Me.tabbedMDIManager.MdiChildren

children += form.Text + Constants.vbCrLf

Next

MessageBox.Show(children)

End Sub

{% endhighlight %}

{% endtabs %}
