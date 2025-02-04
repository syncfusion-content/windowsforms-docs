---
layout: post
title: How-to-add-ImageCollection-to-HubTile-for-Transiti | WindowsForms | Syncfusion®
description: how to add imagecollection to hubtile for transition effects?
platform: wpf
control: TabbedMDIPackage
documentation: ug
---

# How to add ImageCollection to HubTile for transition effects?

You can achieve this requirement using HubTileImageList and ImageListAdv properties.

Property table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
ImageListAdv</td><td>
This property holds to ImageListAdv instance that holds image collection for HubTile transition effects.</td></tr>
<tr>
<td>
ImageList</td><td>
This property holds to ImageList instance that holds image collection for HubTile transition effects.</td></tr>
</table>
This is configured either through code or form designer. 

## Through code

{% tabs %}

{% highlight C# %}



this.HubTile1.ImageListAdv = this.ImageListAdv;



this.HubTile1.ImageList = this.ImageList;


{% endhighlight %}


{% highlight VB %}



Me.HubTile1.ImageListAdv = Me.ImageListAdv



Me.HubTile1.ImageList = Me.ImageList

{% endhighlight %}

{% endtabs %}

## Through designer

The following screenshot displays the ImageListAdv property.

![](How-to-add-ImageCollection-to-HubTile-for-Transiti_images/How-to-add-ImageCollection-to-HubTile-for-Transiti_img1.png)



The following screenshot displays the ImageList property.

![](How-to-add-ImageCollection-to-HubTile-for-Transiti_images/How-to-add-ImageCollection-to-HubTile-for-Transiti_img2.png)



