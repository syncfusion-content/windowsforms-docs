---
layout: post
title: PercentTextBox Events in Windows Forms Percent TextBox | Syncfusion
description: Learn about PercentTextBox Events support in Syncfusion Windows Forms Percent TextBox control and more details.
platform: WindowsForms
control: Editors Package
documentation: ug
---

# PercentTextBox Events in Windows Forms Percent TextBox

The list of events and a detailed explanation about each of them is given in the following sections.

* [BindablePercentValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_BindablePercentValueChanged)
* [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValueChanged)
* [Border3DStyleChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyleChanged)
* [BorderColorChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColorChanged)
* [BorderSidesChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSidesChanged)
* [BorderStyleChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstylechanged?redirectedfrom=MSDN&view=netframework-4.7.2)
* [ClipTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipTextChanged)
* [DoubleValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_DoubleValueChanged)
* [FormattedTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_FormattedTextChanged)
* [HideSelectionChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.hideselectionchanged?redirectedfrom=MSDN&view=netframework-4.7.2)
* [MinimumSizeChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSizeChanged)
* [MaximumSizeChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSizeChanged)
* [MultilineChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.multilinechanged?redirectedfrom=MSDN&view=netframework-4.7.2)
* [ReadOnlyChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonlychanged?redirectedfrom=MSDN&view=netframework-4.7.2)
* [RightToLeftChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleftchanged?redirectedfrom=MSDN&view=netframework-4.7.2)
* [SetNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SetNull)
* [TextAlignChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalignchanged?redirectedfrom=MSDN&view=netframework-4.7.2)
* [ThemesEnabledChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabledChanged)
* [ValidationError](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ValidationError)

## BindablePercentValueChanged

This [BindablePercentValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_BindablePercentValueChanged) event occurs when the [BindablePercentValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_BindablePercentValue) property is changed. The [BindablePercentValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_BindablePercentValue) property is a wrapper property that indicates the percent value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_BindablePercentValueChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BindablePercentValueChanged event is raised ");
}
{% endhighlight %}
{% highlight vb %}
Private Sub percentTextBox1_BindablePercentValueChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BindablePercentValueChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## BindableValueChanged 

This [BindableValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValueChanged) event occurs when the [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue) property is changed. The [BindableValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_BindableValue) property is a wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_BindableValueChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BindableValueChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub percentTextBox1_BindableValueChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BindableValueChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## Border3DStyleChanged

This [Border3DStyleChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyleChanged) event occurs when the [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle) property is changed. The [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Border3DStyle) property indicates the style of the 3D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_Border3DStyleChanged(object sender, EventArgs e)
{
    Console.WriteLine(" Border3DStyleChanged event is raised ");
}
{% endhighlight %}
{% highlight vb %}
Private Sub percentTextBox1_Border3DStyleChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" Border3DStyleChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## BorderColorChanged 

This [BorderColorChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColorChanged) event occurs when the [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor) property is changed. The [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderColor) property indicates the color of the 2D border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_BorderColorChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BorderColorChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub percentTextBox1_BorderColorChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BorderColorChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## BorderSidesChanged 

This [BorderSidesChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSidesChanged) event occurs when the [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides) property is changed. The [BorderSides](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_BorderSides) property indicates the border sides of the panel.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_BorderSidesChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BorderSidesChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_BorderSidesChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BorderSidesChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## BorderStyleChanged 

