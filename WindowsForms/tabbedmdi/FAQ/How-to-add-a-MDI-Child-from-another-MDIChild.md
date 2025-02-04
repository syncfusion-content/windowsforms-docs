---
layout: post
title: How-to-add-a-MDI-Child-from | WindowsForms | Syncfusion®
description: how to add a mdi child from another mdichild
platform: windowsforms
control: TabbedMDIManager
documentation: ug
---

# How to add a MDI Child from another MDIChild

You should set the [MDIParent](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TabbedMDIManager.html#Syncfusion_Windows_Forms_Tools_TabbedMDIManager_MdiParent) of the new child form as follows:

{% tabs %}

{% highlight C# %} 



private void buttonAdv1_Click(object sender, System.EventArgs e) 

{ 

Form3 child1 = new Form3(); 

// Set the new form's MDIParent to the main form. 

child1.MdiParent = (Form1) this.Parent.Parent; 

child1.Text = "Document"; 

child1.Show(); 

} 

{% endhighlight %}

{% highlight VB %}



Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv1.Click

Dim f1 As Form3 = New Form3()

' Set the new form's MDIParent to the main form. 

f1.MdiParent = CType(Me.Parent.Parent, Form1)

f1.Text = "Document"

f1.Show()

End Sub

{% endhighlight %}

{% endtabs %}

