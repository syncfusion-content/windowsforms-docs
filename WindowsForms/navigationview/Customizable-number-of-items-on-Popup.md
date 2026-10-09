---
layout: post
title: Customizable number of Items on Popup in NavigationView | Syncfusion®
description: Learn about Customizable number of Items on Popup support in Syncfusion® Windows Forms NavigationView control and more details.
platform: windowsforms
control: Navigation View 
documentation: ug
---

# Customizable Number of Items on Popup in Windows Forms NavigationView

NavigationView allows setting the maximum number of items to be displayed on its pop-up and provides an option to cancel the pop-up. The [BarPopup](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationView.html) event can be used to achieve this.

The `BarPopupEventArgs` provides the following members:

* **CurrentBar** - Gets the Bar for which the pop-up is being displayed.
* **Cancel** - Gets or sets a value indicating whether the pop-up should be cancel.
* **MaximumItemsToDisplay** - Gets or sets the maximum number of items to display in the pop-up.

{% tabs %}

{% highlight C# %}

// Handle the BarPopup event.

this.navigationView1.BarPopup += new EventHandler<Syncfusion.Windows.Forms.Tools.BarPopupEventArgs>(navigationView1_BarPopup);

private void navigationView1_BarPopup(object sender, Syncfusion.Windows.Forms.Tools.BarPopupEventArgs e)

{

if (e.CurrentBar.Text.Equals("TestSample"))

{

e.Cancel = true;

}

if (e.CurrentBar.Text.Equals("Program Files"))

{

e.MaximumItemsToDisplay = 13;

}

else

{

e.MaximumItemsToDisplay = 5;

}

}

{% endhighlight %}

{% highlight VB %}

' Handle the BarPopup event.

AddHandler Me.navigationView1.BarPopup, AddressOf navigationView1_BarPopup

Private Sub navigationView1_BarPopup(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.BarPopupEventArgs)

If e.CurrentBar.Text.Equals("TestSample") Then

e.Cancel = True

End If

If e.CurrentBar.Text.Equals("Program Files") Then

e.MaximumItemsToDisplay = 13

Else

e.MaximumItemsToDisplay = 5

End If

End Sub

{% endhighlight %}

{% endtabs %}
