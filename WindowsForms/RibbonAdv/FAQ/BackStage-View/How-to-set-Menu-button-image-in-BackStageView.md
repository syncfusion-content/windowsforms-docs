---
layout: post
title: How-to-set-Menu-button-image-in-BackStageView
description: how to set menu button image in backstageview?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to set Menu button image in BackStageView?

You can change the BackStage menu button by using the BackStageViewNavigationButtonImage property in BackStageView.

_Table 808: Property Table_

<table>
<tr>
<th>
 Property</th><th>
Description</th></tr>
<tr>
<td>
BackStageViewNavigationButtonImage</td><td>
Gets or sets the Menu button image for BackStageView.</td></tr>
</table>

{% highlight c# %}

//Gets or sets the Menu button image for BackStageView.

this.backStageView1.BackStageViewNavigationButtonImage = global::BackStageCustomization.Properties.Resources.images;

{% endhighlight  %}

{% highlight vbnet %}

'Gets or sets the Menu button image for BackStageView.

Me.backStageView1.BackStageViewNavigationButtonImage = BackStageCustomization.Properties.Resources.images

{% endhighlight  %}

The following screenshot displays the customized menu button in BackStageView.

![](How-to-set-Menu-button-image-in-BackStageView_images/How-to-set-Menu-button-image-in-BackStageView_img1.png)

N> BackStageViewNavigationButtonImage property is only applicable when Ribbon Style is set as Office2013 and TouchStyle.

