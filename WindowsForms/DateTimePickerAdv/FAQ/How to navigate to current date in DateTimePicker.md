---
layout: post
title: How to navigate to current date in DateTimePicker | WindowsForms | Syncfusion
description: Frequently Asked Questions
platform: WindowsForms
control: DateTimePickerAdv
documentation: ug
---

# How to navigate to current date in DateTimePickerAdv ?

In DateTimePicker, we can navigate to current date by using the NavigateToCurrentDate method. We can achieve this by calling this method under any key stroke.

The following code illustrates the same.

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

