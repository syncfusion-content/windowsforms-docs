---
layout: post
title: GroupView control with no items selected | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: GroupView
documentation: ug
---
# How to set the GroupView control with no items selected when the button view is set to true?

When ButtonView is set to `true`, the user cannot set the selected index to -1 to make it as not selected. As an alternative, set the Button View to `false` as a default and in the GroupView's [MouseDown](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.mousedown?redirectedfrom=MSDN&view=netframework-4.7.2) event or [GroupViewItemSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.GroupView~GroupViewItemSelected_EV.html) event, set the Button View to `true`.

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
