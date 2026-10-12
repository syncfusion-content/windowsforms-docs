---
layout: post
title: Release Tab Focus from WinForms GridGroupingControl | Syncfusion®
description: Release tab focus from Syncfusion® WinForms GridGroupingControl, its keyboard navigation behavior, focus management, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Release Tab Focus from WinForms GridGroupingControl

When you set ActiveControl variable to Grid__control, focus will be on Grid control. This may not allow you to navigate to other controls in the form. To overcome this difficulty, set ActiveControl to Grid control. Then set WantTabKey property to false. This helps you navigate to other controls in the form.

The following code illustrates how to release tab focus from GridGroupingControl: 

{% tabs %}
{% highlight c# %}

private void FormMain_Load(object sender, EventArgs e)
{
    this.ActiveControl = this.gridGroupingControl1.TableControl;
    gridGroupingControl1.WantTabKey = false;
    return;
}
		
{% endhighlight %}

{% highlight vb %}
Private Sub FormMain_Load(ByVal sender As Object, ByVal e As EventArgs)
Me.ActiveControl = Me.gridGroupingControl1.TableControl
gridGroupingControl1.WantTabKey = False
Return
End Sub

{% endhighlight %}
{% endtabs %}