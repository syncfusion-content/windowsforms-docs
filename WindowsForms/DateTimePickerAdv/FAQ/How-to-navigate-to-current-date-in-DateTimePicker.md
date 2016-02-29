---
layout: post
title: How to navigate to current date in DateTimePicker | Windows Forms | Syncfusion
description: Frequently Asked Questions
platform: windowsforms
control: DateTimePickerAdv
documentation: ug
---

# How to navigate to current date in DateTimePickerAdv ?

In DateTimePicker, we can navigate to current date by using the `NavigateToCurrentDate` method. 

For example, it is possible to select current date on Enter key press and the following code illustrates the same.

{% highlight c# %}

void dateTimePickerAdv1_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)

{

// On pressing Enter key, date time picker navigates to current date.

if(e.KeyData== Keys.Enter)

this.dateTimePickerAdv1.NavigateToCurrentDate(true);

}

{% endhighlight %}

{% highlight vb.net %}

Private Sub dateTimePickerAdv1_PreviewKeyDown(ByVal sender As Object, ByVal e As PreviewKeyDownEventArgs)

' On pressing Enter key, date time picker navigates to current date.

If e.KeyData= Keys.Enter Then

Me.dateTimePickerAdv1.NavigateToCurrentDate(True)

End If

End Sub

{% endhighlight %}

