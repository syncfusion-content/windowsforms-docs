---
layout: post
title: About Windows Forms Grouping control | Syncfusion
description: Learn here all about introduction of Syncfusion Windows Forms Grouping control, its elements, and more details.
platform: WindowsForms
control: Grouping
documentation: ug
---

# Windows Forms Grouping Overview

Essential Grouping is a 100% Native .NET library that provides you with support for managing and manipulating tabular information without dependencies on any particular UI component. Our grouping Framework can be used in any .NET environment, including C#, VB.NET, and managed C++.

Syncfusion Essential Grouping is a data technology that allows you to easily access, manipulate, and display your data in a variety of configurations. Your data source can be any IList object whose items have public properties. You can easily sort the items on one or several of these public properties. You can display and retrieve items based on the grouping that is produced through these sorts, you can include caption information and / or summary information on these groups; you can impose filters on the items, retrieving only items that specify your filter conditions and you can also add expression properties to display calculated values depending upon other properties in the item. 

![WindowsForms grouping showing calculate the values](overview_images/windowsforms-calculate-values.jpeg)

## Key Features

Some of the key features of Essential Grouping are listed below:

* Grouping supports data presentation techniques like sorting, grouping, adding caption and summary information for the groups.
* Grouping also supports nested tables and hierarchies in the form of related tables. 
* The grouping technology uses balanced binary trees as the core data structure instead of arrays. Binary trees have this advantage whereby parent branches can cache information about their children. This allows position information and summary information to be cached in parent branches facilitating quick inserts of new records honoring any sort of criteria that is applied. Inserting, removing, and moving of records takes \ only Log2(n) operations. With linear lookup structures such as an ArrayList, each of these operations would take O(n) operations.
* Expressions can be any well-formed algebraic combination of property (column) names enclosed with brackets ([]), numerical constants and literals, and the algebraic and logical operators.
* Grouping is a recursive process whereby a data source may be grouped several times. This leads to the recursive situation of groups having sub-groups and so on.
