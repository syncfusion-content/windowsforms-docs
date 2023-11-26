---
layout: post
title: MaskedEditBox Events | WindowsForms | Syncfusion
description: Learn here about how to applying the Syncfusion Windows Forms MaskedEditBox control events and usage of events.
platform: WindowsForms
control: MaskedEditBox
documentation: ug
---
# MaskedEditBox Events in MaskedEditBox

The list of events and a detailed explanation about each of them is given in the following sections.


<table>
<tr>
<th>
MaskedEditBox Events</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyleChanged</td><td>
This event occurs when the Border3DStyle property is changed.</td></tr>
<tr>
<td>
BorderColorChanged</td><td>
This event occurs when the BorderColor property is changed.</td></tr>
<tr>
<td>
BorderSidesChanged</td><td>
This event occurs when the BorderSides property is changed.</td></tr>
<tr>
<td>
BorderStyleChanged</td><td>
This event occurs when the ClipText property is changed.</td></tr>
<tr>
<td>
CharacterCasingChanged</td><td>
This event occurs when the CharacterCasing property is changed.</td></tr>
<tr>
<td>
HideSelectionChanged</td><td>
This event occurs when the HideSelection property is changed.</td></tr>
<tr>
<td>
MaskCustomValidate</td><td>
This event is handled to provide custom behavior to any mask characters.</td></tr>
<tr>
<td>
MaskSatisfied</td><td>
This event is raised when the required fields in a mask have been satisfied after new text has been entered / the text changes.</td></tr>
<tr>
<td>
MaximumSizeChanged</td><td>
This event occurs when the MaximumSize property is changed.</td></tr>
<tr>
<td>
MinimumSizeChanged</td><td>
This event occurs when the MinimumSize property is changed.</td></tr>
<tr>
<td>
MultilineChanged</td><td>
This event occurs when the Multiline property is changed.</td></tr>
<tr>
<td>
ReadOnlyChanged</td><td>
This event occurs when the ReadOnly property is changed.</td></tr>
<tr>
<td>
TextAlignChanged</td><td>
This event occurs when the TextAlign property is changed.</td></tr>
<tr>
<td>
ThemesEnabledChanged</td><td>
This event occurs when the ThemesEnabled property is changed.</td></tr>
</table>


## Border3DStyleChanged

This event occurs when the [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle) property is changed. The `Border3DStyle` property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs containing data related to this event. 

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_Border3DStyleChanged(object sender, EventArgs e)
{
    Console.WriteLine(" Border3DStyleChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" Border3DStyleChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## BorderColorChanged

This event occurs when the [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor) property is changed. The `BorderColor` property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %} 

private void maskedEditBox1_BorderColorChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BorderColorChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BorderColorChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## BorderSidesChanged

This event occurs when the [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides) property is changed. The `BorderSides` property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_BorderSidesChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BorderSidesChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BorderSidesChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## BorderStyleChanged

This event occurs when the [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_BorderStyle) property is changed. The `BorderStyle` property indicates whether the edit control should have a border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_BorderStyleChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BorderStyleChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BorderStyleChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## CharacterCasingChanged

This event occurs when the [CharacterCasing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_CharacterCasing) property is changed. The `CharacterCasing` property gets or sets the case of the characters as they are typed.

The event handler receives an argument of type EventArgs containing data related to this event.


{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_CharacterCasingChanged(object sender, EventArgs e)
{
    Console.WriteLine(" CharacterCasingChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_CharacterCasingChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" CharacterCasingChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## HideSelectionChanged

This event occurs when the [HideSelection](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.hideselection?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_HideSelection) property is changed. The `HideSelection` property indicates that the selection should be hidden when the edit control loses focus.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_HideSelectionChanged(object sender, EventArgs e)
{
    Console.WriteLine(" HideSelectionChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_HideSelectionChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" HideSelectionChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## MaskCustomValidate

This event is handled to provide custom behavior to any mask characters.

The event handler receives an argument of type MaskCustomValidateArgs containing data related to this event. The following MaskCustomValidateArgs members provide information specific to this event.



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
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


{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_MaskCustomValidate(object sender, Syncfusion.Windows.Forms.Tools.MaskCustomValidateArgs e)
{
    Console.WriteLine(" MaskCustomValidate event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_MaskCustomValidate(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.MaskCustomValidateArgs)
Console.WriteLine(" MaskCustomValidate event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}


## MaskSatisfied

This event is raised when the required fields in a mask have been satisfied after new text has been entered or the text changes.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_MaskSatisfied(object sender, EventArgs e)
{
    Console.WriteLine(" MaskSatisfied event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_MaskSatisfied(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MaskSatisfied event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## MaximumSizeChanged

This event occurs when the [MaximumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSize) property is changed. The `MaximumSize` property gets or sets the maximum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_MaximumSizeChanged(object sender, EventArgs e)
{   
    Console.WriteLine(" MaximumSizeChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_MaximumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MaximumSizeChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## MinimumSizeChanged

This event occurs when the [MinimumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSize) property is changed. The MinimumSize property gets or sets the minimum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %} 

private void maskedEditBox1_MinimumSizeChanged(object sender, EventArgs e)
{
    Console.WriteLine(" MinimumSizeChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MinimumSizeChanged event is raised ")
End Sub
 
{% endhighlight %}
 
{% endtabs %}

## MultilineChanged

This event occurs when the [Multiline](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_Multiline) property is changed. The `Multiline` property controls whether the text of the edit control can span more than one line or not.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  


private void maskedEditBox1_MultilineChanged(object sender, EventArgs e)
{
    Console.WriteLine(" MultilineChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_MultilineChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MultilineChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## ReadOnlyChanged

This event occurs when the [ReadOnly](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_ReadOnly) property is changed. The `ReadOnly` property controls whether the text in the edit control can be changed or not.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_ReadOnlyChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ReadOnlyChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ReadOnlyChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## TextAlignChanged

This event occurs when the [TextAlign](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalign?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBox_TextAlign) property is changed. The TextAlign property indicates how the text should be aligned for edit controls.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %}  

private void maskedEditBox1_TextAlignChanged(object sender, EventArgs e)
{
    Console.WriteLine(" TextAlignChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_TextAlignChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" TextAlignChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}

## ThemesEnabledChanged

This event occurs when the [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabled) property is changed. The ThemesEnabled property specifies whether or not to use XP Themes when the `BorderStyle` property is set to 'Fixed3D'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}

{% highlight C# %} 

private void maskedEditBox1_ThemesEnabledChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ThemesEnabledChanged event is raised ");
}

{% endhighlight %}

{% highlight VB %} 

Private Sub maskedEditBox1_ThemesEnabledChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ThemesEnabledChanged event is raised ")
End Sub

{% endhighlight %}

{% endtabs %}
