---
layout: post
title: Tooltip-Support
description: tooltip support
platform: WindowsForms
control: TreeMap 
documentation: ug
---

# Tooltip Support

Visibility of tooltips can be specified by the IsToolTipVisible property of the TreeMap control. The format of the tooltip header and item can be customized through the HeaderToolTipInfo and ItemToolTipInfo properties.

Code Sample

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




![](Features_images/Features_img13.png)
