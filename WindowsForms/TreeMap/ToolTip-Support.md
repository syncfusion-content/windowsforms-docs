---
layout: post
title: Tooltip-Support | Windows Forms | Syncfusion
description: tooltip support
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Tooltip Support

Tooltip shows additional information on the tree map control.Visibility of tooltip can be controlled by the [`IsToolTipVisible`](https://help.syncfusion.com/cr/cref_files/windowsforms/treemap/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.TreeMap~IsTootTipVisible.html) property. The format of the tooltip header and item can be customized through the [`HeaderToolTipInfo`](https://help.syncfusion.com/cr/cref_files/windowsforms/treemap/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.TreeMap~HeaderToolTipInfo.html) and [`ItemToolTipInfo`](https://help.syncfusion.com/cr/cref_files/windowsforms/treemap/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.TreeMap~ItemToolTipInfo.html) properties.

#### Code Sample

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

![](Features_images/Features_img13.png)
