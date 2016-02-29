---
layout: post
title: How to set the GroupView control with no Items selected when the Button View is set to True | Windows Forms | Syncfusion
description: Frequently Asked Questions
platform: windowsforms
control: GroupView
documentation: ug
---
# How to set the GroupView control with no Items selected when the Button View is set to True

When ButtonView is set to 'True', the user cannot set the selected index to -1 to make it as not selected. As an alternative, set the Button View to 'False' as a default and in the GroupView's MouseDown event or GroupViewItemSelected event, set the Button View to 'True'.

The following code snippet illustrates this.

{% highlight C# %} 

// Set Button View in the MouseDown event.

private void groupView1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e) 

{ 

this.groupView1.ButtonView = true; 

} 

 {% endhighlight %}



{% highlight vbnet %} 

' Set Button View in the MouseDown event. 

Private Sub groupView1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)

Me.groupView1.ButtonView = True

End Sub

{% endhighlight %}
