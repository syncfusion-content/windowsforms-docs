---
 layout: post
title: ToolTip Support in Windows Forms TreeMap control | Syncfusion
description: Learn about ToolTip Support in Syncfusion Windows Forms TreeMap control, its elements and more details.
platform: windowsforms
control: TreeMap 
documentation: ug
---

# ToolTip Support in Windows Forms TreeMap

Tooltip shows additional information on the tree map control. Visibility of tooltip can be controlled using the [`IsToolTipVisible`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.TreeMap.html#Syncfusion_Windows_Forms_TreeMap_TreeMap_IsTootTipVisible) property. The format of the tooltip header and item can be customized using the [`HeaderToolTipInfo`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.TreeMap.html#Syncfusion_Windows_Forms_TreeMap_TreeMap_HeaderToolTipInfo) and [`ItemToolTipInfo`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.TreeMap.TreeMap.html#Syncfusion_Windows_Forms_TreeMap_TreeMap_ItemToolTipInfo) properties.

#### Code sample

{% tabs %}

{% highlight c# %}

ToolTipInfo itemInfoHead = new ToolTipInfo();

itemInfoHead.ToolTipHeaderPattern = "&lt;b&gt;{Label}&lt;/b&gt;";

itemInfoHead.ToolTipContentPattern = "Growth \t  :  {Growth} % ";

TreeMap1.HeaderToolTipInfo = itemInfoHead;

ToolTipInfo itemInfo = new ToolTipInfo();

itemInfo.ToolTipHeaderPattern = "&lt;b&gt;{Country}&lt;/b&gt;";

itemInfo.ToolTipContentPattern = "Growth \t      :  {Growth} %  \nPopulation   :  {StrPopulation}  ";

TreeMap1.ItemToolTipInfo = itemInfo; 

{% endhighlight %}

{% endtabs %}

![Features_img13](Features_images/Features_img13.png)
