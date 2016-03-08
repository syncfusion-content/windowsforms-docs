---
layout: post
title: How to display DateTimePickerAdv control programmatically? | Windows Forms | Syncfusion
description: how to display datetimepickeradv control programmatically?
platform: windowsforms
control: Calendar 
documentation: ug
---
# How to display DateTimePickerAdv control programmatically?

We can display the Calendar programmatically on a button click. The DisplayCalendar method should be called from the click event handler in order to show the control. 


{% highlight c#  %}


private void button1_Click(object sender, System.EventArgs e)

{

   // Shows the calendar.

this.dateTimePickerAdv1.DisplayCalendar();

}



{% endhighlight  %}
{% highlight vbnet  %}



Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)



   ' Shows the calendar.

Me.dateTimePickerAdv1.DisplayCalendar()

End Sub
{% endhighlight   %}
