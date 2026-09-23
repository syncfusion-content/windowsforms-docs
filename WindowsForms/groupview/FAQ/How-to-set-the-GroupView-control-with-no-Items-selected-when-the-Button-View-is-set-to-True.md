---
layout: post
title: GroupView control with no items selected | WindowsForms | Syncfusion
description: Learn how to configure the GroupView control so that no items are selected when Button View is enabled in Windows Forms applications.
platform: windowsforms
control: GroupView
documentation: ug
---
# Set No Item Selection When GroupView Button View Is Enabled

When ButtonView is set to `true`, the user cannot set the selected index to -1 to make it as not selected. As an alternative, set the Button View to `false` as a default and in the GroupView's [MouseDown](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.mousedown?redirectedfrom=MSDN&view=netframework-4.7.2) event or [GroupViewItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html) event, set the Button View to `true`.

{% tabs %}

{% highlight C# %} 

// Set Button View in the MouseDown event.

private void groupView1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e) 

{ 

this.groupView1.ButtonView = true; 

} 

 {% endhighlight %}



{% highlight VB %} 

' Set Button View in the MouseDown event. 

Private Sub groupView1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)

Me.groupView1.ButtonView = True

End Sub

{% endhighlight %}

{% endtabs %}
