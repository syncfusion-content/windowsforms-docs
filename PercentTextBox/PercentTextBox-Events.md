---
layout: post
title: PercentTextBox Events | WindowsForms | Syncfusion
description: PercentTextBox Events
platform: WindowsForms
control: Editors Package
documentation: ug
---

# PercentTextBox Events

The list of events and a detailed explanation about each of them is given in the following sections.



<table>
<tr>
<th>
PercentTextBox Events</th><th>
Description</th></tr>
<tr>
<td>
BindablePercentValueChanged</td><td>
This event occurs when the BindablePercentValue property is changed.</td></tr>
<tr>
<td>
BindableValueChanged</td><td>
This event occurs when the BindableValue property is changed.</td></tr>
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
ClipTextChanged</td><td>
This event occurs when the ClipText property is changed.</td></tr>
<tr>
<td>
DoubleValueChanged</td><td>
This event occurs when the DoubleValue property is changed.</td></tr>
<tr>
<td>
FormattedTextChanged</td><td>
This event occurs when the FormattedText property is changed.</td></tr>
<tr>
<td>
HideSelectionChanged</td><td>
This event occurs when the HideSelection property is changed.</td></tr>
<tr>
<td>
MinimumSizeChanged</td><td>
This event occurs when the MinimumSize property is changed.</td></tr>
<tr>
<td>
MaximumSizeChanged</td><td>
This event occurs when the MaximumSize property is changed.</td></tr>
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
RightToLeftChanged</td><td>
This event occurs when the RightToLeft property is changed.</td></tr>
<tr>
<td>
SetNull</td><td>
This event occurs when the NULL state is to be set based on a value.</td></tr>
<tr>
<td>
TextAlignChanged</td><td>
This event occurs when the TextAlign property is changed.</td></tr>
<tr>
<td>
ThemesEnabledChanged</td><td>
This event occurs when the ThemesEnabled property is changed.</td></tr>
<tr>
<td>
ValidationError</td><td>
This event occurs when the input text is invalid for the current state of the control.</td></tr>
</table>


## BindablePercentValueChanged

This event occurs when the BindablePercentValue property is changed. The BindablePercentValue property is a wrapper property that indicates the percent value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}


private void percentTextBox1_BindablePercentValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" BindablePercentValueChanged event is raised ");

}
{% endhighlight %}


{% highlight vbnet %}





Private Sub percentTextBox1_BindablePercentValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BindablePercentValueChanged event is raised ")

End Sub
{% endhighlight %}


##  BindableValueChanged 

This event occurs when the BindableValue property is changed. The BindableValue property is a wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}



private void percentTextBox1_BindableValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" BindableValueChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}


Private Sub percentTextBox1_BindableValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BindableValueChanged event is raised ")

End Sub
{% endhighlight %}


## Border3DStyleChanged

This event occurs when the Border3DStyle property is changed. The Border3DStyle property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}


private void percentTextBox1_Border3DStyleChanged(object sender, EventArgs e)

{

Console.WriteLine(" Border3DStyleChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" Border3DStyleChanged event is raised ")

End Sub
{% endhighlight %}

# BorderColorChanged 

This event occurs when the BorderColor property is changed. The BorderColor property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_BorderColorChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderColorChanged event is raised ");

}
{% endhighlight %}



{% highlight vbnet %}




Private Sub percentTextBox1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderColorChanged event is raised ")

End Sub
{% endhighlight %}

## BorderSidesChanged 

This event occurs when the BorderSides property is changed. The BorderSides property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_BorderSidesChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderSidesChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderSidesChanged event is raised ")

End Sub
{% endhighlight %}


## BorderStyleChanged 

This event occurs when the BorderStyle property is changed. The BorderStyle property indicates whether the edit control should have a border.

The event handler receives an argument of type EventArgs containing data related to this event.




{% highlight C# %}

private void percentTextBox1_BorderStyleChanged(object sender, EventArgs e)

{

Console.WriteLine(" BorderStyleChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BorderStyleChanged event is raised ")

End Sub
{% endhighlight %}

## ClipTextChanged 

This event occurs when the ClipText property is changed. The ClipText property returns the clipped text without the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_ClipTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" ClipTextChanged event is raised ");

}
{% endhighlight %}





{% highlight vbnet %}



Private Sub percentTextBox1_ClipTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ClipTextChanged event is raised ")

End Sub
{% endhighlight %}


## DoubleValueChanged

This event occurs when the DoubleValue property is changed. The DoubleValue property specifies the double value of the PercentTextBox control.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}




private void percentTextBox1_FormattedTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" DoubleValueChanged event is raised ");

}
{% endhighlight %}


{% highlight vbnet %}


Private Sub percentTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" DoubleValueChanged event is raised ")

End Sub
{% endhighlight %}

## FormattedTextChanged

This event occurs when the FormattedText property is changed. The FormattedText property returns the formatted text with the formatting.



The event handler receives an argument of type EventArgs containing data related to this event.

{% highlight C# %}





private void percentTextBox1_FormattedTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" FormattedTextChanged event is raised ");

}


{% endhighlight %}


{% highlight vbnet %}



Private Sub percentTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" FormattedTextChanged event is raised ")

