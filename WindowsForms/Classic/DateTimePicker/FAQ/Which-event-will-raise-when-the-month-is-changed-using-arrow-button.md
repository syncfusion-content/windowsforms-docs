---
layout: post
title: Which Event will Raise when the Month is Changed using Arrow Button in Windows Forms xptoolbar control | Syncfusion
description: Learn about Which Event will Raise when the Month is Changed using Arrow Button support in Syncfusion Windows Forms DateTimePickerAdv(Classic) control and more details.
platform: WindowsForms
control: Calendar 
documentation: ug
---
# Which Event will Raise when the Month is Changed using Arrow Button in Windows Forms DateTimePickerAdv(Classic)

When the month in the DateTimePickerAdv is changed using Arrow button, ValueChanged event is raised.

{% tabs %}

{% highlight C#  %}

this.dateTimePickerAdv1.ValueChanged += new EventHandler(dateTimePickerAdv1_ValueChanged);
private void dateTimePickerAdv1_ValueChanged(object sender, EventArgs e)
{
    if (Control.MouseButtons != MouseButtons.None)
    {
        Console.WriteLine("Month Changed using ArrowButton");
    }
}

{% endhighlight  %}

{% highlight VB  %}

Me.dateTimePickerAdv1.ValueChanged += New EventHandler(dateTimePickerAdv1_ValueChanged)
Private Sub dateTimePickerAdv1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    If Control.MouseButtons <> MouseButtons.None Then
        Console.WriteLine("Month Changed using ArrowButton")
    End If
End Sub

{% endhighlight   %}

{% endtabs %}
