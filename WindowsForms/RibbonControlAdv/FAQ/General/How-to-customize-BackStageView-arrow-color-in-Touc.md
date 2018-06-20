---
layout: post
title: How-to-customize-BackStageView-arrow-color-in-Touc | WindowsForms | Syncfusion
description: how to customize backstageview arrow color in touchstyle ribboncontroladv?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to customize BackStageView arrow color in TouchStyle RibbonControlAdv?

In TouchStyle Ribbon, Menu button arrow color can be customized on BackStageView by enabling the “UseTouchStyleArrowColor” property in RibbonControlAdv. It helps to enable the “MenuButtonArrowColor” and “MenuButtonHoverArrowColor” properties in BackStageView.

Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
UseTouchStyleArrowColor</td><td>
Gets or sets whether to use default Menu button Arrow image or GDI rendered menu button Arrow marker.</td></tr>
<tr>
<td>
MenuButtonArrowColor</td><td>
Gets or sets the color for MenuButtonArrow</td></tr>
<tr>
<td>
MenuButtonHoverArrowColor</td><td>
Gets or sets the MenuButtonArrow color on hovering</td></tr>
</table>


N> The“UseTouchStyleArrowColor” property is only applicable when using RibbonStyle as TouchStyle.


{% highlight c# %}


TouchStyleColorTable colorTable = new TouchStyleColorTable();

//Specifies the Menu button arrow color

colorTable.MenuButtonArrowColor = Color.Red;

//Specifies the menu button arrow color on mouse hovering.

colorTable.MenuButtonHoverArrowColor = Color.Gold;

//Specifies whether the MenuButtonArrowColor/MenuButtonHoverArrowColor property is applicable BackStageView.

this.ribbonControlAdv1.UseTouchStyleArrowColor = true;

//To apply the TouchStyleColorTable to RibbonControlAdv.

this.ribbonControlAdv1.ApplyTouchStyleColorTable(colorTable);

{% endhighlight  %}

{% highlight vbnet %}

Dim colorTable As TouchStyleColorTable = New TouchStyleColorTable

'Specifies the Menu button arrow color

colorTable.MenuButtonArrowColor = Color.Red

'Specifies the menu button arrow color on mouse hovering.

colorTable.MenuButtonHoverArrowColor = Color.Gold

'Specifies whether the MenuButtonArrowColor/MenuButtonHoverArrowColor property is applicable BackStageView.

Me.ribbonControlAdv1.UseTouchStyleArrowColor = True

'To apply the TouchStyleColorTable to RibbonControlAdv.

Me.ribbonControlAdv1.ApplyTouchStyleColorTable(colorTable)

{% endhighlight  %}



![](How-to-customize-BackStageView-arrow-color-in-Touc_images/How-to-customize-BackStageView-arrow-color-in-Touc_img2.png)



