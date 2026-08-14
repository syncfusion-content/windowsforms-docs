---
layout: post
title: How to Check DrawerPanel Visibility in WinForms NavigationDrawer | Syncfusion®
description: Check whether the DrawerPanel is visible in Syncfusion® Windows Forms Navigation Drawer control using the IsDrawerShowing method and more.
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to Check DrawerPanel Visibility in WinForms NavigationDrawer
This requirement is achieved by using its function named [IsDrawerShowing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.NavigationDrawer.html#Syncfusion_Windows_Forms_Tools_NavigationDrawer_IsDrawerShowing).

{% tabs %}
{% highlight C# %}
//To Define if DrawerPanel is Showing or not
if(this.navigationDrawer1.IsDrawerShowing())
{
// Do necessary settings here
}
{% endhighlight %}
{% highlight VB %}
'To Define if DrawerPanel is Showing or not
If Me.navigationDrawer1.IsDrawerShowing() Then
'Do necessary settings here
End If
{% endhighlight %}
{% endtabs %}
