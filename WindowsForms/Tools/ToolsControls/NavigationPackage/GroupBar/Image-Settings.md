---
layout: post
title: Image Settings
description: Image Settings
platform: windowsforms
control: GroupBar
documentation: ug
---
# Image Settings

This section describes the image settings available for GroupBar Items.

Large images can be set for GroupBar Items using the following properties.

_Table_ _543__: Property Table_

<table>
<tr>
<td>
GroupBarItem Property</td><td>
Description</td></tr>
<tr>
<td>
LargeImageMode</td><td>
Specifies whether large images can be set for the GroupBar Item's client control.</td></tr>
<tr>
<td>
Image</td><td>
Specifies the image for the GroupBar Item's client control. </td></tr>
</table>



{% highlight C# %}  

this.groupBarItem1.LargeImageMode = true;

this.groupBarItem1.Image = ((System.Drawing.Image)(resources.GetObject("groupBarItem1.Image")));

{% endhighlight %}


{% highlight vbnet %} 

Me.groupBarItem1.LargeImageMode = True

Me.groupBarItem1.Image = (CType(resources.GetObject("groupBarItem1.Image"), System.Drawing.Image))

{% endhighlight %}

![](Overview_images/Overview_img18.jpeg) 
Figure 929: Large Images displayed on the Headers of GroupBar Items

Users can also display the selected GroupBar Item's image on the header of the Stacked GroupBar. This can be achieved by 
setting the ShowItemImageInHeader propertyto 'True'. 



{% highlight C# %}  

this.groupBar1.ShowItemImageInHeader = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.ShowItemImageInHeader = True

{% endhighlight %}


![](Overview_images/Overview_img19.jpeg) 
Figure 930: Image displayed on the Header of the Stacked GroupBar
