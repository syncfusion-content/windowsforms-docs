---
layout: post
title: Dispaly the control programmatically | WindowsForms | Syncfusion
description: Learn here about how to display the Windows Forms DateTimePickerAdv control programmatically on a button click.
platform: WindowsForms
control: DateTimePickerAdv 
documentation: ug
---
# How to display DateTimePickerAdv control programmatically?

We can display the Calendar programmatically on a button click. The [DisplayCalendar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~DisplayCalendar.html) method should be called from the click event handler in order to show the control. 

{% tabs %}

{% highlight C# %}

private void button1_Click(object sender, System.EventArgs e)
{
   // Shows the calendar.
   this.dateTimePickerAdv1.DisplayCalendar();
}

{% endhighlight %}

{% highlight VB %}

Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
   ' Shows the calendar.
   Me.dateTimePickerAdv1.DisplayCalendar()
End Sub

{% endhighlight %}

{% endtabs %}
