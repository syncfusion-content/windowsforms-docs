---
layout: post
title: Simplified Layout in Windows Forms Ribbon control | Syncfusion®
description: Learn about Simplified Layout support in Syncfusion® Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: windowsforms
control: RibbonControlAdv
documentation: ug
---
# Simplified Layout in Windows Forms Ribbon (RibbonControlAdv)

 The RibbonControlAdv is available in simplified layout which is designed to display the most commonly used Ribbon commands in a single line interface, allowing more screen space for compact viewing of the content. For the best user experience, the other Ribbon commands are located under the overflow menu. It also provides option to switch back and forth between the simplified and the normal layout using the minimize button.

 The [`LayoutMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LayoutMode) enumeration property provides an option to load the Ribbon control in simplified layout. It contains the following options like:

 * **Normal** - The Ribbon items are arranged in the standard layout. This is the default value.
 * **Simplified** - The Ribbon items are arranged in the simplified layout.

 {% tabs %}

 {% highlight c# %}

 private Syncfusion.Windows.Forms.Tools.RibbonControlAdv ribbonControlAdv1;

 this.ribbonControlAdv1 = new RibbonControlAdv();
 this.ribbonControlAdv1.LayoutMode = RibbonLayoutMode.Simplified;

 this.Controls.Add(ribbonControlAdv1);

 {% endhighlight %}

 {% endtabs %}

## Switching between simplified and normal layouts

 The RibbonControlAdv allows to switch between simplified and normal layouts at runtime using the Ribbon minimize button located in the lower right corner of the Ribbon. To enable this option, set the [`EnableSimplifiedLayoutMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_EnableSimplifiedLayoutMode) property to **True**. By default, its value is **False**.

 {% tabs %}

 {% highlight c# %}

 private Syncfusion.Windows.Forms.Tools.RibbonControlAdv ribbonControlAdv1;

 this.ribbonControlAdv1 = new RibbonControlAdv();
 this.ribbonControlAdv1.EnableSimplifiedLayoutMode = true;

 this.Controls.Add(ribbonControlAdv1);
 
 {% endhighlight %}

 {% endtabs %}

 ![Switching between Simplified and Normal layout mode](SimplifiedLayout_images/SwitchingSimplifiedAndNormalLayout.gif)

## Visibility of the Ribbon items between normal and simplified layout

 The Ribbon items can be set common between different layouts or can be made visible only in a particular layout using the [`SetDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SetDisplayMode_System_ComponentModel_Component_Syncfusion_Windows_Forms_Tools_RibbonItemDisplayMode_) function in the RibbonControlAdv. By default, items will be displayed in both normal and simplified layout. The [`SetDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SetDisplayMode_System_ComponentModel_Component_Syncfusion_Windows_Forms_Tools_RibbonItemDisplayMode_) function accepts two parameters, one is the item for which the display mode needs to be set and the second is the [`RibbonItemDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonItemDisplayMode.html) value. The [`SetDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SetDisplayMode_System_ComponentModel_Component_Syncfusion_Windows_Forms_Tools_RibbonItemDisplayMode_) function is of ExtenderProviderProperty which also enables us to set the display mode in the designer for the Ribbon items. The [`RibbonItemDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonItemDisplayMode.html) is a flag enumeration type that contains the following values.

 * **Normal** - The item will be displayed only in the normal layout.
 * **Simplified** - The item will be displayed only in the simplified layout.
 * **OverflowMenu** - The item will be displayed only inside the overflow menu when simplified layout is enabled.

 Also, the [`RibbonItemDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonItemDisplayMode.html) enumeration allows the following value combinations as well.

 * **Normal, Simplified** – The item will be displayed in both normal and simplified layout.
 * **Normal, OverflowMenu** – The item will be displayed in both normal layout and inside overflow menu during simplified layout.
 * **Simplified, OverflowMenu** – The item will be displayed in simplified layout.
 * **Normal, Simplified, OverflowMenu** – The item will be displayed in both normal and simplified layout.

 In the below code snippet, the [`RibbonItemDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonItemDisplayMode.html) for Paste option is set to **"Simplified"** in the [`SetDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_SetDisplayMode_System_ComponentModel_Component_Syncfusion_Windows_Forms_Tools_RibbonItemDisplayMode_) function, so it will only be displayed only in the simplified layout. The [`RibbonItemDisplayMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonItemDisplayMode.html) for Underline option is set to **"Normal, Overflow"**, so it will be displayed in the normal layout and will also be displayed inside the overflow menu in the simplified layout.

 {% tabs %}

 {% highlight c# %}

 // This item will only be displayed in simplified layout.
 ToolStripButton pasteButton = new System.Windows.Forms.ToolStripButton();
 pasteButton.Text = "Paste";
 ribbonControlAdv1.SetDisplayMode(pasteButton, RibbonItemDisplayMode.Simplified);
 
 // This item will only be displayed in normal layout.
 ToolStripButton boldButton = new System.Windows.Forms.ToolStripButton();
 boldButton.Text = "Bold";
 ribbonControlAdv1.SetDisplayMode(boldButton, RibbonItemDisplayMode.Normal);
 
 // This item will be displayed in normal layout and inside overflow menu during simplified layout.
 ToolStripButton underlineButton = new System.Windows.Forms.ToolStripButton();
 underlineButton.Text = "Underline";
 ribbonControlAdv1.SetDisplayMode(underlineButton, RibbonItemDisplayMode.Normal | RibbonItemDisplayMode.OverflowMenu);
 
 // This item will be displayed both in normal and simplified layout by default.
 ToolStripButton italicButton = new System.Windows.Forms.ToolStripButton();
 italicButton.Text = "Italic";

 {% endhighlight %}

 {% endtabs %}

## Setting image for Ribbon items

 For **"Normal"** layout mode, the images from the item's image property and the images set using the [`SetSmallItemImage`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripExImageProvider.html#Syncfusion_Windows_Forms_Tools_ToolStripExImageProvider_SetSmallItemImage_System_Object_System_Int32_) and [`SetLargeItemImage`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripExImageProvider.html#Syncfusion_Windows_Forms_Tools_ToolStripExImageProvider_SetLargeItemImage_System_Object_System_Int32_) functions of [`ToolStripExImageProvider`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripExImageProvider.html) are used inside the Ribbon items based on the display style and image scaling. However, the **"simplified"** layout mode uses 20 * 20 image size for the Ribbon items as standard and it can be set using the [`SetMediumItemImage`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripExImageProvider.html#Syncfusion_Windows_Forms_Tools_ToolStripExImageProvider_SetMediumItemImage_System_Object_System_Int32_) function in [`ToolStripExImageProvider`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripExImageProvider.html). 

 {% tabs %}

 {% highlight c# %}

 ToolStripButton pasteButton = new System.Windows.Forms.ToolStripButton();
 pasteButton.Text = "Paste";
 toolStripEx1.Items.Add(pasteButton);
 
 // Add image for the Paste button for simplified layout to image list.
 ImageListAdv imageListAdv1 = new ImageListAdv(this.components);
 imageListAdv1.Images.Add(Image.FromFile("..//..//Images/Medium Icons/Paste20.png"));
 
 ToolStripExImageProvider toolStripExImageProvider1 = new ToolStripExImageProvider(toolStripEx1);
 // Setting image list to the MediumImageList for the toolStripEx1.
 toolStripExImageProvider1.MediumImageList = imageListAdv1;
 toolStripExImageProvider1.SetMediumItemImage(pasteButton, 0);

 {% endhighlight %}

 {% endtabs %}

 The following screenshot shows the simplified layout within the Ribbon control.

 ![Setting item location using DisplayMode for Simplified layout](SimplifiedLayout_images/RibbonSimplifiedLayout.png)
 
N> View [sample](https://github.com/SyncfusionExamples/How-to-customize-the-simplified-layout-in-WinForms-RibbonControlAdv) in GitHub.

## Customizing the Ribbon during runtime through the QAT window

 The RibbonControlAdv allows to customize the Ribbon and Ribbon items through the QAT window, where user can add the Ribbon items to a new [`ToolStripTabItem`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripTabItem.html) or [`ToolStripEx`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripEx.html). The newly added [`ToolStripTabItem`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripTabItem.html) or [`ToolStripEx`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripEx.html) will only be visible in the respective layout in which items were added originally. In the below example, the [`LayoutMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LayoutMode) is set as **"Simplified"** and a new [`ToolStripTabItem`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.ToolStripTabItem.html) named *Folder* is created and added using the QAT window. This tab will now be visible only in the simplified layout and not in the normal layout which is the default behavior.
 
 ![Customizing Ribbon at runtime at Normal layout](SimplifiedLayout_images/QATItems_NormalLayout.png)
 *Normal layout*

 ![Customizing Ribbon at runtime at Simplified layout](SimplifiedLayout_images/QATItems_SimplifiedLayout.png)
 *Simplified layout*

 In the meantime, the RibbonControlAdv also allows to add items to the Quick Access Toolbar (QAT) with the help of the QAT window or through the context menu shortcut. Items added during normal or simplified layout will always be visible even when switching between layouts. In the below example, the [`LayoutMode`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RibbonControlAdv.html#Syncfusion_Windows_Forms_Tools_RibbonControlAdv_LayoutMode) is set as **"Simplified"** and the *Paste* item is added to the QAT through the context menu. This item will now be constantly visible in both normal and simplified layouts. 

  ![Customizing Ribbon at runtime at Normal layout](SimplifiedLayout_images/QATItemsThroughContext_NormalLayout.png)
 *Normal layout*

 ![Customizing Ribbon at runtime at Simplified layout](SimplifiedLayout_images/QATItemsThroughContext_SimplifiedLayout.png)
 *Simplified layout*
 

## Resizing Ribbon in simplified layout

 While re-sizing the RibbonControlAdv, when the width of the window decreases and touches the last positioned item in the Ribbon, the appropriate item will be moved inside the overflow menu automatically. The same behavior will continue for each item when the window is resized continuously.

 ![Resizing ribbon window in run time](SimplifiedLayout_images/ResizingWindow-SimplifiedLayout.gif)






