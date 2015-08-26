---
layout: post
title: SetNull 
description: SetNull 
platform: windowsforms
control: Editors Package
documentation: ug
---


# SetNull 

This event occurs when the NULL state is to be set based on a value.

The event handler receives an argument of type SetNullEventArgs containing data related to this event. The following SetNullEventArgs members provide information specific to this event.

Table 305: Members Table

<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be cancelled.</td></tr>
<tr>
<td>
NullValue</td><td>
Returns the NULL value.</td></tr>
</table>



{% highlight C# %}


private void percentTextBox1_SetNull(object sender, Syncfusion.Windows.Forms.Tools.SetNullEventArgs e)

{

Console.WriteLine(" SetNull event is raised ");

}


{% endhighlight %}


{% highlight vbnet %}


Private Sub percentTextBox1_SetNull(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.SetNullEventArgs)

Console.WriteLine(" SetNull event is raised ")

End Sub
{% endhighlight %}