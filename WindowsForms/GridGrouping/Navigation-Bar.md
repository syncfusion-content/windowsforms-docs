---
layout: post
title: Navigation-Bar | WindowsForms | Syncfusion
description: navigation bar
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Navigation Bar

Grid Grouping control comes with an in-built Navigation Control that allows the user to browse through the records with ease. The navigation bar consists of buttons that facilitate navigation to first, next, previous, last records and also to the AddNew record in the grid. It also contains a label that displays the current record number together with the total record count.

NavigationBar can be enabled by setting ShowNavigationBar to true. It is possible to customize default appearance of the navigation bar by setting appropriate properties. Tooltips can be enabled for the navigation bar by setting the property, ShowNavigationBarToolTips to true. ShowNavigationBar must be set to true to enable tooltips.

  

<table>
<tr>
<th>
GRID GROUPING CONTROL PROPERTY</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
ShowNavigationBar</td><td>
Specifies whether to show the record navigation bar.</td></tr>
<tr>
<td>
ShowNavigationBarToolTips</td><td>
Specifies whether to show tooltips when the user hovers the mouse over the elements of the RecordNavigationBar.</td></tr>
</table>


The following code examples illustrate the above settings.



{% highlight C# %}  



this.gridGroupingControl1.ShowNavigationBar = true;

this.gridGroupingControl1.ShowNavigationBarToolTips = true;

{% endhighlight %}

{% highlight vbnet %} 



Private Me.gridGroupingControl1.ShowNavigationBar = True

Private Me.gridGroupingControl1.ShowNavigationBarToolTips = True


{% endhighlight %}

 Through Designer

 ![](Navigation-Bar_images/Navigation-Bar_img1.jpeg) 





Output

 ![](Navigation-Bar_images/Navigation-Bar_img2.jpeg) 





