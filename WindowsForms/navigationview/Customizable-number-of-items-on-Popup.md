---
layout: post
title: Customizable number of Items on Popup in NavigationView | Syncfusion
description: Learn about Customizable number of Items on Popup support in Syncfusion Windows Forms NavigationView control and more details.
platform: WindowsForms
control: Navigation View 
documentation: ug
---

# Customizable number of Items on Popup in Windows Forms NavigationView

Navigation View now allows setting the maximum number of items to be displayed on its pop-up and has an option to cancel the pop-up. [BarPopUp](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationView.html#Syncfusion_Windows_Forms_Tools_NavigationView_BarPopup) event can be used to achieve this.

{% tabs %}

{% highlight C# %}

// Sets the maximum items to be displayed.

Private this.navigationView1.BarPopup += new EventHandler<Syncfusion.Windows.Forms.Tools.BarPopupEventArgs>(navigationView1_BarPopup)

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

‘Sets the maximum Items to be displayed.

Private Me.navigationView1.BarPopup += New EventHandler(Of Syncfusion.Windows.Forms.Tools.BarPopupEventArgs)(AddressOf navigationView1_BarPopup)

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
