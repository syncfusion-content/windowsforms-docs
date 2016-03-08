---
layout: post
title: Which event will raise when the month is changed using arrow button? | Windows Forms | Syncfusion
description: Which event will raise when the month is changed using arrow button?
platform: windowsforms
control: Calendar 
documentation: ug
---
# Which event will raise when the month is changed using arrow button?

 When the month in the DateTimePickerAdv is changed using Arrow button, ValueChanged event is raised.



{% highlight c#  %}

this.dateTimePickerAdv1.ValueChanged += new EventHandler(dateTimePickerAdv1_ValueChanged);



private void dateTimePickerAdv1_ValueChanged(object sender, EventArgs e)

{

    if (Control.MouseButtons != MouseButtons.None)

    {

        Console.WriteLine("Month Changed using ArrowButton");

    }

}


{% endhighlight  %}
{% highlight vbnet  %}




Me.dateTimePickerAdv1.ValueChanged += New EventHandler(dateTimePickerAdv1_ValueChanged)



Private Sub dateTimePickerAdv1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)

    If Control.MouseButtons <> MouseButtons.None Then

        Console.WriteLine("Month Changed using ArrowButton")

    End If

End Sub
{% endhighlight   %}