This [BorderStyleChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstylechanged?redirectedfrom=MSDN&view=netframework-4.7.2) event occurs when the [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_BorderStyle) property is changed. The [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_BorderStyle) property indicates whether the edit control should have a border.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_BorderStyleChanged(object sender, EventArgs e)
{
    Console.WriteLine(" BorderStyleChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_BorderStyleChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" BorderStyleChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## ClipTextChanged 

This [ClipTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ClipTextChanged) event occurs when the [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_ClipText) property is changed. The [ClipText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_ClipText) property returns the clipped text without the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_ClipTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ClipTextChanged event is raised ");
}
{% endhighlight %}
{% highlight vb %}
Private Sub percentTextBox1_ClipTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ClipTextChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## DoubleValueChanged

This [DoubleValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_DoubleValueChanged) event occurs when the [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_DoubleValue) property is changed. The [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_DoubleValue) property specifies the double value of the PercentTextBox control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_FormattedTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" DoubleValueChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" DoubleValueChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## FormattedTextChanged

This [FormattedTextChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_FormattedTextChanged) event occurs when the [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_FormattedText) property is changed. The [FormattedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.PercentTextBox.html#Syncfusion_Windows_Forms_Tools_PercentTextBox_FormattedText) property returns the formatted text with the formatting.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_FormattedTextChanged(object sender, EventArgs e)
{
    Console.WriteLine(" FormattedTextChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_FormattedTextChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" FormattedTextChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## HideSelectionChanged 

This [HideSelectionChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.hideselectionchanged?redirectedfrom=MSDN&view=netframework-4.7.2) event occurs when the [HideSelection](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.hideselection?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_HideSelection) property is changed. The [HideSelection](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.hideselection?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_HideSelection) property indicates that the selection should be hidden when the edit control loses focus.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_HideSelectionChanged(object sender, EventArgs e)
{
    Console.WriteLine(" HideSelectionChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_HideSelectionChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" HideSelectionChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## MinimumSizeChanged 

This [MinimumSizeChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSizeChanged) event occurs when the [MinimumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSize) property is changed. The [MinimumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MinimumSize) property gets / sets the minimum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_MinimumSizeChanged(object sender, EventArgs e)
{
    Console.WriteLine(" MinimumSizeChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_MinimumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MinimumSizeChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## MaximumSizeChanged 

This [MaximumSizeChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSizeChanged) event occurs when the [MaximumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSize) property is changed. The [MaximumSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_MaximumSize) property gets / sets the maximum size of the control.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_MaximumSizeChanged(object sender, EventArgs e)
{
    Console.WriteLine(" MaximumSizeChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_MaximumSizeChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MaximumSizeChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## MultilineChanged 

This [MultilineChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.multilinechanged?redirectedfrom=MSDN&view=netframework-4.7.2) event occurs when the [Multiline](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.multiline?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_Multiline) property is changed. The [Multiline](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.multiline?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_Multiline) property controls whether the text of the edit control can span more than one line.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_MultilineChanged(object sender, EventArgs e)
{
    Console.WriteLine(" MultilineChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_MultilineChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" MultilineChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## ReadOnlyChanged 

This [ReadOnlyChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonlychanged?redirectedfrom=MSDN&view=netframework-4.7.2) event occurs when the [ReadOnly](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_ReadOnly) property is changed. The [ReadOnly](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.readonly?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_ReadOnly) property controls whether the text in the edit control can be changed or not.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_ReadOnlyChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ReadOnlyChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ReadOnlyChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## RightToLeftChanged 

This [RightToLeftChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.control.righttoleftchanged?redirectedfrom=MSDN&view=netframework-4.7.2) event occurs when the [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property is changed. The [RightToLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_RightToLeft) property indicates whether the components should be drawn right-to-left for RTL languages.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_RightToLeftChanged(object sender, EventArgs e)
{
    Console.WriteLine(" RightToLeftChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_RightToLeftChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" RightToLeftChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## SetNull 

This [SetNull](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_SetNull) event occurs when the NULL state is to be set based on a value.

The event handler receives an argument of type [SetNullEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SetNullEventArgs.html) containing data related to this event. The following [SetNullEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.SetNullEventArgs.html) members provide information specific to this event.

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

{% tabs %}
{% highlight C# %}

private void percentTextBox1_SetNull(object sender, Syncfusion.Windows.Forms.Tools.SetNullEventArgs e)
{
    Console.WriteLine(" SetNull event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_SetNull(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.SetNullEventArgs)
Console.WriteLine(" SetNull event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## TextAlignChanged 

This [TextAlignChanged](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalignchanged?redirectedfrom=MSDN&view=netframework-4.7.2) event occurs when the [TextAlign](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_TextAlign) property is changed. The [TextAlign](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textbox.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBox_TextAlign) property indicates how the text should be aligned for edit controls.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}

private void percentTextBox1_TextAlignChanged(object sender, EventArgs e)
{
    Console.WriteLine(" TextAlignChanged event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_TextAlignChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" TextAlignChanged event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}

## ThemesEnabledChanged 

This [ThemesEnabledChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabledChanged) event occurs when the [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabled) property is changed. The [ThemesEnabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_ThemesEnabled) property specifies whether or not to use XP Themes when the [BorderStyle](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.borderstyle?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_TextBoxBase_BorderStyle) property is set to 'Fixed3D'.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight C# %}
private void percentTextBox1_ThemesEnabledChanged(object sender, EventArgs e)
{
    Console.WriteLine(" ThemesEnabledChanged event is raised ");
}
{% endhighlight %}
{% highlight VB %}
Private Sub percentTextBox1_ThemesEnabledChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" ThemesEnabledChanged event is raised ")
End Sub
{% endhighlight %}
{% endtabs %}

## ValidationError

This [ValidationError](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NumberTextBoxBase.html#Syncfusion_Windows_Forms_Tools_NumberTextBoxBase_ValidationError) event occurs when the input text is invalid for the current state of the control.

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

{% tabs %}
{% highlight C# %}

private void percentTextBox1_ValidationError(object sender, Syncfusion.Windows.Forms.Tools.ValidationErrorArgs e)
{
    Console.WriteLine(" ValidationError event is raised ");
}

{% endhighlight %}

{% highlight vb %}

Private Sub percentTextBox1_ValidationError(ByVal sender As Object, ByVal e AsSyncfusion.Windows.Forms.Tools.ValidationErrorArgs)
Console.WriteLine(" ValidationError event is raised ")
End Sub

{% endhighlight %}
{% endtabs %}
