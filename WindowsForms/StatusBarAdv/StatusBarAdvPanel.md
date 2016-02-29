---
layout: post
title: StatusBarAdvPanel | Windows Forms | Syncfusion
description: statusbaradvpanel
platform: windowsforms
control: StatusBarAdv
documentation: ug
---

# StatusBarAdvPanel

StatusBarAdvPanels can also be added to the StatusBarAdv control using the Panels property. On clicking the Panels property, the StatusBarAdvPanel Collection Editor pops up. Using this window, the user can add any number of panels to the control and customize them according to their requirements.

Table 657: Property Table

<table>
<tr>
<th>
StatusBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Panels</td><td>
Indicates the StatusBarAdvPanel controls contained in the StatusBarAdv.</td></tr>
</table>


![](Overview_images/Overview_img70.jpeg) 



## Spacing

The space between the panels can be set using the property given below.

Table 658: Property Table

<table>
<tr>
<th>
StatusBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
Spacing</td><td>
Gets / sets the spacing between the panels.</td></tr>
</table>


{% highlight c# %}



this.statusBarAdv1.Spacing = new System.Drawing.Size(5, 5);

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdv1.Spacing = New System.Drawing.Size(5, 5)

{% endhighlight %}

![](Overview_images/Overview_img71.jpeg) 


## Panel Size

The rectangle that is used to display the panels can be customized using the property given below.

Table 659 : Property Table

<table>
<tr>
<th>
StatusBarAdv Property</th><th>
Description</th></tr>
<tr>
<td>
CustomLayoutBounds</td><td>
Indicates a custom rectangle that the layout will use to display the panels.</td></tr>
</table>


It can be set programmatically through the below code snippet.

{% highlight c# %}



this.statusBarAdv1.CustomLayoutBounds = new System.Drawing.Rectangle(5, 2, 100, 20);

{% endhighlight %}

{% highlight vbnet %}



Me.statusBarAdv1.CustomLayoutBounds = New System.Drawing.Rectangle(5, 2, 100, 20)

{% endhighlight %}

![](Overview_images/Overview_img72.jpeg) 



