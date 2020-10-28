---
layout: post
title: Navigate to date | DateTimePickerAdv | WindowsForms | Syncfusion
description: Learn here about how to navigate or select to current date in the Windows Forms DateTimePickerAdv control.
platform: WindowsForms
control: DateTimePickerAdv
documentation: ug
---

# How to navigate to current date in DateTimePickerAdv ?

In DateTimePicker, we can navigate to current date by using the [NavigateToCurrentDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DateTimePickerAdv.html#Syncfusion_Windows_Forms_Tools_DateTimePickerAdv_NavigateToCurrentDate_System_Boolean_) method.

For example, it is possible to select current date on Enter key press and the following code illustrates the same.

{% tabs %}

{% highlight C# %}

void dateTimePickerAdv1_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
{
   // On pressing Enter key, date time picker navigates to current date.
   if(e.KeyData== Keys.Enter)
    this.dateTimePickerAdv1.NavigateToCurrentDate(true);
}

{% endhighlight %}

{% highlight VB %}

Private Sub dateTimePickerAdv1_PreviewKeyDown(ByVal sender As Object, ByVal e As PreviewKeyDownEventArgs)
   ' On pressing Enter key, date time picker navigates to current date.
   If e.KeyData= Keys.Enter Then
    Me.dateTimePickerAdv1.NavigateToCurrentDate(True)
   End If
End Sub

{% endhighlight %}

{% endtabs %}

