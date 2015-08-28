---
layout: post
title: CardLayout
description: cardlayout
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# CardLayout

A CardLayout is a Layout Manager that is applied to a Container, and components are added to the layout in a particular form and not between different forms. It treats each component in the Container as a card. Only one card is visible at a time, and the Container acts as a stack of cards. The first component added to a CardLayout object is the visible component when the Container is first displayed.

The Child component / card can either be made to fill or simply centered within the Container. Some common uses of a CardLayout are to create WizardControls and property pages.

> Note: The WizardControl uses the CardLayout component internally in it's implementation.

In it's simplest form, this Layout Manager can be used to automatically arrange the Child components in one or more rows, as given below.

![](Overview_images/Overview_img23.jpeg) 



A Sample which demonstrates the CardLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

See Also

Creating a Simple Layout, 