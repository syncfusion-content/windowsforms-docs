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

## Customizing images in menu items

The images associated with a menu item can be customized depending upon its state either it is enabled, disabled, highlighted or performed an action upon it.

## Customizing bar styles

The menu bar appearance can be customized with the usage scenario depending upon the menu items it holds. The following are the bar styles supported in menu control.

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

![Bar enabled with customizing options](Appearance-Customization-images/barStyle_AllowQuickCustomizing.png)*Allow Quick Customizing*

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

As the name indicates it is the default rendering mode of `PaintStyle` property. Images are drawn only in the child-menus like drop down menu or from parent menu. Otherwise all the bar will be drawn only with its respective image.

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

The menu items can be represented as text only specific to the child-menus either from drop down menu or parent menu. The below code snippet shows the menu items are applied with `TextOnlyInMenus` mode.

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

### Customizing events

There are two events associated while customizing the menu items. The [`CustomizingItem`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarManager~CustomizingItem.html) property holds the current customizing item.

* [`CustomizationBegin`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarManager~CustomizationBegin_EV.html) - Occurs when the custimation of a menu item of a tool bar begins.
* [`CustomizationDone`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarManager~CustomizationDone_EV.html) - Occurs when the customization of a menu item gets completed.

## Grouping menu items

The menu items of a tool bar can be grouped togethere using the [`SeparatorIndices`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.Bar~SeparatorIndices.html) property. The specific tool bar instance is used to specific the grouping items. The below code snippet shows the menu items are grouped in a tool bar.

{% tabs %}

{% highlight C# %}

this.bar1.SeparatorIndices.Add(3);

{% endhighlight %}

{% highlight VB %}

Me.bar1.SeparatorIndices.Add(3)

{% endhighlight %}

{% endtabs %}

![Menu items are grouped in a bar](Appearance-Customization-images/menuItemsGrouped.png)

N> The index value represents the menu items incremental value for grouping. Its not likely to be the bar item index value in a tool bar.

### Grouping methods

| Method | Description |
|----------|--------------------|
| [`BeginGroupAt`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.Bar~BeginGroupAt.html) | Begins the grouping of menu items from the bar item instance specified. |
| [`RemoveGroupAt`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.Bar~RemoveGroupAt.html) | Removes the grouping of menu items from the bar item instance specified. |
| [`IsGroupBeginning`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.Bar~IsGroupBeginning.html) | Returns a boolean value whether the specified bar item instance is at the begining of the grouping or not. |
| [`ClearSeparators`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.Bar~ClearSeparators.html) | Removes every grouping of menu items in a given tool bar. |

## Backward compatibility

The menu control supports to customize the appearance and scale modes similar to the older version of the menu control. This can be used by enabling the [`UseBackwardCompatiblity`](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarManager~UseBackwardCompatiblity.html) property.

The color schemes can be modified by applying and customizing the theme colors.

{% seealso %}

[Theming](https://help.syncfusion.com/windowsforms/menus/Theming)

{% endseealso %}