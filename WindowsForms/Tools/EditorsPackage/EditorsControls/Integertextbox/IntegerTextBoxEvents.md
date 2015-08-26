---
layout: post
title: Editors-Package
description: editors package
platform: WindowsForms
control: Tools
documentation: ug
---

# IntegerTextBox Events

The list of events and a detailed explanation about each of them is given in the following sections.

_Table_ _280__: Events Table_

<table>
<tr>
<th>
IntegerTextBox Events</th><th>
Description</th></tr>
<tr>
<td>
BindableValueChanged</td><td>
This event occurs when the BindableValue property is changed.</td></tr>
<tr>
<td>
ClipTextChanged</td><td>
This event occurs when the ClipText property is changed.</td></tr>
<tr>
<td>
FormattedTextChanged</td><td>
This event occurs when the FormattedText property is changed.</td></tr>
<tr>
<td>
IntegerValueChanged</td><td>
This event occurs when the IntegerValue property is changed.</td></tr>
<tr>
<td>
SetNull</td><td>
This event occurs when the NULL state is to be set based on a value.</td></tr>
<tr>
<td>
ValidationError</td><td>
This event occurs when the input text is invalid for the current state of the control.</td></tr>
</table>


## BindableValueChanged

This event occurs when the BindableValue property is changed. The BindableValue property is a wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.

{%highlight c#%}

private void integerTextBox1_BindableValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" BindableValueChanged event is raised ");

}

{%endhighlight%}

{%highlight vbnet%}


Private Sub integerTextBox1_BindableValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" BindableValueChanged event is raised ")


End Sub


{%endhighlight%}


## ClipTextChanged

This event occurs when the ClipText property is changed. The ClipText property returns the clipped text without the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{%highlight c#%}



private void integerTextBox1_ClipTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" ClipTextChanged event is raised ");

}

{%endhighlight%}


{%highlight vbnet%}



Private Sub integerTextBox1_ClipTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ClipTextChanged event is raised ")

End Sub

{%endhighlight%}

## FormattedTextChanged

This event occurs when the FormattedText property is changed. The FormattedText property returns the formatted text with the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{%highlight c#%}



private void integerTextBox1_FormattedTextChanged(object sender, EventArgs e)

{

Console.WriteLine(" FormattedTextChanged event is raised ");

}


{%endhighlight%}

{%highlight vbnet%}

Private Sub integerTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" FormattedTextChanged event is raised ")

End Sub

{%endhighlight%}

## IntegerValueChanged

This event occurs when the IntegerValue property is changed. The IntegerValue property specifies the integer value of the text.

The event handler receives an argument of type EventArgs containing data related to this event.

{%highlight c#%}



private void integerTextBox1_IntegerValueChanged(object sender, EventArgs e)

{

Console.WriteLine(" IntegerValueChanged event is raised ");

}

{%endhighlight%}

{%highlight vbnet%}

Private Sub integerTextBox1_IntegerValueChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" IntegerValueChanged event is raised ")

End Sub

{%endhighlight%}

## SetNull

This event occurs when the NULL state is to be set based on a value.

The event handler receives an argument of type SetNullEventArgs containing data related to this event. The following SetNullEventArgs members provide information specific to this event.

_Table_ _281__: Members Table_

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
NullValue</td><td>
Returns the NULL value.</td></tr>
</table>


{%highlight c#%}



private void integerTextBox1_SetNull(object sender, Syncfusion.Windows.Forms.Tools.SetNullEventArgs e)

{

Console.WriteLine(" SetNull event is raised ");

}

{%endhighlight%}

{%highlight vbnet%}

Private Sub integerTextBox1_SetNull(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.SetNullEventArgs)

Console.WriteLine(" SetNull event is raised ")

End Sub

{%endhighlight%}


## ValidationError

This event occurs when the input text is invalid for the current state of the control.

The event handler receives an argument of type ValidationErrorArgs containing data related to this event. The following ValidationErrorArgs members provide information specific to this event.

_Table_ _282__: Members Table_

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


{%highlight c#%}



private void integerTextBox1_ValidationError(object sender, Syncfusion.Windows.Forms.Tools.ValidationErrorArgs e)

{

Console.WriteLine(" ValidationError event is raised ");

}

{%endhighlight%}


{%highlight vbnet%}

Private Sub integerTextBox1_ValidationError(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.ValidationErrorArgs)

Console.WriteLine(" ValidationError event is raised ")

End Sub

{%endhighlight%}