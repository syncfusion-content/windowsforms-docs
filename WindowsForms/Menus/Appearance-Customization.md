---
layout: post
title: Appearance Customization in Menus | Windows Forms | Syncfusion
description: Appearance customization in menu control
platform: WindowsForms
control: MainFrameBarManager 
documentation: ug
---

# Appearance Customization

In this section the appearance customization of the menu and child menu items is discussed.

## Customizing bar styles

The menu bar appearance can be customized with the usage scenario depending upon the menu items it holds. The following are the bar styles suppoterd in menu control.

* None
* AllowQuickCustomizing
* IsMainMenu
* MultiLine
* RotateWhenVertical
* Visible
* UseWholeRow
* DrawDragBorder
* IsStatusBar
* TextBelowImage

The enum value of `BarStyle` cam also be adjoined to represent the bar with combined applied styles. The below image shows the bar items are combined with the `Visible` value.

![Bar enabled with customzining options](Appearance-Customization-images/barStyle_AllowQuickCustomizing.png)*Allow Quick Customizing*

![Bar applied with Drag drop border style](Appearance-Customization-images/barStyle_DrawDragBorder.png)*Draw drag-drop border*

![Bar applied with main menu style](Appearance-Customization-images/barStyle_IsMainMenu.png)*Main menu*

![Bar applied with status bar style](Appearance-Customization-images/barStyle_IsStatusBar.png)*Status bar*

The below code snippet shows the bar style is being applied with `IsMainMenu` style.

{% tabs %}

{% highlight C# %}

this.bar1.BarStyle = BarStyle.IsMainMenu | BarStyle.Visible;

{% endhighlight %}

{% highlight VB %}

Me.bar1.BarStyle = BarStyle.IsMainMenu | BarStyle.Visible

{% endhighlight %}

{% endtabs %}

## Customizing paint styles

The menu items rendering mode can be customized with the `PaintStyle` property. The following modes are supported to customize the rendering mode.

* Default mode
* Text only mode
* Text only in menu mode
* Image and text mode

### Default mode

As the name indicated this is the default value of the paint style property. Images are tet are drawn only in the child-menus like drop down menu or from parent menu. Otherwise all the bar will be drawn only with its respective image.

The below image shows that the drop-down menu is rendered with both image and text where as the main menu items are rendered only with images.

![The menu items applied with text only mode](Appearance-Customization-images/paintStyle_Default.png)

### Text only mode

This mode ignores the images associated with the menu items. This applies only to the tool bar menu items. The below code snippet shows the menu item is being applied with `TextOnly` mode.

{% tabs %}

{% highlight C# %}

barItem1.PaintStyle = PaintStyle.TextOnly;

{% endhighlight %}

{% highlight VB %}

barItem1.PaintStyle = PaintStyle.TextOnly

{% endhighlight %}

{% endtabs %}

![The menu items applied with text only mode](Appearance-Customization-images/paintStyle_TextOnly.png)

### Text only in menu mode

The menu items can be represented as text only specific to the child-menu or drop down menu of the menu control. The below code snippet shows the menu items are applied with `TextOnlyInMenus` mode.

{% tabs %}

{% highlight C# %}

barItem1.PaintStyle = PaintStyle.TextOnlyInMenus;

{% endhighlight %}

{% highlight VB %}

barItem1.PaintStyle = PaintStyle.TextOnlyInMenus

{% endhighlight %}

{% endtabs %}

![The menu item is set with text only in menus mode](Appearance-Customization-images/paintStyle_TextOnlyInMenus.png)

### Image and text only mode

Both the image and text are applied to all the menu items either from main menu or child menu. The below code snippet shows the menu items are applied with `ImageAndText` mode.

{% tabs %}

{% highlight C# %}

barItem1.PaintStyle = PaintStyle.ImageAndText;

{% endhighlight %}

{% highlight VB %}

barItem1.PaintStyle = PaintStyle.ImageAndText

{% endhighlight %}

{% endtabs %}

![The menu items are applied with image and text](Appearance-Customization-images/paintStyle_TextAndImage.png)

## Customizing customize dialog

The **Customize Dialog** style can be customized with required colors by using the `ForeColor`, `BackColor` and `Font` properties. The below code snippet shows the modified Customize dialog.

{% tabs %}

{% highlight C# %}

this.mainFrameBarManager1.CustomizationDialog.ForeColor = Color.Red;
this.mainFrameBarManager1.CustomizationDialog.BackColor = Color.Black;
this.mainFrameBarManager1.CustomizationDialog.Font = new Font("Times New Roman", 8.5f);

{% endhighlight %}

{% highlight VB %}

Me.mainFrameBarManager1.CustomizationDialog.ForeColor = Color.Red
Me.mainFrameBarManager1.CustomizationDialog.BackColor = Color.Black
this.mainFrameBarManager1.CustomizationDialog.Font = New Font("Times New Roman", 8.5f)

{% endhighlight %}

{% endtabs %}

![The Cutomize dialog with modified styles](Appearance-Customization-images/customizedCustomDialog.png)

## Customizing menu items

The menu items of a tool bar in menu control can be customized. This can be done both design-time and on-demand initialization. This can be done by using the `EnableCustomizing` property. By default, this is enabled to promote on-demand customization. The below code shows the menu items customization is being disabled.

{% tabs %}

{% highlight C# %}

this.mainFrameBarManager1.EnableCustomizing = false;

{% endhighlight %}

{% highlight VB %}

Me.mainFrameBarManager1.EnableCustomizing = False

{% endhighlight %}

{% endtabs %}

![Disabled customize option to all the menu bars](Appearance-Customization-images/customizeOptionDisabled_All.png)

The above code could disable the customization to all the bars of the menu control collectively. In order to disable the customize option for a specific bar, the respective bar instance's `AllowCustomizing` property should be set to `false`. The below image shows the customization to _bar1_ is being disabled while _bar2_ is not.

{% tabs %}

{% highlight C# %}

this.bar1.AllowCustomizing = false;

{% endhighlight %}

{% highlight VB %}

Me.bar1.AllowCustomizing = False

{% endhighlight %}

{% endtabs %}

![Disbled customize for spcific menu toolbas](Appearance-Customization-images/customizeOptionDisabled_Partially.png)