---
layout: post
title: TextBoxExt-Events
description: textboxext events
platform: windowsforms
control: Editors Package
documentation: ug
---

# TextBoxExt Events 

The list of events and a detailed explanation about each of them is given in the following sections.

_Table_ _378_: _Events Table_

<table>
<tr>
<th>
NumericUpDownExt Events</th><th>
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

This event occurs when the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_Border3DStyleChanged(object sender, EventArgs e)

{

	Console.WriteLine(" Border3DStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

	Private Sub textBoxExt1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" Border3DStyleChanged event is raised ")

	End Sub

{% endhighlight %}

## BorderColorChanged

This event occurs when the BorderColor property is changed. The BorderColor property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

	private void textBoxExt1_BorderColorChanged(object sender, EventArgs e)

	{

	Console.WriteLine(" BorderColorChanged event is raised ");

	}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" BorderColorChanged event is raised ")

End Sub

{% endhighlight %}

## BorderSidesChanged

This event occurs when the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_BorderSidesChanged(object sender, EventArgs e)

{

	Console.WriteLine(" BorderSidesChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" BorderSidesChanged event is raised ")

End Sub

{% endhighlight %}

## BorderStyleChanged

This event occurs when the BorderStyle property is changed. The BorderStyle property indicates whether the edit control should have a border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_BorderStyleChanged(object sender, EventArgs e)

{

	Console.WriteLine(" BorderStyleChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" BorderStyleChanged event is raised ")

End Sub

{% endhighlight %}

## CharacterCasingChanged

This event occurs when the CharacterCasing property is changed. The CharacterCasing property gets / sets the case of the characters as they are typed.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_CharacterCasingChanged(object sender, EventArgs e)

{

	Console.WriteLine(" CharacterCasingChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_CharacterCasingChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" CharacterCasingChanged event is raised ")

End Sub

{% endhighlight %}

## HideSelectionChanged

This event occurs when the HideSelection property is changed. The HideSelection property indicates that the selection should be hidden when the edit control loses focus.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_HideSelectionChanged(object sender, EventArgs e)

{

	Console.WriteLine(" HideSelectionChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_HideSelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" HideSelectionChanged event is raised ")

End Sub

{% endhighlight %}

## MaximumSizeChanged 

This event occurs when the MaximumSize property is changed. The MaximumSize property gets / sets the maximum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_MaximumSizeChanged(object sender, EventArgs e)

{

	Console.WriteLine(" MaximumSizeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_MaximumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" MaximumSizeChanged event is raised ")

End Sub

{% endhighlight %}

## MinimumSizeChanged 

This event occurs when the MinimumSize property is changed. The MinimumSize property gets / sets the minimum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_MinimumSizeChanged(object sender, EventArgs e)

{

	Console.WriteLine(" MinimumSizeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" MinimumSizeChanged event is raised ")

End Sub

{% endhighlight %}

## MultilineChanged 

This event occurs when the Multiline property is changed. The Multiline property controls whether the text of the edit control can span more than one line.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_MultilineChanged(object sender, EventArgs e)

{

	Console.WriteLine(" MultilineChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_MultilineChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" MultilineChanged event is raised ")

End Sub

{% endhighlight %}

## ReadOnlyChanged 

This event occurs when the ReadOnly property is changed. The ReadOnly property controls whether the text in the edit control can be changed or not.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_ReadOnlyChanged(object sender, EventArgs e)

{

	Console.WriteLine(" ReadOnlyChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" ReadOnlyChanged event is raised ")

End Sub

{% endhighlight %}

## TextAlignChanged 

This event occurs when the TextAlign property is changed. The TextAlign property indicates how the text should be aligned for edit controls.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_TextAlignChanged(object sender, EventArgs e)

{

	Console.WriteLine(" TextAlignChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_TextAlignChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" TextAlignChanged event is raised ")

End Sub

{% endhighlight %}

## ThemesEnabledChanged

This event occurs when the ThemesEnabled property is changed. The ThemesEnabled property specifies whether or not to use XP Themes when the BorderStyle property is set to 'Fixed3D'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight c# %}

private void textBoxExt1_ThemesEnabledChanged(object sender, EventArgs e)

{

	Console.WriteLine(" ThemesEnabledChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub textBoxExt1_ThemesEnabledChanged(ByVal sender As Object, ByVal e As EventArgs)

	Console.WriteLine(" ThemesEnabledChanged event is raised ")

End Sub

{% endhighlight %}