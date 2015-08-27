---
layout: post
title: MaskCustomValidate
description:  MaskedEditBox Events
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# MaskCustomValidate

This event is handled to provide custom behavior to any mask characters.

The event handler receives an argument of type MaskCustomValidateArgs containing data related to this event. The following MaskCustomValidateArgs members provide information specific to this event.

_Table_ _350__: Members Table_

<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
Accepted</td><td>
Indicates whether the event has been handled and no further processing of the event should happen.</td></tr>
<tr>
<td>
CurrentCharacter</td><td>
Returns the current character.</td></tr>
<tr>
<td>
CurrentIndex</td><td>
Returns the current position. It will be a valid mask position.</td></tr>
<tr>
<td>
CurrentMaskCharacter</td><td>
Returns the current mask character.</td></tr>
<tr>
<td>
Handled</td><td>
Indicates whether the event has been handled and no further processing of the event should happen.</td></tr>
</table>


{% highlight C# %}  



private void maskedEditBox1_MaskCustomValidate(object sender, Syncfusion.Windows.Forms.Tools.MaskCustomValidateArgs e)

{

Console.WriteLine(" MaskCustomValidate event is raised ");

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub maskedEditBox1_MaskCustomValidate(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.MaskCustomValidateArgs)

Console.WriteLine(" MaskCustomValidate event is raised ")

End Sub

{% endhighlight %}