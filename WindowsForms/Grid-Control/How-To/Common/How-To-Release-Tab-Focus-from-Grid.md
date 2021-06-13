---
layout: post
title: How to Release Tab Focus from Grid | Windows Forms | Syncfusion
description: Learn here all about how to release tab focus from grid in Syncfusion Windows Forms Gridcontrol control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Release Tab Focus from Grid in Windows Forms GridControl

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