End Sub
{% endhighlight %}


## HideSelectionChanged 

This event occurs when the HideSelection property is changed. The HideSelection property indicates that the selection should be hidden when the edit control loses focus.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_HideSelectionChanged(object sender, EventArgs e)

{

Console.WriteLine(" HideSelectionChanged event is raised ");

}

{% endhighlight %}


{% highlight vbnet %}


Private Sub percentTextBox1_HideSelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" HideSelectionChanged event is raised ")

End Sub
{% endhighlight %}

## MinimumSizeChanged 

This event occurs when the MinimumSize property is changed. The MinimumSize property gets / sets the minimum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}


private void percentTextBox1_MinimumSizeChanged(object sender, EventArgs e)

{

Console.WriteLine(" MinimumSizeChanged event is raised ");

}
{% endhighlight %}




{% highlight vbnet %}



Private Sub percentTextBox1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MinimumSizeChanged event is raised ")

End Sub
{% endhighlight %}


## MaximumSizeChanged 

This event occurs when the MaximumSize property is changed. The MaximumSize property gets / sets the maximum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}




private void percentTextBox1_MaximumSizeChanged(object sender, EventArgs e)

{

Console.WriteLine(" MaximumSizeChanged event is raised ");

}


{% endhighlight %}

{% highlight vbnet %}



Private Sub percentTextBox1_MaximumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MaximumSizeChanged event is raised ")

End Sub
{% endhighlight %}

## MultilineChanged 

This event occurs when the Multiline property is changed. The Multiline property controls whether the text of the edit control can span more than one line.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}




private void percentTextBox1_MultilineChanged(object sender, EventArgs e)

{

Console.WriteLine(" MultilineChanged event is raised ");

}
{% endhighlight %}




{% highlight vbnet %}



Private Sub percentTextBox1_MultilineChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" MultilineChanged event is raised ")

End Sub
{% endhighlight %}

## ReadOnlyChanged 

This event occurs when the ReadOnly property is changed. The ReadOnly property controls whether the text in the edit control can be changed or not.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_ReadOnlyChanged(object sender, EventArgs e)

{

Console.WriteLine(" ReadOnlyChanged event is raised ");

}

{% endhighlight %}


{% highlight vbnet %}



Private Sub percentTextBox1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ReadOnlyChanged event is raised ")

End Sub
{% endhighlight %}

## RightToLeftChanged 

This event occurs when the RightToLeft property is changed. The RightToLeft property indicates whether the components should be drawn right-to-left for RTL languages.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}


private void percentTextBox1_RightToLeftChanged(object sender, EventArgs e)

{

Console.WriteLine(" RightToLeftChanged event is raised ");

}
{% endhighlight %}




{% highlight vbnet %}


Private Sub percentTextBox1_RightToLeftChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" RightToLeftChanged event is raised ")

End Sub
{% endhighlight %}

## SetNull 

This event occurs when the NULL state is to be set based on a value.

The event handler receives an argument of type SetNullEventArgs containing data related to this event. The following SetNullEventArgs members provide information specific to this event.



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
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


## TextAlignChanged 

This event occurs when the TextAlign property is changed. The TextAlign property indicates how the text should be aligned for edit controls.

The event handler receives an argument of type EventArgs containing data related to this event.


{% highlight C# %}



private void percentTextBox1_TextAlignChanged(object sender, EventArgs e)

{

Console.WriteLine(" TextAlignChanged event is raised ");

}

{% endhighlight %}



{% highlight vbnet %}



Private Sub percentTextBox1_TextAlignChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" TextAlignChanged event is raised ")

End Sub
{% endhighlight %}

## ThemesEnabledChanged 

This event occurs when the ThemesEnabled property is changed. The ThemesEnabled property specifies whether or not to use XP Themes when the BorderStyle property is set to 'Fixed3D'.

The event handler receives an argument of type EventArgs containing data related to this event.



{% highlight C# %}



private void percentTextBox1_ThemesEnabledChanged(object sender, EventArgs e)

{

Console.WriteLine(" ThemesEnabledChanged event is raised ");

}
{% endhighlight %}


{% highlight vbnet %}



Private Sub percentTextBox1_ThemesEnabledChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ThemesEnabledChanged event is raised ")

End Sub
{% endhighlight %}

## ValidationError

This event occurs when the input text is invalid for the current state of the control.

The event handler receives an argument of type ValidationErrorArgs containing data related to this event. The following ValidationErrorArgs members provide information specific to this event.



<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ErrorMessage</td><td>
Returns the error message.</td></tr>
<tr>
<td>
InvalidText</td><td>
Returns the invalid text as it would have been if the error had not intercepted it.</td></tr>
<tr>
<td>
StartPosition</td><td>
Returns the location of the invalid input in the invalid text.</td></tr>
</table>




{% highlight C# %}



private void percentTextBox1_ValidationError(object sender, Syncfusion.Windows.Forms.Tools.ValidationErrorArgs e)

{

Console.WriteLine(" ValidationError event is raised ");

}


{% endhighlight %}


{% highlight vbnet %}




Private Sub percentTextBox1_ValidationError(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.ValidationErrorArgs)

Console.WriteLine(" ValidationError event is raised ")

End Sub
{% endhighlight %}
