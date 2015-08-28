---
layout: post
title: FlowLayout
description: flowlayout
platform: windowsforms
control: Layout Managers Package
documentation: ug
---
# FlowLayout

FlowLayout is a Layout Manager which allows us to arrange the Child components horizontally or vertically in a specific order, based on the settings. FlowLayout is one of the most commonly used Layout Managers. Deriving from the LayoutManager class, the FlowLayout component was created to support simple horizontal and vertical flow and complex constraint-based FlowLayouts.

In its simplest form, this Layout Manager can be used to automatically arrange the Child components in one or more rows, as shown below.

![](Overview_images/Overview_img33.jpeg) 



In it's most flexible and powerful mode, a FlowLayout automatically realigns the controls by adjusting their sizes and location based on the current font size, form size and localization settings, helping you to create efficient form layouts.

FlowLayout uses the preferred size of a Child component in it's layout logic. The minimum size is ignored for the most part, except in the constraint-based scenario discussed below.

The FlowLayout features can be split based on simple and constraint-based scenarios.

In a simple scenario, the Layout Manager does not expect any constraints to be associated with the Child components. In a constraint-basedscenario, you specify constraints for each Child component over the layout logic.

The various features are discussed in the topics given below.

A Sample which demonstrates the FlowLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

See Also

Creating a Simple Layout


