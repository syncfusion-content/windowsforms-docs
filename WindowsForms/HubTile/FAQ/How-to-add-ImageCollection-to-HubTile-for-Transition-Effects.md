---
layout: post
title: Frequently Asked Questions
description: Frequently Asked Questions
platform: WindowsForms
control: HubTile
documentation: ug
---

# How to add ImageCollection to HubTile for Transition Effects?



You can achieve this requirement using HubTile ImageList and ImageListAdv properties.

_Table 981: Property Table_

<Table>
<tr>
<th>Property</th>
<th>Description</th>
</tr>
<tr>
<td>ImageListAdv</td>
<td>This property holds to ImageListAdv instance that holds image collection for HubTile transition effects.</td>
</tr>
<tr>
<td>ImageList</td>
<td>This property holds to ImageList instance that holds image collection for HubTile transition effects.</td>
</tr>
</Table>
 

This is configured either through code or form designer.

#### Through Code

{% highlight C# %}  

 

this.HubTile1.ImageListAdv = this.ImageListAdv;

 

this.HubTile1.ImageList = this.ImageList;

 {% endhighlight %}

{% highlight vbnet %} 
 

Me.HubTile1.ImageListAdv = Me.ImageListAdv

 

Me.HubTile1.ImageList = Me.ImageList

{% endhighlight %}

#### Through Designer

The following screenshot displays the ImageListAdv property.


![](Frequently-asked-questions-images/FAQ_img1.png)
Figure 1650 : ImageListAdv property

The following screenshot displays the ImageList property.


![](Frequently-asked-questions-images/FAQ_img2.png)
Figure 1651 : ImageList Property